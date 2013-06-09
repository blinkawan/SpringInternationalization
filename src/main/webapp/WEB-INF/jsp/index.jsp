<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            form{
                background: wheat;
                width: 300px;
                padding: 10px 10px 10px 30px;
                font-family: cursive;
                color: brown;
                border-radius: 8px;
                box-shadow: 0px 10px 10px black;
            }
            
            div{
                margin-bottom: 10px;
            }
            
            input{
                display: block;
            }
            
            input[type=text]{
                width:250px;
                border:1px solid black;
                padding: 5px;
                font-family: monospace;
            }
            
            input[type=submit]{
                background: burlywood;
                border:1px solid black;
                padding: 5px;
                font-family: cursive;
            }
            
            #lang a{
                text-decoration: none;
                color: tomato;
                border-right: 1px solid black;
                padding-right: 5px;
            }
        </style>
    </head>
    <body>
        <div id="lang">
        <a href="<c:url value="?lang=en" />">English</a>
        <a href="<c:url value="?lang=ind" />">Indonesia</a>
        <a href="<c:url value="?lang=de" />">Germany</a>
        </div>
        
        <form>
            <div>
                <label><spring:message code="label.firstname" /></label>
                <input type="text"/>
            </div>
            <div>
               <label> <spring:message code="label.lastname" /></label>
                <input type="text"/>
            </div>
            <div>
                <label><spring:message code="label.email" /></label>
                <input type="text"/>
            </div>
            <div>
                <label><spring:message code="label.telephone" /></label>
                <input type="text"/>
            </div>
            <div>
                <input type="submit" value="<spring:message code="label.addcontact" />"/>
            </div>
        </form>
    </body>
</html>
