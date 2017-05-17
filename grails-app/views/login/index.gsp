<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/3/2017
  Time: 11:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <meta name="layout" content="main">
</head>

<body>
<g:form action="postLogin">
    <table>
        <tr>
            <td>Username</td>
            <td><g:textField name="username"></g:textField></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><g:textField name="password"></g:textField></td>
        </tr>
    </table>
        <fieldset class="buttons">
                <g:submitButton name="login" value="Login"></g:submitButton>
        </fieldset>

</g:form>
</body>
</html>