<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      body {
            font-family: Arial, sans-serif;
    background-image:url('https://as2.ftcdn.net/v2/jpg/03/43/50/91/1000_F_343509129_gQ6x0SUGpjeI0KRchmxNRVlARaavGjGn.jpg');
    background-size:cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .result-container {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        
        h1 {
            text-align: center;
        }
        
        p {
            margin-top: 10px;
        }
</style>
</head>
<body>
   <div class="result-container">
        <h1>Quiz Results</h1>
        
        <%-- Retrieve the user's answers from the previous page --%>
        <%
            String q1Answer = request.getParameter("q1");
            String q2Answer = request.getParameter("q2");
            String q3Answer = request.getParameter("q3");
            String q4Answer = request.getParameter("q4");
            String q5Answer = request.getParameter("q5");
            // Add more question answers here
        %>
        
        <%-- Count the number of answered questions --%>
        <%
            int answeredQuestions = 0;
            if (q1Answer != null && !q1Answer.isEmpty()) {
                answeredQuestions++;
            }
            if (q2Answer != null && !q2Answer.isEmpty()) {
                answeredQuestions++;
            }
            if (q3Answer != null && !q3Answer.isEmpty()) {
                answeredQuestions++;
            }
            if (q4Answer != null && !q4Answer.isEmpty()) {
                answeredQuestions++;
            }
            if (q5Answer != null && !q5Answer.isEmpty()) {
                answeredQuestions++;
            }
            // Add more question checks here
        %>
        <%String name=request.getParameter("un"); %>
        <p>Username: <%= name %></p>
        <p>Number of answered questions: <%= answeredQuestions %></p>
        
        <%-- Calculate the number of unanswered questions --%>
        <%
            int totalQuestions = 5; // Update with the total number of questions
            int unansweredQuestions = totalQuestions - answeredQuestions;
        %>
        <p>Number of unanswered questions: <%= unansweredQuestions %></p>
        
        <%-- Calculate and display the number of correct answers --%>
        <%
            int correctAnswers = 0;
            if ("static".equals(q1Answer)) {
                correctAnswers++;
            }
            if ("extends".equals(q2Answer)) {
                correctAnswers++;
            }
            if ("0".equals(q3Answer)) {
                correctAnswers++;
            }
            if ("break".equals(q4Answer)) {
                correctAnswers++;
            }
            if ("implements".equals(q5Answer)) {
                correctAnswers++;
            }
            // Add more correctness checks here
        %>
        <p>Number of correct answers: <%= correctAnswers %></p>
        
        <p>Your total score: <%= correctAnswers %> out of <%= totalQuestions %></p>
        <a href=register.jsp>Home page</a> <br>
    <a href=data.jsp>Data Table</a>
    </div>
    
</body>
</html>



