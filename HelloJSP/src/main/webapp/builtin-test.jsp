<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Built-in Objects</title>
</head>
<body>
<h3>JSP Built-in Objects</h3>

Request user agent: <%= request.getHeader("User-Agent")%>
<br>
Request language <%= request.getLocale() %>

</body>
</html>
