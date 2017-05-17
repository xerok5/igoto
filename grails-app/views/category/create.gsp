<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/13/2017
  Time: 11:15 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<g:form action="save">
    <g:render template="form"></g:render>
    <fieldset class="buttons">
        <g:submitButton name="submit" value="create"></g:submitButton>
    </fieldset>
</g:form>
</body>
</html>

