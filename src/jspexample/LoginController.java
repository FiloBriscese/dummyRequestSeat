package jspexample;

public class LoginController {

    private static LoginController INSTANCE = null;

    private LoginController() {}

    public static LoginController getInstance() {
        if(INSTANCE==null) {
            INSTANCE = new LoginController();
        }

        return INSTANCE;
    }

    public LoginBean login(LoginBean bean) {
        // Esegui accesso al DB per verificare se username e password sono corretti
            // sql query
            // setuser setpw setname ...

        // Se sono corretti allora restituisci nome e cognome. DUMMY: se studID è un numero di 7 cifre
        if (bean.getStudentId().matches("\\d{7}")) {
            bean.setNome("Filo");
            bean.setCognome("Bris");
            bean.setRole("Driver");
        } else {
            bean = null;
        }
        // Altrimenti restituisci null
        return bean;

    }
}
