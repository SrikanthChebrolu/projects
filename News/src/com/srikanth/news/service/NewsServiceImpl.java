/**
 * 
 */
package com.srikanth.news.service;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.srikanth.news.model.News;
import com.srikanth.news.model.Sources;
import com.srikanth.news.model.URLBuilder;

/**
 * @author srikanthchebrolu Nov 28, 2016
 */
@Service
public class NewsServiceImpl implements NewsService {
	private static final String API_Key = "8a15eb9c99e2431696683094cb23ee8d";

	public News getNewsFromSource(String s) throws URISyntaxException,
			MalformedURLException {
		System.out.println(" source " + s);

		URLBuilder urlb = new URLBuilder("newsapi.org");
		urlb.setConnectionType("https");
		urlb.addSubfolder("v1");
		urlb.addSubfolder("articles");
		urlb.addParameter("source", s);
		urlb.addParameter("sortBy", "top");
		urlb.addParameter("apiKey", API_Key);
		String url = urlb.getURL();
		System.out.println(url);

		// String uri =
		// "https://newsapi.org/v1/articles?source=abc-news-au&sortBy=top&apiKey=8a15eb9c99e2431696683094cb23ee8d";
		RestTemplate restTemplate = new RestTemplate();
		News result = restTemplate.getForObject(url, News.class);
		System.out.println("news result :" + result);
		return result;
	}
	
	public List<Sources> getAllSources() {
		return new ArrayList<Sources>(EnumSet.allOf(Sources.class));
	}
}
