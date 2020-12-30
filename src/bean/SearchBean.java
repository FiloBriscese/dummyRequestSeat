package bean;

//import java.time.LocalDateTime;	// https://www.html.it/pag/61171/gestione-date-in-java/

public class SearchBean {
	
	private String from;
	private String to;
	private String date;	//format: yyyy-mm-dd	vedi riga 3
	private String time;	//format: hh:mm			vedi riga 3

	
	public SearchBean() {
		//needed for JSP to work
	}
	
	public String getFrom() {
		return from;
	}
	
	public void setFrom(String from) {
		this.from = from;
	}
	
	public String getTo() {
		return to;
	}
	
	public void setTo(String to) {
		this.to = to;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
}
