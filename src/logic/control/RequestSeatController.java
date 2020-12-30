package logic.control;

import bean.ResultBean;
import bean.RideBean;
import bean.SearchBean;

public class RequestSeatController {

	public ResultBean searchRides(SearchBean sb) {
		//System.out.println("controller inzio search rides");
		
		ResultBean result = null;

		// effettua una ricerca nel db con gli attributi del bean in input
		result = new ResultBean();
		RideBean ride0 = new RideBean(0, "Lorenzo", "piazza decemviri", "didattica", "2021-01-04", "08:15");
		//ride0.stampa();
		result.addRide(ride0);
		result.addRide(new RideBean(1, "Federico", "giulio agricola", "didattica", "2021-01-04", "09:00"));
		
		//System.out.println("controller finito search rides");
		
		// restituisci un bean con i risultati (result bean ha come attributo una lista di RideBean)
		return result;
	}
	
	public void requestSeat() {
		// public boolean requestSeat(RideBean ride)
		// prendi ride.id e riferisciti alla entity ride con quell' ID
		// manda richiesta per prenotare un posto
		// notifica Driver ???
		// ritorna TRUE se richiesta inviata, else FALSE
	}
}
