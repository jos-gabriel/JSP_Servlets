<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--Step 1; Create HTML from -->
<form action = "todo-demo.jsp">
    Add new itemdds: <input type="text" name="theItem">
    <input type="submit" value="Submit">
</form>

<%--
<br>
Item entered: <%= request.getParameter("theItem") %>
--%>

<!--Step 2: Add new item to "To Do" list -->
<%
    // get the TO DO items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");
    // if the TO DO items does not exist, then create a new one
    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute("myToDoList", items);
    }
    // see if there is from data to add
    String theItem = request.getParameter("theItem");
    if (theItem != null) {
        items.add(theItem);
    }
%>

<!-- Step 3: Display all "TO DO" item from session -->
<hr>
<b> To List Items: </b> <br>
<ol>
    <%
        for (String temp : items) {
            out.println("<li>"+ temp + "</li>");
        }
    %>
</ol>
<!-- -->
</body>
</html>
