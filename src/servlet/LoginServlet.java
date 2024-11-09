package servlet;

import bean.Banner;
import bean.User;
import util.DBUtils;
import util.MybatisUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        User u=new User();
        u.setName(name);
        u.setPassword(password);
        MybatisUtil mybatisutil= new MybatisUtil();
        User uu = mybatisutil.login(u);
        List<Banner> banners=mybatisutil.FindAllBanner();
        List<User> users= mybatisutil.FindAllUser();
        HttpSession session = request.getSession();
        session.setAttribute("uu",uu );
        request.setAttribute("bs",banners);
        request.setAttribute("us",users);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
