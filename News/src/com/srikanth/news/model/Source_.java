package com.srikanth.news.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Generated;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Generated("org.jsonschema2pojo")
@JsonPropertyOrder({ "id", "name", "description", "url", "category",
		"language", "country", "urlsToLogos", "sortBysAvailable" })
public class Source_ {

	@JsonProperty("id")
	private String id;
	@JsonProperty("name")
	private String name;
	@JsonProperty("description")
	private String description;
	@JsonProperty("url")
	private String url;
	@JsonProperty("category")
	private String category;
	@JsonProperty("language")
	private String language;
	@JsonProperty("country")
	private String country;
	@JsonProperty("urlsToLogos")
	private UrlsToLogos urlsToLogos;
	@JsonProperty("sortBysAvailable")
	private List<String> sortBysAvailable = new ArrayList<String>();
	@JsonIgnore
	private Map<String, Object> additionalProperties = new HashMap<String, Object>();

	/**
	 * 
	 * @return The id
	 */
	@JsonProperty("id")
	public String getId() {
		return id;
	}

	/**
	 * 
	 * @param id
	 *            The id
	 */
	@JsonProperty("id")
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 
	 * @return The name
	 */
	@JsonProperty("name")
	public String getName() {
		return name;
	}

	/**
	 * 
	 * @param name
	 *            The name
	 */
	@JsonProperty("name")
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 
	 * @return The description
	 */
	@JsonProperty("description")
	public String getDescription() {
		return description;
	}

	/**
	 * 
	 * @param description
	 *            The description
	 */
	@JsonProperty("description")
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 
	 * @return The url
	 */
	@JsonProperty("url")
	public String getUrl() {
		return url;
	}

	/**
	 * 
	 * @param url
	 *            The url
	 */
	@JsonProperty("url")
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 
	 * @return The category
	 */
	@JsonProperty("category")
	public String getCategory() {
		return category;
	}

	/**
	 * 
	 * @param category
	 *            The category
	 */
	@JsonProperty("category")
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * 
	 * @return The language
	 */
	@JsonProperty("language")
	public String getLanguage() {
		return language;
	}

	/**
	 * 
	 * @param language
	 *            The language
	 */
	@JsonProperty("language")
	public void setLanguage(String language) {
		this.language = language;
	}

	/**
	 * 
	 * @return The country
	 */
	@JsonProperty("country")
	public String getCountry() {
		return country;
	}

	/**
	 * 
	 * @param country
	 *            The country
	 */
	@JsonProperty("country")
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * 
	 * @return The urlsToLogos
	 */
	@JsonProperty("urlsToLogos")
	public UrlsToLogos getUrlsToLogos() {
		return urlsToLogos;
	}

	/**
	 * 
	 * @param urlsToLogos
	 *            The urlsToLogos
	 */
	@JsonProperty("urlsToLogos")
	public void setUrlsToLogos(UrlsToLogos urlsToLogos) {
		this.urlsToLogos = urlsToLogos;
	}

	/**
	 * 
	 * @return The sortBysAvailable
	 */
	@JsonProperty("sortBysAvailable")
	public List<String> getSortBysAvailable() {
		return sortBysAvailable;
	}

	/**
	 * 
	 * @param sortBysAvailable
	 *            The sortBysAvailable
	 */
	@JsonProperty("sortBysAvailable")
	public void setSortBysAvailable(List<String> sortBysAvailable) {
		this.sortBysAvailable = sortBysAvailable;
	}

	@JsonAnyGetter
	public Map<String, Object> getAdditionalProperties() {
		return this.additionalProperties;
	}

	@JsonAnySetter
	public void setAdditionalProperty(String name, Object value) {
		this.additionalProperties.put(name, value);
	}

}
