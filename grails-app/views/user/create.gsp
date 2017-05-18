<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/2/2017
  Time: 8:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create User</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<g:form action="save">


    <g:render template="form"></g:render>
    <fieldset class="buttons">

<g:each in="${test}" var="{testsub}" status="i">
    <g:if test="info">

    </g:if>
</g:each>
        <g:submitButton name="create"  class="save" value="Create"></g:submitButton>
    </fieldset>
</g:form>
</body>
</html>