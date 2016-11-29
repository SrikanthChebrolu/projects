/**
 * 
 */
package com.srikanth.news.restcontroller;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.List;

import javax.ws.rs.QueryParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.srikanth.news.model.News;
import com.srikanth.news.model.Sources;
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
	@PostMapping(value = "/news")
	public News getAllNews(@QueryParam("source") String source)
			throws URISyntaxException, MalformedURLException {
		System.out.println(" source " + source);
		News result = newsService.getNewsFromSource(source);
		System.out.println("news result :" + result);
		return result;
	}
	
	@GetMapping(value = "/sources")
	public List<Sources> getAllSources() {
		List<Sources> sources = newsService.getAllSources();
		System.out.println("sources" +  sources);
		return sources;
	}
}
