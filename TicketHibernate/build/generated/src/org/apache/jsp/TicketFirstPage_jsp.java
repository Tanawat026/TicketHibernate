package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import TicketOrder.Ticket;

public final class TicketFirstPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Theme/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ticket Management System</title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor ='#F2F3F4' ><center>\n");
      out.write("        <h1>Ticket Management System </h1><br>\n");
      out.write("        <a href=\"TicketInsert.jsp\" class=\"btn btn-default btn-lg active\">Add new Ticket</a>&nbsp;&nbsp;&nbsp;\n");
      out.write("        <a href=\"ListController\" class=\"btn btn-default btn-lg active\">Ticket List</a> <br>\n");
      out.write("            <br/>\n");
      out.write("            <h2>Search Your Ticket</h2><br>\n");
      out.write("            <form class=\"form-inline\" name=\"searchForm\" action=\"SearchController\">\n");
      out.write("                Enter Ticket Number :<input type=\"text\" class=\"form-control\"  name=\"searchValue\" value=\"\" >\n");
      out.write("                <input type=\"submit\" class=\"btn btn-primary\" value=\"Find Ticket Details\" name=\"searchButton\" />\n");
      out.write("            </form><br>\n");
      out.write("               <form class=\"form-inline\" name=\"searchForm\" action=\"SearchTextController\">\n");
      out.write("                Enter Province :<input type=\"text\" class=\"form-control\"  name=\"searchValue\" value=\"\" >\n");
      out.write("                <input type=\"submit\" class=\"btn btn-primary\"  value=\"Find Provice\" name=\"searchButton\" />\n");
      out.write("            </form>\n");
      out.write("            <br>\n");
      out.write("            ");

                try {
                    // Create a session object if it is already not  created.
                    Ticket acc = (Ticket) session.getAttribute("searchResult");

                    if (acc != null) {
            
      out.write("\n");
      out.write("            <table class=\"table table-bordered\" border=\"1\"> ");
 //border="1" 
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td class=\"success\">Ticket Number</td>\n");
      out.write("                        <td class=\"success\">");
 out.println(acc.getTicketId()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Date Purchase</td>\n");
      out.write("                        <td>");
 out.println(acc.getDateBuyTicket()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Origin</td>\n");
      out.write("                        <td>");
 out.println(acc.getOrigin()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Destination</td>\n");
      out.write("                        <td>");
 out.println(acc.getDestination()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Number of Passenger</td>\n");
      out.write("                        <td>");
 out.println(acc.getNumPsg()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr class=\"danger\">\n");
      out.write("                        <td>Price All</td>\n");
      out.write("                        <td>");
 out.println(acc.getPricePerSeat()*acc.getNumPsg()); 
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            ");

                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            
      out.write("\n");
      out.write("    </center>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
