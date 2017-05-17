<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/2/2017
  Time: 9:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Update User</title>
    <meta name="layout" content="main">
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home"><g:message code="default.home.label"/></a></li>
        <li><g:link action="create">New User</g:link></li>
    </ul>
    <g:form action="update">
        <g:hiddenField name="id" value="${userinfo.id}"></g:hiddenField>
        <g:render template="form"></g:render>
        <fieldset class="buttons">
            <g:submitButton name="update" value="Update"></g:submitButton>
        </fieldset>
    </g:form>
</div>
</body>
</html>