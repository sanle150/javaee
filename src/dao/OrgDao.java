package dao;

import bean.Org;

import java.util.List;

public interface OrgDao {
	List<Org> FindAllOrg();
	boolean InserOrg(Org org);
	boolean DeleteOrg(String id);
}
