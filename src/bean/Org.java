package bean;

public class Org {
    String orgid;
    String orgname;
    String regtime;
    String contact;
    String phone;
    String address;
    String logo;
    String intro;
    int access;
    int isvalid;

    public Org(){}

    public Org(String orgid, String orgname, String regtime, String contact, String phone, String address, String logo, String intro, int access, int isvalid) {
        this.orgid = orgid;
        this.orgname = orgname;
        this.regtime = regtime;
        this.contact = contact;
        this.phone = phone;
        this.address = address;
        this.logo = logo;
        this.intro = intro;
        this.access = access;
        this.isvalid = isvalid;
    }

    public String getOrgid() {
        return orgid;
    }

    public void setOrgid(String orgid) {
        this.orgid = orgid;
    }

    public String getOrgname() {
        return orgname;
    }

    public void setOrgname(String orgname) {
        this.orgname = orgname;
    }

    public String getRegtime() {
        return regtime;
    }

    public void setRegtime(String regtime) {
        this.regtime = regtime;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getAccess() {
        return access;
    }

    public void setAccess(int access) {
        this.access = access;
    }

    public int getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(int isvalid) {
        this.isvalid = isvalid;
    }
}
