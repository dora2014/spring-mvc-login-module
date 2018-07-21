<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome!</title>
</head>
<body>
	<c:forEach var="messageItem" items="${myWelcomeMessage}">
		<c:out value="${messageItem}"></c:out>
	</c:forEach>
	
	<br><br>	
	
	<c:set var = "signUpStatus" scope = "session" value = "${signUpStat}"/>
	<c:set var = "loginStatus" scope = "session" value = "${loginStatus}"/>
	<c:choose>
	
         <c:when test = "${signUpStatus == 'OK'}">
         	Successful Signed Up! Dashboard Page <br><br>
           	User ID: ${userID} <br>
			User Name: ${fullName}<br> 
			User Zip Code: ${zip} <br> 			
			<br/>
			<form action="index.jsp" method="get">
				<button type="submit">Logout</button>
			</form>	
         </c:when>
         
         <c:when test = "${signUpStatus == 'Failed'}">  
         	<a href="index.jsp">Back to main page</a>          
         </c:when> 
         
         <c:when test = "${loginStatus == 'OK'}">         
            Successful Login! Dashboard Page <br><br>	
			<br/>
			<form action="index.jsp" method="get">
				<button type="submit">Logout</button>
			</form>	
         </c:when>
         
         <c:when test = "${loginStatus == 'Failed'}">  
         	<a href="index.jsp">Back to main page</a>          
         </c:when> 
        
	</c:choose>
		
</body>
</html>