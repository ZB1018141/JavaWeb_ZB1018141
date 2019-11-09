package cslg.cn.servlet;

public class Triangle {
	private boolean isTriagle;
	
	/* 计算面积*/
	public double Triangle(double a, double b, double c) {
		double area =0.0;
		double p = (a + b + c) / 2;
		area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
		return area;
	}
	
	/* 判断三条边是否能组成三角形,组成三角形则返回true，否则返回false*/
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
