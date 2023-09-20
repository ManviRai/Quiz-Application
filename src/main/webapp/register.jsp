<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
    .taskbar {
        display: flex;
        padding: 10px 20px;
        justify-content: center;
    }

    .reg {
        text-align: center;
        border: 1px solid #FFFFFF;
        padding: 20px;
        background-color:#FFE5EC;
        margin-top: 30px;
        width: 30%;
        margin-left: 35%;
    }
   body{
    background-image:url('https://as2.ftcdn.net/v2/jpg/03/43/50/91/1000_F_343509129_gQ6x0SUGpjeI0KRchmxNRVlARaavGjGn.jpg');
    background-size:cover;
    
    }

    .reg-form {
        display: inline-block;
        text-align: left;
    }
   
</style>
</head>
<body>
<div class="taskbar">
    <h1 align="center">QUIZ APPLICATION</h1>
</div>
<div class="reg">
    <h2>Register</h2>
    <form class="reg-form" action="register.jsp" method="post">
        Username: <input type="text" name="username" required><br><br>
        Email: <input type="text" name="email" required><br><br>
        <input type="submit" value="Register">
    </form>
</div>
<%
if (request.getMethod().equalsIgnoreCase("post")) {
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/project";
        String dbUsername = "username";
        String dbPassword = "email";

        String id = request.getParameter("username");
        String email = request.getParameter("email");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(connectionURL, "localhost", "password");

        String SQLQuery = "INSERT INTO regi (username, email) VALUES (?, ?)";
        PreparedStatement ps = connection.prepareStatement(SQLQuery);

        ps.setString(1, id);
        ps.setString(2, email);
        int rowsInserted = ps.executeUpdate();

        ps.close();
        connection.close();
        

        if (rowsInserted > 0) {
            HttpSession mySession = request.getSession();
            mySession.setAttribute("username", id);
            response.sendRedirect("start.jsp"); // Redirect to start.jsp
        } else {
            out.println("Error: Unable to store data in the database.");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
}
%>
</body>
</html>
