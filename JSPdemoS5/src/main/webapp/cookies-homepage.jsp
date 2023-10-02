<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePagefffs</title>
</head>
<body>
    <h3>Training Portal</h3>

<%--read the favorite programming language cookie--%>
<%
    // the default ... if there are no cookies
    String favLang = "Java";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    // find our favorite language cookie
    if (theCookies != null) {
        for (Cookie tempCookie : theCookies) {
            if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
                favLang = tempCookie.getValue();
                break;
            }

        }
    }
%>
<%-- now shoe a personalized page ... use the "favLan" variable --%>

<%--show new books for this lang--%>
<h4>New Books for Java <%=favLang%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
<h4>Latest News reports for Java <%=favLang%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Hot Jobs for Java <%=favLang%></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
<hr>
<a href="cookies-personalize-form.html">Personalize esta pagina</a>
</body>
</html>
