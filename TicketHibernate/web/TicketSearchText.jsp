<%-- 
    Document   : TicketSearchText
    Created on : Nov 6, 2016, 1:18:59 PM
    Author     : Filmm
--%>

<%@page import="java.util.List"%>
<%@page import="TicketOrder.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Theme/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Management System</title>
    </head>
    <body bgcolor ='#F2F3F4' ><center>
        <h1>Ticket Management System </h1><br>
        <a href="TicketInsert.jsp" class="btn btn-default btn-lg active">Add new Ticket</a>&nbsp;&nbsp;&nbsp;
        <a href="ListController" class="btn btn-default btn-lg active">Ticket List</a> <br>
            <br/>
            <h2>Search Your Ticket</h2><br>
            <form class="form-inline" name="searchForm" action="SearchController">
                Enter Ticket Number :<input type="text" class="form-control"  name="searchValue" value="" >
                <input type="submit" class="btn btn-primary" value="Find Ticket Details" name="searchButton" />
            </form><br>
               <form class="form-inline" name="searchForm" action="SearchTextController">
                Enter Province :<input type="text" class="form-control"  name="searchValue" value="" >
                <input type="submit" class="btn btn-primary"  value="Find Provice" name="searchButton" />
            </form>
            <br>
            <%
                try {
                    // Create a session object if it is already not  created.
                     List<Ticket> ticketList = (List<Ticket>) session.getAttribute("searchResult");
                    if (ticketList != null) {
            %>
            <table class="table table-striped" border="1"> <% //border="1" %>
                <tbody>
                    <tr>
                        <td class="success">Ticket Number</td>
                        <td>Account Number</td>
                        <td>Time ID</td>
                       <td>Payment Number</td>
                        <td>Date Purchase </td>
                        <td>Origin</td>
                        <td>Destination</td>
                        <td>Number Of Passenger</td>
                        <td>Price Per Seat</td>
                        <td class="danger">Total</td>
                    <% for (Ticket acc : ticketList){%> 
                    <tr>
                       <td class="success"><% out.println(acc.getTicketId()); %></td>
                        <td><% out.println(acc.getActId()); %></td>
                       <td><% out.println(acc.getTimeId()); %></td>
                       <td><% out.println(acc.getPaymentId()); %></td>
                       <td><% out.println(acc.getDateBuyTicket()); %></td>
                       <td><% out.println(acc.getOrigin()); %></td>
                       <td><% out.println(acc.getDestination()); %></td>
                        <td><% out.println(acc.getNumPsg()); %></td>
                      <td><% out.println(acc.getPricePerSeat()); %></td>
                       <td class="danger"><% out.println(acc.getPricePerSeat()*acc.getNumPsg()); %></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
            <%
                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            %>
    </center>
</body>
</html>
