package servlet;

import bean.Org;
import util.DBUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "QueryAOrgServlet", value = "/QueryAOrgServlet")
public class QueryAOrgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orgname = request.getParameter("orgname");
        DBUtils dbutil = new DBUtils();
        Org org = dbutil.queryAOrg(orgname);
        System.out.println(org);
        request.setAttribute("org", org);
        request.getRequestDispatcher("listinfo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
