package logic.boundary.web;

import bean.ResultBean;
import bean.SearchBean;
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
    
    public ResultBean cerca(SearchBean bean) {
    	
    	System.out.println("reqseatWebController | searching for: " + bean.getFrom() + " " + bean.getTo() + " " + bean.getDate() + " " + bean.getTime());
    	RequestSeatController logicController = new RequestSeatController();
    	ResultBean results;
    	results = logicController.searchRides(bean);
    	
    	return results;
    }
}
