<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*" %>
<%
    String fullname = request.getParameter("name");
    String phoneNo = request.getParameter("phoneNo");
    String emailid = request.getParameter("emailid");
    String city = request.getParameter("cityname");
    String addressDetails = request.getParameter("addressDetails");
    String pin = request.getParameter("pin");
    try {
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        String q;
        ResultSet rs;

        int i = st.executeUpdate("insert into address(fullName, phoneNo, email, city, address, pincode) values ('" + fullname + "','" + phoneNo + "','" + emailid + "','" + city + "','" + addressDetails + "','" + pin + "')");
        if (i > 0) {
            session.setAttribute("fullName", fullname);
            session.setAttribute("phoneno", phoneNo);
            session.setAttribute("emailId", emailid);
            session.setAttribute("cityName", city);
            session.setAttribute("addressdetails", addressDetails);
            session.setAttribute("pinCode", pin);
            response.sendRedirect("bill.jsp");//bill.jsp

        } else {
            response.sendRedirect("thank.jsp");

        }

    } catch (SQLException se) {
        //Handle errors for JDBC
        se.printStackTrace();
    } catch (Exception e) {
        //Handle errors for Class.forName
        e.printStackTrace();
    }

%>