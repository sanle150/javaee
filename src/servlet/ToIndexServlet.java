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

@WebServlet(name = "ToIndexServlet", value = "/ToIndexServlet")
public class ToIndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MybatisUtil mybatisutil= new MybatisUtil();
        List<Banner> banners=mybatisutil.FindAllBanner();
        List<User> users= mybatisutil.FindAllUser();
        System.out.println(users);
        request.setAttribute("bs",banners);
        request.setAttribute("us",users);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

}
