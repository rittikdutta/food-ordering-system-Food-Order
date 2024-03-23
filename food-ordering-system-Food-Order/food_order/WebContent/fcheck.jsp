<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*" %>
<%
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String mailid = request.getParameter("mailid");
    String country = request.getParameter("country");
    String subject = request.getParameter("subject");
    try {
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        String q;
        ResultSet rs;

        int i = st.executeUpdate("insert into feedback(firstName, last_name, email, country, subject) values ('" + firstname + "','" + lastname + "','" + mailid + "','" + country + "','" + subject + "')");
        if (i > 0) {
            session.setAttribute("firstName", firstname);
            response.sendRedirect("index.jsp");

        } else {
            response.sendRedirect("index.jsp");

        }

    } catch (SQLException se) {
        //Handle errors for JDBC
        se.printStackTrace();
    } catch (Exception e) {
        //Handle errors for Class.forName
        e.printStackTrace();
    }

%>