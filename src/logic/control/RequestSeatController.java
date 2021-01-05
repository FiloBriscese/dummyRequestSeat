package logic.control;

//import java.time.LocalDateTime;	// https://www.html.it/pag/61171/gestione-date-in-java/

import logic.bean.ResultBean;
import logic.bean.RideBean;
import logic.bean.SearchBean;

public class RequestSeatController {

	public ResultBean searchRides(String source, String destination, LocalDateTime datetime) {
		ResultBean result = null;
		
		// controlla datetime
		
		/* resultbean result = null
		 * if DAOcorse.ricerca(parametri) ha risultati
		 * 		result = new result bean
		 * 		result.add(risultati ricerca DAO)
		 * return result
		 */
		
		// effettua una ricerca nel db con gli attributi in input
		result = new ResultBean();
		RideBean ride0 = new RideBean(0, "Lorenzo", "piazza decemviri", "didattica", "2021-01-04", "08:15");
		result.addRide(ride0);
		result.addRide(new RideBean(1, "Federico", "giulio agricola", "didattica", "2021-01-04", "09:00"));
		
		// restituisci un bean con i risultati (result bean ha come attributo una lista di RideBean)
		// TODO restituisci null se non ci sono risultati
		return result;
		
		// TODO web controller è un ADAPTER ???
	}
	
	public void requestSeat() {
		
		// public boolean requestSeat(RideBean ride)
		// prendi ride.id e riferisciti alla entity ride con quell' ID
		// manda richiesta per prenotare un posto
		// notifica Driver ???
		// ritorna TRUE se richiesta inviata, else FALSE
	}
}
