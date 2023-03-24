package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.PlantDAO;
import dto.Plant;
import java.util.ArrayList;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel='stylesheet' href=\"css/mycss.css\" type='text/css'>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .banner{\n");
      out.write("                overflow: hidden;\n");
      out.write("                position:relative;\n");
      out.write("            }\n");
      out.write("            .b-title{\n");
      out.write("                position: absolute;\n");
      out.write("                top:10%;\n");
      out.write("                left:50%;\n");
      out.write("                transform: translate(-50%,-50%);\n");
      out.write("                font-size:40px;\n");
      out.write("                font-weight:800;\n");
      out.write("            }\n");
      out.write("            .b-but{\n");
      out.write("                position: absolute;\n");
      out.write("                top:20%;\n");
      out.write("                left:50%;\n");
      out.write("                transform: translate(-50%,-50%);\n");
      out.write("                color: #224229;\n");
      out.write("                background: #f6cfb2;\n");
      out.write("                border-radius: 25px!important;\n");
      out.write("                font-size: 16px;\n");
      out.write("                outline: none!important;\n");
      out.write("                padding: 16px 32px!important;\n");
      out.write("                font-weight:bold;\n");
      out.write("                transition:all ease 0.3s;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .b-but:hover{\n");
      out.write("                color:#f6cfb2;\n");
      out.write("                background:#224229;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/header.css\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <header>\n");
      out.write("             <div class=\"nav\">\n");
      out.write("             <div class=\"option\">\n");
      out.write("                <p class=\"log-option\"><a href=\"index.jsp\">Home</a></p>\n");
      out.write("                <p class=\"log-option\"><a href=\"registration.jsp\">Register</a></p>\n");
      out.write("                <p class=\"log-option\"><a href=\"login.jsp\">Login</a></p>\n");
      out.write("             </div>\n");
      out.write("             <div class=\"icon\">\n");
      out.write("                <p class=\"acc-icon\"><a href=\"personalPage.jsp\"><i class='fas fa-user-alt' style='font-size:24px'></i></a></p>\n");
      out.write("                <p class=\"log-option\"><a href=\"mainController?action=viewcart\"><i class='fas fa-cart-plus' style='font-size:24px'></i></a></p>       \n");
      out.write("             </div>\n");
      out.write("             </div>\n");
      out.write("                 \n");
      out.write("            <form action=\"mainController\" method=\"post\">\n");
      out.write("                <input type=\"text\" name=\"keyword\" class=\"seacrh-inp\">\n");
      out.write("                <select name=\"keysearch\">\n");
      out.write("                    <option value=\"byname\">by name</option>\n");
      out.write("                    <option value=\"bycategory\">by category</option>                 \n");
      out.write("                </select>\n");
      out.write("                <input type=\"submit\" name =\"action\" value=\"Search\" class=\"search-form\">                 \n");
      out.write("            </form>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <section>\n");
      out.write("            <div class=\"banner\">\n");
      out.write("                <h1 class=\"b-title\">Fresh Finds For Spring</h1>\n");
      out.write("                <div class=\"b-but\">Shop New Arrivals</div>\n");
      out.write("                <img src=\"images/banner.jpg\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"product-wrap\">\n");
      out.write("                <div class=\"pro-container\">\n");
      out.write("            ");

                String keyword = request.getParameter("keyword");
                String keysearch = request.getParameter("keysearch");
                ArrayList<Plant> list = new ArrayList<>();
                String[] tmp = {"out of stock","available"};
                if(keyword == null && keysearch == null){
                    list = PlantDAO.getPlants("", "");
                }else{
                    list = PlantDAO.getPlants(keyword, keysearch);
                }
                if(list!=null && !list.isEmpty()){
                    for(Plant p :list){
      out.write("\n");
      out.write("                    <div class = \"product\" id=\"pro\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"img-wrap\"><img src='");
      out.print( p.getImgpath() );
      out.write("'></div>\n");
      out.write("                            <div class=\"blank\"></div>\n");
      out.write("                            <div class=\"text-wrap\">\n");
      out.write("                            <p>");
      out.print( p.getName() );
      out.write("</p>\n");
      out.write("                            <p>Price: ");
      out.print( p.getPrice() );
      out.write("$</p>\n");
      out.write("                            <p>Category: ");
      out.print( p.getCatename() );
      out.write("</p>\n");
      out.write("                            <p>Status: ");
      out.print( tmp[p.getStatus()] );
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            ");
 
                                if(p.getStatus() == 1){
      out.write("\n");
      out.write("                                    <button><a href=\"mainController?action=addtocart&pid=");
      out.print( p.getId() );
      out.write("\">Add to cart</a></button>\n");
      out.write("                                ");
}
                                else {
                                
      out.write(" <button>Out of stock</button>\n");
      out.write("                                ");
}
      out.write("    \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                ");
    }
                }
                    else{
                
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>        \n");
      out.write("        <footer>\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link rel='stylesheet' href=\"css/footer.css\" type='text/css'>\n");
      out.write("         <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer>    \n");
      out.write("            <div class=\"footer-wrap\">\n");
      out.write("                <div>\n");
      out.write("                    <p>About Us</p>\n");
      out.write("                    <p>Career</p>\n");
      out.write("                    <p>Trade Program</p>\n");
      out.write("                    <p>Gifting</p>\n");
      out.write("                    <p>Our Guarantee</p>\n");
      out.write("                </div>                \n");
      out.write("                <div>\n");
      out.write("                    <p>Support</p>\n");
      out.write("                    <p>Help + FAQS</p>\n");
      out.write("                    <p>Track Orders</p>\n");
      out.write("                    <p>Shipping</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <p>Plant Question</p>\n");
      out.write("                    <p>Plant Care Tips</p>\n");
      out.write("                    <p>Plant Guide Blogs</p>                    \n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <p>Company</p>\n");
      out.write("                    <p>Bloomscape</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
