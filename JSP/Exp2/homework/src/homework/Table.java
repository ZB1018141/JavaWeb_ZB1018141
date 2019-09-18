package homework;

public class Table {
	private String sno;//学号
	private String name;//姓名
	private String sex;//性别
	private String classes;//班级
	private double score;//得分
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public Table(String sno, String name, String sex, String classes,
			double score) {
		super();
		this.sno = sno;
		this.name = name;
		this.sex = sex;
		this.classes = classes;
		this.score = score;
	}
}
