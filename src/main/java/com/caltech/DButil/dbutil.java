package com.caltech.DButil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbutil {
	public static Connection dbconn() throws ClassNotFoundException, SQLException {
		Class.forName(dbutilhelper.DRIVER_CLASS);
		Connection con = DriverManager.getConnection(dbutilhelper.DB_URL,dbutilhelper.USERNAME,dbutilhelper.PASSWORD);
		return con;
	}
	
}
