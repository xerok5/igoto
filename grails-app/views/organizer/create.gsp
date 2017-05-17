<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/11/2017
  Time: 9:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="save">
    <g:render template="form"></g:render>
    <fieldset class="buttons">
        <g:submitButton name="create"  class="save" value="Create"></g:submitButton>
    </fieldset>
</g:form>
</body>
</html>