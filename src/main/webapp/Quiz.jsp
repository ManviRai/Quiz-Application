<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image:url('https://as2.ftcdn.net/v2/jpg/03/43/50/91/1000_F_343509129_gQ6x0SUGpjeI0KRchmxNRVlARaavGjGn.jpg');
             background-size:cover;
    
    
        }
        
        .tom{
            background-color: #fff;
            border: 2px solid black;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        
        h1 {
            text-align: center;
        }
        
        form {
            margin-top: 20px;
        }
        
        p {
            font-weight: bold;
        }
        
        input[type="radio"] {
            margin-right: 10px;
        }
        
        input[type="submit"] {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }

</style>

</head>
<body>
<div class=tom>
  <h1>Quiz</h1>
    <form action="result.jsp" method="post">
        <p>Question 1: Which of the following is not a valid access modifier in Java?
        </p>
        <input type="radio" name="q1" value="public"> Public<br>
        <input type="radio" name="q1" value="private"> Private<br>
        <input type="radio" name="q1" value="protected">Protected<br>
        <input type="radio" name="q1" value="static">Static<br>

        <p>Question 2: 
        Which keyword is used to define a subclass in java?
        </p>
        <input type="radio" name="q2" value="class"> class<br>
        <input type="radio" name="q2" value="extends"> extends<br>
        <input type="radio" name="q2" value="super"> super<br>
        <input type="radio" name="q2" value="this"> this<br>
        
 <p>Question 3: In java what is the default value of an uninitialised integer variable?
        </p>
        <input type="radio" name="q3" value="0"> 0<br>
        <input type="radio" name="q3" value="-1">-1<br>
        <input type="radio" name="q3" value="null">null<br>
        <input type="radio" name="q3" value="1">1<br>
        
         <p>Question 4: What is the java keyword for exiting a loop prematurely?
        </p> 
        <input type="radio" name="q4" value="exit"> Exit<br>
        <input type="radio" name="q4" value="continue">Continue<br>
        <input type="radio" name="q4" value="break"> Break<br>
        <input type="radio" name="q4" value="return">Return<br>
        
         <p>Question 5: What is the java keyword for defining a method in an interface that must be implementing classes?
         
        </p>
        <input type="radio" name="q5" value="override">Override<br>
        <input type="radio" name="q5" value="implements">Implements<br>
        <input type="radio" name="q5" value="interface">Interface<br>
        <input type="radio" name="q5" value="abstract">Abstract<br>
        
        <br>
         <input type="hidden" value=<%= request.getParameter("userName")%> name="un" >
         <input type="submit" value="Submit">
    </form>
    </div>
</body>
</html>




