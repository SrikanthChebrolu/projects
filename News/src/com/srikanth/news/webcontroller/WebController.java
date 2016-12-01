/**
 * 
 */
package com.srikanth.news.webcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author srikanthchebrolu
 *
 */
@Controller
public class WebController {
	@GetMapping(value = "/")
	public String welcome() {
		return "home";
	}
	
	@GetMapping(value = "/news")
	public String news() {
		return "news";
	}
	
	@GetMapping(value = "/weather")
	public String weather() {
		return "weather";
	}
}
