package com.srikanth.news.model;

public class SearchRequest {
	
	private static String source;

	public static String getSource() {
		return source;
	}

	public void setSource(String source) {
		SearchRequest.source = source;
	}

	@Override
	public String toString() {
		return "SearchRequest [source=" + source + "]";
	}

}
