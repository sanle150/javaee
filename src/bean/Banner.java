package bean;

public class Banner {
    String bannerid;
    String name;
    String owner;
    String uploadtime;
    int isvalue;
    String url;

    public Banner() {

    }

    public Banner(String bannerid, String name, String owner, String uploadtime, int isvalue, String url) {
        super();
        this.bannerid = bannerid;
        this.name = name;
        this.owner = owner;
        this.uploadtime = uploadtime;
        this.isvalue = isvalue;
        this.url = url;
    }

    public String getBannerid() {
        return bannerid;
    }

    public void setBannerid(String bannerid) {
        this.bannerid = bannerid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(String uploadtime) {
        this.uploadtime = uploadtime;
    }

    public int getIsvalue() {
        return isvalue;
    }

    public void setIsvalue(int isvalue) {
        this.isvalue = isvalue;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Banner [bannerid=" + bannerid + ", name=" + name + ", owner=" + owner + ", uploadtime=" + uploadtime
                + ", isvalue=" + isvalue + ", url=" + url + "]";
    }


}

