/**
 * 
 */
package com.srikanth.news.model;

/**
 * @author srikanthchebrolu
 *   Nov 28, 2016
 */
public enum Sources {
	
	ABC_NEWS_AU ("abc-news-au"),
	ARS_TECHNICA ("ars-technica"),
	ASSOCIATED_PRESS ("associated-press"),
	BBC_NEWS ("bbc-news"),
	BBC_SPORT ("bbc_sport"),
	BILD ("ars-technica"),
	BLOOMBERG ("bloomberg"),
	BUSINESS_INSIDER ("business-insider"),
	BUSINESS_INSIDER_UK ("business-insider-uk"),
	BUZZFEED ("buzzfeed"),
	CNBC ("cnbc"),
	CNN ("cnn"),
	DAILY_MAIL ("daily-mail"),
	DER_TAGESSPIEGEL ("der-tagesspiegel"),
	DIE_ZEIT ("die-zeit"),
	ENGADGET ("engadget"),
	ENTERTAINMENT_WEEKLY ("entertainment-weekly"),
	ESPN ("espn"),
	ESPN_CRIC_INFO ("espn-cric-info"),
	FOCUS ("focus"),
	FOOTBALL_ITALIA ("football-italia"),
	FORTUNE ("fortune"),
	FOUR_FOUR_TWO ("four-four-two"),
	FOX_SPORTS ("fox-sports"),
	GOOGLE_NEWS ("google-news"),
	GRUENDERSZENE ("gruenderszene"),
	HACKER_NEWS ("hacker-news"),
	HANDELSBLATT ("handelsblatt"),
	IGN ("ign"),
	INDEPENDENT ("independent"),
	MASHABLE ("mashable"),
	METRO ("metro"),
	MIRROR ("mirror"),
	MTV_NEWS ("mtv-news"),
	MTV_NEWS_UK ("mtv-news-uk"),
	NATIONAL_GEOGRAPHIC ("national-geographic"),
	NEW_SCIENTIST ("new-scientist"),
	NEWSWEEK ("newsweek"),
	NEW_YORK_MAGAZINE ("new-york-magazine"),
	NFL_NEWS ("nfl-news"),
	POLYGON ("polygon"),
	RECODE ("recode"),
	REDDIT_R_ALL ("reddit-r-all"),
	REUTERS ("reuters"),
	SKY_NEWS ("sky-news"),
	SKY_SPORTS_NEWS ("sky-sports-news"),
	SPIEGEL_ONLINE ("spiegel-online"),
	T3N ("t3n"),
	TALKSPORT ("talksport"),
	TECHCRUNCH ("techcrunch"),
	THE_ECONOMIST ("the-economist"),
	THE_GUARDIAN_AU ("the-guardian-au"),
	THE_GUARDIAN_UK ("the-guardian-uk"),
	THE_HINDU ("the-hindu"),
	THE_HUFFINGTON_POST ("the-huffington-post"),
	THE_LAD_BIBLE ("the-lad-bible"),
	THE_NEW_YORK_TIMES ("the-new-york-times"),
	THE_NEXT_WEB ("the-next-web"),
	THE_SPORT_BIBLE ("the-sport-bible"),
	THE_TELEGRAPH ("the-telegraph"),
	THE_TIMES_OF_INDIA ("the-times-of-india"),
	THE_VERGE ("the-verge"),
	THE_WALL_STREET_JOURNAL ("the-wall-street-journal"),
	THE_WASHINGTON_POST ("the-washington-post"),
	TIME ("time"),
	USA_TODAY ("usa-today"),
	WIRED_DE ("wired-de"),
	WIRTSCHAFTS_WOCHE ("wirtschafts-woche");

	private String value;

	private Sources(String value){	
		this.setValue(value);
	}

	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * @param value the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}
	
}
