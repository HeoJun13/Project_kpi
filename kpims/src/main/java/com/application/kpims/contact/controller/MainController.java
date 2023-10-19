package com.application.kpims.contact.controller;

import java.io.File;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/admin/project")
public class MainController {
	
	
	private final String SHOP_IMAGE_REPO_PATH = "C:\\Project_Files\\";
	//private final String SHOP_IMAGE_REPO_PATH = "/Users/junhoheo/upload/";
	//private final String SHOP_IMAGE_REPO_PATH = "/var/lib/tomcat9/file_repo/";
	
	@GetMapping("/main")
	public ModelAndView main() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/project/main");
		
		return mv;
	}
	
	@GetMapping("/thumbnails")
	public void thumbnails(@RequestParam("shopFileName") String shopFileName , HttpServletResponse response) throws Exception {
	
		OutputStream out = response.getOutputStream();
		String filePath = SHOP_IMAGE_REPO_PATH + shopFileName;
		
		File image = new File(filePath);
		if (image.exists()) { 
			Thumbnails.of(image).size(800,800).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();


 }
}
