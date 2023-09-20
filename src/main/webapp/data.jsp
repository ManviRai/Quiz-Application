
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Data Page</title>
    <style>
      .txt{
       margin-left:47%;
      }
     body{
    background-image:url('https://as2.ftcdn.net/v2/jpg/03/43/50/91/1000_F_343509129_gQ6x0SUGpjeI0KRchmxNRVlARaavGjGn.jpg');
    background-size:cover;
    
    }
      table{
      border:"2";
       
        background-color:#FFE5EC;
         width:40%; 
      border-collapse:collapse;
      }
      td,th{
      border:solid 2pt black;
      }
    </style>
</head>
<body>
<br><br>
    <h1 align="center">Data Table</h1><br>
    <table align="center">
        <tr>
            <th>Username</th>
            <th>Email</th>
        </tr>
        <%
            String jdbcUrl = "jdbc:mysql://localhost:3306/project";
            String jdbcUsername = "localhost";
            String jdbcPassword = "password";
            
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
                
                String sql = "SELECT username, email FROM regi";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                
                while (rs.next()) {
                    String username = rs.getString("username");
                    String email = rs.getString("email");
        %>
                    <tr>
                        <td><%= username %></td>
                        <td><%= email %></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            } finally {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            }
        %>
    </table>
    <br>
    <div class="txt">
    <a href=result.jsp><b>Result page</b></a> <br><br>
    <a href=register.jsp><b>Home page</b></a>
    </div>
</body>
</html>
    