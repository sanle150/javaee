package util;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import bean.Banner;
import bean.Org;
import bean.User;
import dao.BannerDao;
import dao.OrgDao;
import dao.UserDao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MybatisUtil implements UserDao, BannerDao,OrgDao{
	
	String resources = "mybatis-config.xml";
	Reader reader = null;

	@Override
	public User login(User user) {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			User u = session.selectOne("login", user);
			session.close();
			return u;
			// TODO Auto-generated catch block
		}catch(IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Banner> FindAllBanner() {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			List<Banner> banners = session.selectList("FindAllBanner");
			session.close();
			return banners;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<User> FindAllUser() {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			List<User> users = session.selectList("FindAllUser");
			session.close();
			return users;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}


	@Override
	public List<Org> FindAllOrg() {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			List<Org> orgs = session.selectList("FindAllOrg");
			session.close();
			return orgs;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean InserOrg(Org org) {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			try {
				int rowsAffected = session.insert("InserOrg", org);
				session.commit();
				return rowsAffected > 0;
			} finally {
				session.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean DeleteOrg(String orgid) {
		try {
			reader = Resources.getResourceAsReader(resources);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sqlSessionFactory.openSession();
			try {
				int rowsAffected = session.delete("DeleteOrg",orgid);
				session.commit();
				return rowsAffected > 0;
			} finally {
				session.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
	}
}
