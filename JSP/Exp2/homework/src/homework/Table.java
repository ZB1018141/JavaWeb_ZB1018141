package homework;

public class Table {
	private String sno;//ѧ��
	private String name;//����
	private String sex;//�Ա�
	private String classes;//�༶
	private double score;//�÷�
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
