package util;


import bean.Banner;
import bean.Org;
import bean.User;

import java.sql.*;
import java.util.ArrayList;

public class DBUtils {

	String url="jdbc:mysql://localhost:3306/healthy2024?serverTimezone=GMT%2B8";
	String user="root";
	String password="";
	Connection conn =null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	/*
	 * 装载驱动
	 * 建立连接
	 * 
	 * 构造SQL
	 * 执行操作
	 * 处理结果
	 * 关闭资源
	 * */
	public DBUtils(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("装载驱动异常！");
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库连接异常！");
			e.printStackTrace();
		}
	}
	
	public boolean inserOrg(Org o) {
		ensureConnection();
		String sql = "INSERT INTO org VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, o.getOrgid());
			psmt.setString(2, o.getOrgname());
			psmt.setString(3, o.getRegtime());
			psmt.setString(4, o.getContact());
			psmt.setString(5, o.getPhone());
			psmt.setString(6, o.getAddress());
			psmt.setString(7,o.getLogo());
			psmt.setString(8,o.getIntro());
			psmt.setInt(9, o.getIsvalid());
			int rowsAffected = psmt.executeUpdate();
			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return false;
	}
	
	public Org queryAOrg(String orgname) {
		ensureConnection();
		String sql = "SELECT * FROM org WHERE orgname=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, orgname);
			rs = psmt.executeQuery();
			if(rs.next()) {	
				Org o = new Org();
				o.setOrgid(rs.getString("orgid"));
				o.setOrgname(rs.getString("orgname"));
				o.setRegtime(rs.getString("regtime"));
				o.setContact(rs.getString("contact"));
				o.setPhone(rs.getString("phone"));
				o.setAddress(rs.getString("address"));
				o.setLogo(rs.getString("logo"));
				o.setIntro(rs.getString("intro"));
				o.setIsvalid(rs.getInt("isvalid"));
				
			
				return o;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}
	
	public ArrayList<Org> queryAllOrg(){
		ensureConnection();
		String sql = "SELECT * FROM org ORDER BY regtime DESC";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			ArrayList<Org> orgs = new ArrayList<Org>();
			while(rs.next()) {	
				Org o = new Org();
				o.setOrgid(rs.getString("orgid"));
				o.setOrgname(rs.getString("orgname"));
				o.setRegtime(rs.getString("regtime"));
				o.setContact(rs.getString("contact"));
				o.setPhone(rs.getString("phone"));
				o.setAddress(rs.getString("address"));
				o.setLogo(rs.getString("logo"));
				o.setIntro(rs.getString("intro"));
				o.setIsvalid(rs.getInt("isvalid"));
				orgs.add(o);
			}
			return orgs;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}
	


	public boolean deleteOrg(String orgid) {
		ensureConnection();
		// TODO Auto-generated method stub
		String sql = "DELETE FROM org WHERE orgid=?";
		//ArrayList<User> users = new ArrayList<User>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, orgid);
			boolean ret = !psmt.execute();
			return ret;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return false;
	}

	public ArrayList<Banner> queryAllBanner() {
		ensureConnection();
		String sql = "SELECT * FROM banner WHERE isvalue=1 ORDER BY uploadtime DESC";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			ArrayList<Banner> banners=new ArrayList<Banner>();
			while(rs.next()) {
				Banner b=new Banner();
				b.setBannerid(rs.getString("bannerid"));
				b.setName(rs.getString("name"));
				b.setOwner(rs.getString("owner"));
				b.setUploadtime(rs.getString("uploadtime"));
				b.setIsvalue(rs.getInt("isvalue"));
				b.setUrl(rs.getString("url"));
				banners.add(b);
			}
			return banners;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return null;
	}


	public ArrayList<User> queryAllUsers() {
		ensureConnection();
		String sql = "SELECT * FROM user";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			ArrayList<User> users=new ArrayList<>();
			while (rs.next()) {
				User u=new User();
				u.setUserid(rs.getString("userid"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setBirth(rs.getString("birth"));
				u.setGender(rs.getString("gender"));
				u.setImage(rs.getString("image"));
				u.setRegtime(rs.getString("regtime"));
				users.add(u);
			}
			return users;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(); // 假设你有一个close方法来关闭数据库连接和资源
		}
		return null;
	}

	public User login(String name, String password) {
		ensureConnection();
		String sql = "SELECT * FROM user WHERE name=? AND password=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, password);
			rs = psmt.executeQuery();
			if(rs.next()) {
				User u=new User();
				u.setUserid(rs.getString("userid"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setBirth(rs.getString("birth"));
				u.setGender(rs.getString("gender"));
				u.setImage(rs.getString("image"));
				u.setRegtime(rs.getString("regtime"));
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(); // 假设你有一个close方法来关闭数据库连接和资源
		}
		return null;
	}

	public void ensureConnection() {
		try {
			if (conn == null || conn.isClosed()) {
				try {
					conn = DriverManager.getConnection(url, user, password);
				} catch (SQLException e) {
					System.out.println("重新连接数据库异常！");
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (psmt != null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
