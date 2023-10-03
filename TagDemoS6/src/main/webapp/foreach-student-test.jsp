<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.luv2code.jsp.tagdemo.Student" %>

<%
    // just create some sample data ... normally provided by MVC
    List<Student> data = new ArrayList<>();

    data.add(new Student("John", "Doe", false));
    data.add(new Student("Maxwell", "Jhonson", false));
    data.add(new Student("Mary", "Public", true));
    pageContext.setAttribute("myStudents", data);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">

        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gold Customer</th>
        </tr>
        <c:forEach var="tempStudent" items="${myStudents}">
            <tr>
                <td>${tempStudent.firstName}</td>
                <td>${tempStudent.lastName}</td>
                <td>
                    <c:choose>
                        <c:when test="${tempStudent.goldCustomer}">
                            Special Discount
                        </c:when>
                        <c:otherwise>
                            no soup for you!
                        </c:otherwise>
                    </c:choose>
                </td>
                <br/>
            </tr>
        </c:forEach>

    </table>
</body>
</html>
