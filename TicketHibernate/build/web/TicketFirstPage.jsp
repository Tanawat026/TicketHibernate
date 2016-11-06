<%-- 
    Document   : TicketFirstPage
    Created on : Oct 31, 2016, 10:15:10 AM
    Author     : STD
--%>

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
                    Ticket acc = (Ticket) session.getAttribute("searchResult");

                    if (acc != null) {
            %>
            <table class="table table-bordered" border="1"> <% //border="1" %>
                <tbody>
                    <tr>
                        <td class="success">Ticket Number</td>
                        <td class="success"><% out.println(acc.getTicketId()); %></td>
                    </tr>
                    <tr>
                        <td>Date Purchase</td>
                        <td><% out.println(acc.getDateBuyTicket()); %></td>
                    </tr>
                    <tr>
                        <td>Origin</td>
                        <td><% out.println(acc.getOrigin()); %></td>
                    </tr>
                    <tr>
                        <td>Destination</td>
                        <td><% out.println(acc.getDestination()); %></td>
                    </tr>
                    <tr>
                        <td>Number of Passenger</td>
                        <td><% out.println(acc.getNumPsg()); %></td>
                    </tr>
                    <tr class="danger">
                        <td>Price All</td>
                        <td><% out.println(acc.getPricePerSeat()*acc.getNumPsg()); %></td>
                    </tr>
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