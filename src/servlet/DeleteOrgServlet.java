package servlet;

import util.DBUtils;
import util.MybatisUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteOrgServlet", value = "/DeleteOrgServlet")
public class DeleteOrgServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orgid = request.getParameter("orgid");
		MybatisUtil mybatisutil= new MybatisUtil();
		boolean ret = mybatisutil.DeleteOrg(orgid);
		if(ret) {
			request.getRequestDispatcher("QueryAllOrgServlet").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
