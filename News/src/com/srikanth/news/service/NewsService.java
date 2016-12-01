package com.srikanth.news.service;

import java.net.MalformedURLException;
import java.net.URISyntaxException;

import com.srikanth.news.model.News;
import com.srikanth.news.model.Source;

public interface NewsService {

	public News getNewsFromSource(String s) throws URISyntaxException,
			MalformedURLException;

	public Source getAllSources();
}
