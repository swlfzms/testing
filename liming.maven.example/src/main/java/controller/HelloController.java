package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "HelloController")
public class HelloController {

	@RequestMapping(value = "/say")
	public void say() {
		System.out.print("this is HelloController And say Action \r\n");

	}

	@RequestMapping(value = "/yes")
	public void yes() {
	}

	@RequestMapping(value = "/outPrinting", method = RequestMethod.POST)
	public void outPrinting(HttpServletRequest request, HttpServletResponse response,
			PrintWriter printWriter) {		
		
		String hi = request.getParameter("hi");
		System.out.println("----------------");
		System.err.println(hi);
		System.out.println("----------------");
		
		printWriter.println("controller test");
		printWriter.flush();
	}
}
