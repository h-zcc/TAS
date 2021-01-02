package com.se.login.web;

//import packages
import com.se.courses.course.service.CourseService;
import com.se.global.service.ModelService;
import com.se.global.service.SessionService;
import com.se.notice.domain.Notice;
import com.se.notice.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import com.se.global.domain.User;
import com.se.global.domain.Course;
import com.se.login.service.LoginService;

/**
 * @author Yusen
 * @version 1.0
 * @since 1.0
 */
@Controller
public class LoginController {
    private LoginService loginService;
    private CourseService courseService;
    private NoticeService noticeService;

    @Autowired
    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @Autowired
    public void setCourseService(CourseService courseService) { this.courseService = courseService; }

    @Autowired
    public void setNoticeService(NoticeService noticeService) { this.noticeService = noticeService; }

    /**
     * 显示登录界面
     *
     * @return 登录界面逻辑视图名
     */
    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    /**
     * 验证用户
     *
     * @param id 用户学号或工号
     * @param password 用户密码
     * @param session 当前会话
     * @param model Model对象
     * @return 验证失败则返回登录界面逻辑视图名，验证成功则重定向到/index
     */
    @RequestMapping("/login/check")
    public String check(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession session, Model model) {
        int type = loginService.identifyUser(id, password);

        if (type == 0) {
            ModelService.setError(model, "学号或密码错误!");
            return "login";
        }

        User user = loginService.getUser(id, type);
        SessionService.setUser(session, user);
        ModelService.setUser(model, user);
        return "redirect:/index";
    }

    /**
     * 显示用户首页
     *
     * @param session 当前会话
     * @param model Model对象
     * @return 对应的用户首页逻辑视图名
     */
    @RequestMapping("/index")
    public String indexPage(HttpSession session, Model model) {
        User user = SessionService.getUser(session);

        if (user != null && user.getType() == User.ADMIN_TYPE) {
            return "redirect:/admin/student_manage";
        }

        ArrayList<Course> courses = courseService.getCourses(session);
        SessionService.setCourses(session, courses);
        ModelService.setCourses(model, courses);

        if (user == null) {
            return "user/index/passenger_index";
        }

        ArrayList<Notice> notices = noticeService.getNotices(session);
        SessionService.setNotices(session, notices);
        ModelService.setNoticeTotalNum(model, session);

        if (user.getType() == User.STUDENT_TYPE) {
            return "user/index/student_index";
        }
        else {
            return "user/index/teacher_index";
        }
    }

    /**
     * 用户登出
     *
     * @param session 当前会话
     * @return 重定向到/login
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        SessionService.removeUser(session);
        return "redirect:/login";
    }
}
