package TicketOrder;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author STD
 */
public class AddTicketController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("add new Ticket Success");
            HttpSession session = request.getSession(true);

            int TicketId = Integer.parseInt(request.getParameter("ticketId"));
            int TimeId = Integer.parseInt(request.getParameter("timeId"));
            int ActId = Integer.parseInt(request.getParameter("actId"));
            String Origin = request.getParameter("Origin");
            String Destination = request.getParameter("destination");
            String DateBuyTicket = request.getParameter("dateBuyTicket");
            int NumPsg = Integer.parseInt(request.getParameter("NumPsg"));
            int PricePerSeat = Integer.parseInt(request.getParameter("PricePerSeat"));
            int PaymentId = Integer.parseInt(request.getParameter("paymentId"));

           
            Ticket ac = new Ticket(TicketId, TimeId, ActId,Origin,Destination,DateBuyTicket,NumPsg,PricePerSeat,PaymentId);
            //ac.setFirstName(firstname);
            //ac.setLastName(lastname);

            TicketService acs = new TicketService();
            String resultMessage = acs.addTicket(ac);

            RequestDispatcher rd = request.getRequestDispatcher("TicketInsert.jsp?message=" + resultMessage);
            request.setAttribute("searchResult", null);
            rd.forward(request, response);
        }
    }


// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
