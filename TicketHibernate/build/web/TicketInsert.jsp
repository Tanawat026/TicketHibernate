<%-- 
    Document   : TicketInsert
    Created on : Oct 31, 2016, 9:45:07 AM
    Author     : STD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="Theme/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <title>Add new Ticket</title>
    </head>
    <body bgcolor ='#F2F3F4'>
    <center>
        <h1>Add New Ticket</h1>
        <a href="TicketFirstPage.jsp" class="btn btn-default btn-lg active">Go To First Page</a> <br><br>
        <%
            String message = request.getParameter("message");
            if (message != null) {
                out.println(message);
            }
        %>
        <form class="form-inline" name="formAddActor" action="AddTicketController">
            Ticket ID: &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <input class="form-control"  type="text" name="ticketId"value="" /> <br><br>
            
            Time ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="form-control"  type="text" name="timeId"value="" /> <br><br>
            
            Account ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <input class="form-control"  type="text" name="actId"value="" /> <br><br>
            
            Origin : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <input class="form-control"  type="text" name="Origin"value="" /> <br><br>
            
            Destination : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="form-control"  type="text" name="destination"value="" /> <br><br>
            
            Date of Purchase : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="form-control"  type="text" name="dateBuyTicket"value="" /> <br><br>
            
            Number of Passenger: <input class="form-control"  type="text" name="NumPsg"value="" /><br><br>
            
            Price per seat : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="form-control" type="text" name="PricePerSeat"value="" /><br><br>
            
            Payment ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="form-control"  type="text" name="paymentId"value="" /><br><br>
         
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input class="form-control"  type="submit" value="Add Ticket"name="addTicket" /><br><br>
        </form>      <br><br>

        <form class="form-inline" name="formSearchTicket"action="SearchController" >
            Search by ID: <input class="form-control"  type="text"name="searchValue" value="" />     
            <input class="btn btn-primary" type="submit" value="Search"name="SearchActor" /> <br><br><br><br>
        </form>         
    </center>
</body>
</html>
