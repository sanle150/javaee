package dao;

import bean.Org;

import java.util.List;

public interface OrgDao {
	List<Org> FindAllOrg();
	Org FindAOrg(String orgid);
	boolean InserOrg(Org org);
	boolean DeleteOrg(String id);
	boolean FindAOrgPlusPlus(String orgid);
}
