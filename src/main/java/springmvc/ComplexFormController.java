package springmvc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
@Component
public class ComplexFormController {
	
	@Autowired
	private StudentService studentService;
	@RequestMapping("/complex-form")
	public String cf() {
		return "complex_form";
	}
	
	@RequestMapping(path="/handle",method = RequestMethod.POST)
	public String formHandle(@ModelAttribute("student") Student handle, BindingResult result, Model model,@RequestParam("file") CommonsMultipartFile file,HttpServletRequest s) throws IOException {
		if(result.hasErrors()) {
			return "complex_form";
		}
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getStorageDescription());
		byte[] bytes = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator+ "resources" + File.separator + "image"+File.separator+file.getOriginalFilename();
		System.out.println(path);
		FileOutputStream fos = new FileOutputStream(path);
		fos.write(bytes);
		fos.close();
	    if (file != null && !file.isEmpty()) {
	        try {
	            handle.setFile(file.getBytes());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
		model.addAttribute("filename", file.getOriginalFilename()); 
		System.out.println(handle.getAddress());
		System.out.println(handle);
		studentService.createUser(handle);
		return "success";
	}
	

}
