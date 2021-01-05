package logic.boundary.web;

import logic.bean.ResultBean;
import logic.bean.SearchBean;
import logic.control.RequestSeatController;

public class RequestSeatWebController {

    private static RequestSeatWebController instance = null;
    

    private RequestSeatWebController() {}

    public static RequestSeatWebController getInstance() {
        if(instance==null) {
            instance = new RequestSeatWebController();
        }

        return instance;
    }
    
    public ResultBean search(SearchBean searchBean) {
    	
    	// convertire il searchBean nei tipi di dati usati dal controller
    	
    	RequestSeatController logicController = new RequestSeatController();
    	ResultBean results;
    	results = logicController.searchRides(searchBean);
    	
    	return results;
    }
    
    public boolean checkSearchParameters(SearchBean searchBean) {
    	// verifica che la data non sia precedente ad ora
    	
    	
    	return false;
    }
    
}
