package kr.baby.frontcontroller;

public class ViewResolver {

	public static String makeView(String view) {
		return "baby/"+view+".jsp";
		
	}
}
