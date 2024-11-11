package servlet;

import bean.Org;
import util.DBUtils;
import util.MybatisUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@WebServlet(name = "AddOrgServlet", value = "/AddOrgServlet")
public class AddOrgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orgid = UUID.randomUUID().toString().replace("-", "");
        String orgname = request.getParameter("orgname");
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String regtime = sdf.format(d);
        String contact = request.getParameter("contact");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String logo = request.getParameter("logo");
        String intro = request.getParameter("intro");
        int access=0;
        int isvalid = 1;
        Org org = new Org(orgid,orgname,regtime,contact,phone,address,logo,intro,access,isvalid);
        MybatisUtil mybatisutil= new MybatisUtil();
        boolean ret=mybatisutil.InserOrg(org);
        System.out.println(ret);
        if(ret) {
            request.getRequestDispatcher("QueryAllOrgServlet").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
