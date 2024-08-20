<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; 
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>View My Charts</title>
</head>
<body>
    <h2>My Charts</h2>
    <ul>
        <li><a href="dailyChart.jsp">View Daily Chart</a></li>
        <li><a href="weeklyChart.jsp">View Weekly Chart</a></li>
        <li><a href="monthlyChart.jsp">View Monthly Chart</a></li>
    </ul>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>