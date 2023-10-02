<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // just create some sample data normally provided by MVC
    String[] cities = {"Mumbai", "Singapore", "Philadelphia"};

    pageContext.setAttribute("myCities", cities);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <c:forEach var="tempCity" items = "${myCities}">
        ${tempCity} <br>
    </c:forEach>

    <c:forEach var="i" begin="1" end="5">
        <h1><%= "Hello world pom"%></h1>
    </c:forEach>

    <h1><%= "Hello world each and Maven"%></h1>


</body>
</html>
