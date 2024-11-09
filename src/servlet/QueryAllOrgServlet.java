package servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Org;
import util.DBUtils;
import util.MybatisUtil;

/**
 * Servlet implementation class QueryAllOrgServlet
 */
@WebServlet("/QueryAllOrgServlet")
public class QueryAllOrgServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryAllOrgServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        MybatisUtil mybatisutil= new MybatisUtil();
        List<Org> orgs =mybatisutil.FindAllOrg();
        System.out.println(orgs);
        request.setAttribute("orgs", orgs);
        request.getRequestDispatcher("listinfo.jsp").forward(request, response);
    }

}
