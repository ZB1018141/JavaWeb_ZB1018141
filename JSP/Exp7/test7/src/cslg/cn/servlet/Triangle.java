package cslg.cn.servlet;

public class Triangle {
	private boolean isTriagle;
	
	/* �������*/
	public double Triangle(double a, double b, double c) {
		double area =0.0;
		double p = (a + b + c) / 2;
		area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
		return area;
	}
	
	/* �ж��������Ƿ������������,����������򷵻�true�����򷵻�false*/
	public boolean isTriagle(double a, double b, double c) {
		if ((a + b) > c && (a + c) > b
				&& (b + c) > a) {
			return true;
		}
		return false;
	}
	public void setTriagle(boolean isTriagle) {
		this.isTriagle = isTriagle;
	}

}
