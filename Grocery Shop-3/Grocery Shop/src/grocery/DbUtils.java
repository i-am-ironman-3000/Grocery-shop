package grocery;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;


public class DbUtils {
	public static Connection connect() throws Exception{
		
		Class.forName("com.mysql.jdbc.Driver");
		final String url="jdbc:mysql://localhost/shop";
		final String user="root";
		final String password="";
		Connection con=DriverManager.getConnection(url, user, password);
		return con;
		
		
	}
	public static int countRecords(String table) throws Exception{
		Connection con=connect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT count(*) FROM "+table);
		rs.next();
		int result=rs.getInt(1);
		con.close();
		return result;
		
	}
	public static List<Product> getList(String catid) throws Exception{
		Connection con=connect();
        PreparedStatement ps=con.prepareStatement("SELECT * FROM product WHERE catid=?");
        ps.setString(1, catid);
        ArrayList<Product> list=new ArrayList<>();
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
        	String proid=rs.getString("proid");
        	String propic=rs.getString("propic");
        	String proname=rs.getString("proname");
        	String price=rs.getString("price");
        	String qt=rs.getString("qt");
        	Product p=new Product(propic,proname,price,qt);
        	list.add(p);
        }
         con.close();
		return list;
	}
	public static List<Product> getList2(String uname) throws Exception{
		Connection con=connect();
        PreparedStatement ps=con.prepareStatement("SELECT * FROM cart_pro_view WHERE uname=?");
        ps.setString(1, uname);
        ArrayList<Product> list=new ArrayList<>();
        ResultSet rs=ps.executeQuery();
        while(rs.next()) {
        	String propic=rs.getString("propic");
        	String proname=rs.getString("proname");
        	String price=rs.getString("price");
        	String qt=rs.getString("qt");
        	Product p=new Product(propic,proname,price,qt);
        	list.add(p);
        }
         con.close();
		return list;
	
}
}
