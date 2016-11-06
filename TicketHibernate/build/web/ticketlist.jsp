<%-- 
    Document   : ticketlist
    Created on : Oct 30, 2016, 11:18:29 PM
    Author     : Filmm
--%>

<%@page import="TicketOrder.Ticket"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <link rel="stylesheet" href="Theme/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Show</title>
    </head>
    <body>
        <body bgcolor ='#F2F3F4'>
        <center>
        <h1>Ticket List</h1>
         <a href="TicketFirstPage.jsp" class="btn btn-default btn-lg active">Go To First Page</a> <br><br>
        <%
            try {
                List<Ticket> ticketList = (List<Ticket>) session.getAttribute("listResult");
                if (ticketList != null) {
        %>
        <table class="table table-striped" border="1">
            <tbody>
                <tr>
                    <td>Ticket Number</td>
                    <td>Date Purchase</td>
                    <td>Original</td>
                    <td>Destination</td>
                    <td>Number of Passenger</td>
                </tr>
                <%                        for (Ticket acc : ticketList) {
                %>
                <tr>
                    <td><% out.println(acc.getTicketId()); %></td>
                    <td><% out.println(acc.getDateBuyTicket()); %></td>
                    <td><% out.println(acc.getOrigin()); %></td>  
                    <td><% out.println(acc.getDestination()); %></td>  
                    <td><% out.println(acc.getNumPsg()); %></td>  
                </tr>
                <% } %>
            </tbody>
        </table>  
        <%
                } else {
                    out.println("return null");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }
        %>
        </center>
    </body>
</html>
