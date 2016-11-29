package com.srikanth.news.service;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.List;

import com.srikanth.news.model.News;
import com.srikanth.news.model.Sources;

public interface NewsService {

	public News getNewsFromSource(String s) throws URISyntaxException,
			MalformedURLException;

	public List<Sources> getAllSources();
}
