package logic.bean;

import java.util.ArrayList;
import java.util.List;


public class ResultBean {

	private List<RideBean> rides;

	
	public ResultBean(){
		this.rides = new ArrayList<>();
	}
	
	public List<RideBean> getRides() {
		return rides;
	}
	
	public void setRides(List<RideBean> list) {
		this.rides = list;
	}
	
	public void addRide(RideBean rb) {
		this.rides.add(rb);
	}
}
