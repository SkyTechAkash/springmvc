package springmvc;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice
public class ErrorController {
	
	@ExceptionHandler({NullPointerException.class})
	public String nullError() {
		return "error";
	}

}
