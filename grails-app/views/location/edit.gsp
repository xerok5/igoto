<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/11/2017
  Time: 9:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="update">
    <g:hiddenField name="id" value="${locationinfo.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <fieldset class="buttons">
        <g:submitButton name="update" value="Update"></g:submitButton>
    </fieldset>
</g:form>
</body>
</html>