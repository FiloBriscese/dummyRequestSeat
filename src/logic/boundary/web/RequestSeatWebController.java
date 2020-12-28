package logic.boundary.web;


public class RequestSeatWebController {

    private static RequestSeatWebController instance = null;

    private RequestSeatWebController() {}

    public static RequestSeatWebController getInstance() {
        if(instance==null) {
            instance = new RequestSeatWebController();
        }

        return instance;
    }
    
    public void stampa(SearchBean bean) {
    	bean.setTo("pippo");
    	System.out.println(bean.getFrom() + bean.getTo() + bean.getDate() + bean.getTime());
    }
}
