package servlet;

import bean.Org;
import util.DBUtils;
import util.MybatisUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "QueryAOrgByidServlet", value = "/QueryAOrgByidServlet")
public class QueryAOrgByidServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orgid = request.getParameter("orgid");
        MybatisUtil mybatisutil= new MybatisUtil();
        boolean plus=mybatisutil.FindAOrgPlusPlus(orgid);
        if(plus)
        {
            System.out.println(orgid+":查询一次");
        }
        else
        {
            System.out.println(orgid+":查询失败");
        }
        Org org = mybatisutil.FindAOrg(orgid);
        request.setAttribute("org",org);
        request.getRequestDispatcher("ainfo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
