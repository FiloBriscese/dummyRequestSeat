package bean;

import java.util.ArrayList;


public class ResultBean {

	private ArrayList<RideBean> rides;

	
	public ResultBean(){
		this.rides = new ArrayList<RideBean>();
	}
	
	public ArrayList<RideBean> getRides() {
		return rides;
	}
	
	public void setRides(ArrayList<RideBean> list) {
		this.rides = list;
	}
	
	public void addRide(RideBean rb) {
		this.rides.add(rb);
	}
}
