package dao;

import bean.User;

import java.util.List;

public interface UserDao {
	User login(User user);
	List<User> FindAllUser();
}
