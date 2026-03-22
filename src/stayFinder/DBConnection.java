package stayFinder;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static final String URL = "jdbc:mysql://srv653.hstgr.io:3306/u528649779_stayFinder";
    private static final String USER = "u528649779_cs2450";
    private static final String PASSWORD = "Cs2450stayfinder@";

    public static Connection getConnection() {
        Connection con = null;

        try {
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to database!");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}

