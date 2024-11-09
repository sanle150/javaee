package bean;

public class User {
	String userid ; 
	String name ; 
	String password ; 
	String birth ; 
	String gender ; 
	String image ; 
	String regtime ; 
	
	public User() {
		
	}

	public User(String userid, String name, String password, String birth, String gender, String image,
			String regtime) {
		super();
		this.userid = userid;
		this.name = name;
		this.password = password;
		this.birth = birth;
		this.gender = gender;
		this.image = image;
		this.regtime = regtime;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getRegtime() {
		return regtime;
	}

	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", name=" + name + ", password=" + password + ", birth=" + birth + ", gender="
				+ gender + ", image=" + image + ", regtime=" + regtime + "]";
	}
	

}
