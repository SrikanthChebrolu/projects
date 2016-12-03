/**
 * 
 */
package com.srikanth.news.restcontroller;

import java.net.MalformedURLException;
import java.net.URISyntaxException;

import javax.ws.rs.QueryParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.srikanth.news.model.News;
import com.srikanth.news.model.Source;
import com.srikanth.news.service.NewsService;

/**
 * @author srikanthchebrolu
 *
 */
@RestController
public class NewsRestController {

	@Autowired
	NewsService newsService;

	/**
	 * This Controller gets the data from the backend and return the list of
	 * news
	 */
	@PostMapping(value = "/newsList")
	public String getAllNews(@QueryParam("source") String source)
			throws URISyntaxException, MalformedURLException {
		System.out.println(" source " + source);
		News result = newsService.getNewsFromSource(source);
		System.out.println("news result :" + result);
		Gson gson = new Gson();
		// 2. Java object to JSON, and assign to a String
		String jsonInString = gson.toJson(result);
		System.out.println(jsonInString);
		return jsonInString;
	}
	
	@GetMapping(value = "/sources")
	public String getAllSources() {
		Source sources = newsService.getAllSources();
		System.out.println("sources" +  sources);
		Gson gson = new Gson();
		// 2. Java object to JSON, and assign to a String
		String jsonInString = gson.toJson(sources);
		System.out.println(jsonInString);
		return jsonInString;
	}
}
