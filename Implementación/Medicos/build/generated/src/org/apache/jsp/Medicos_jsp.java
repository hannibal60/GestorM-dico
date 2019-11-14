package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import metodos.CRUD;

public final class Medicos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\" integrity=\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"manifest\" href=\"/manifest.json\">\n");
      out.write("        <link href=\"estiloNuevo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"estilos1Nuevo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"estilo2.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <title>Administrador de Médico</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <h2 class=\"encab\" >Administrador de Médico</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"menu-bar text-right\">\n");
      out.write("                <nav class= \"container\" role=\"menu\">\n");
      out.write("                    <ul class=\"menu\">\n");
      out.write("\n");
      out.write("                        <li><a href=\"Inicio\">Inicio</a></li>                  \n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <!-- Medico-->\n");
      out.write("        ");

            if (request.getParameter("agregar")!=null) {
                    
                
              CRUD metodo = new CRUD();
                    String nombre=request.getParameter("Nombre");
                    String APaterno=request.getParameter("APaterno");
                    String AMaterno = request.getParameter("AMaterno");
                    String fecha="2019-11-13";
                    String sexo=request.getParameter("sexo");
                    String curp=request.getParameter("CURP");
                    String rfc=request.getParameter("RFC");
                    String cedula=request.getParameter("cedula");
                    metodo.insertar(nombre,APaterno,AMaterno,fecha,sexo,curp,rfc,cedula);
            }
            
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <form name=\"agregar\" action = \"Medicos.jsp\" method=\"post\">\n");
      out.write("            <div id = \"ventana\">\n");
      out.write("                <h1> <label id=\"titulo\"> Información del Médico</label></h1>\n");
      out.write("                <hr class=\"linea\">\n");
      out.write("                </br></br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">  \n");
      out.write("\n");
      out.write("                        <div class=\"col-md-6\" >\n");
      out.write("                            <form action = \"\" method=\"post\">\n");
      out.write("                                <label id= \"buscar\"> Cédula Profesional: </label>\n");
      out.write("                                <input type=\"text\" class=\"buscar\"/>\n");
      out.write("\n");
      out.write("                                </br></br>\n");
      out.write("\n");
      out.write("                                <label id=\"buscar\"> </label>  \n");
      out.write("                                <input type=\"submit\" class=\"buscarbtn\" value=\"Buscar Médico\">\n");
      out.write("                                </br></br></br>\n");
      out.write("\n");
      out.write("                                <label id=\"modificar\"> </label>  \n");
      out.write("                                <input type=\"submit\" class=\"buscarbtn\" value=\"Modificar Médico\">\n");
      out.write("                                </br></br></br>\n");
      out.write("\n");
      out.write("                                <label id=\"eliminar\"> </label>  \n");
      out.write("                                <input type=\"submit\" class=\"buscarbtn\" value=\"Eliminar Médico\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-6\" >\n");
      out.write("                            <label id= \"Nom\"> Nombre(s): </label>\n");
      out.write("                            <input type=\"text\" class=\"Nombre\" name=\"Nombre\"/>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"APaterno\"> Apellido Paterno: </label>\n");
      out.write("                            <input type=\"text\" class=\"APaterno\" name=\"APaterno\"/>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"AMaterno\"> Apellido Materno: </label>\n");
      out.write("                            <input  type=\"text\" class=\"AMaterno\" name=\"AMaterno\"/>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"FechaN\"> Fecha de Nacimiento: </label>\n");
      out.write("                            <!--   <input type=\"text\" class=\"FechaN\"/> -->\n");
      out.write("                            <input type=\"date\" min=\"2019-11-11\" max=\"\" required placeholder=\"FechaNac\" maxlength=\"\">\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <label id= \"sex\"> Sexo: </label>\n");
      out.write("                            <select name =\"sexo\">\n");
      out.write("                                <option value=\"M\">M</option>\n");
      out.write("                                <option value=\"F\">F</option>\n");
      out.write("                                <option value=\"I\">I</option>\n");
      out.write("                            </select>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"curp\"> CURP: </label>\n");
      out.write("                            <input type=\"text\" class=\"curp\" name=\"CURP\"/>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"rfc\"> RFC: </label>\n");
      out.write("                            <input type=\"text\" class=\"rfc\" name=\"RFC\"/>\n");
      out.write("                            </br></br>\n");
      out.write("\n");
      out.write("                            <label id= \"cedula\"> Cédula Profesional: </label>\n");
      out.write("                            <input type=\"text\" class=\"cedula\" name=\"cedula\"/>\n");
      out.write("                            </br></br></br>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>   \n");
      out.write("\n");
      out.write("               \n");
      out.write("                    \n");
      out.write("                <label id=\"agregar\">    </label>  \n");
      out.write("                <input type=\"submit\" class=\"Agregar\" value=\"Agregar Médico\" >\n");
      out.write("                </form>\n");
      out.write("            </div>   \n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Footer -->\n");
      out.write("            <footer class=\"page-footer font-small unique-color-dark\" style=\"background:#14737C  ;\">\n");
      out.write("\n");
      out.write("                <div style=\"background-color: #3C95A2; ;\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <!-- Grid row-->\n");
      out.write("                        <div class=\"row py-4 d-flex align-items-center\">\n");
      out.write("\n");
      out.write("                            <!-- Grid column -->\n");
      out.write("                            <div class=\"col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0\">\n");
      out.write("                                <h6 class=\"mb-0\" style=\"color: #fff ;\">¡Conéctate con nosotros en nuestras redes sociales!</h6>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Grid column -->\n");
      out.write("\n");
      out.write("                            <!-- Grid column -->\n");
      out.write("                            <div class=\"col-md-6 col-lg-7 text-center text-md-right\">\n");
      out.write("\n");
      out.write("                                <!-- Facebook -->\n");
      out.write("                                <a class=\"fb-ic\">\n");
      out.write("                                    <i class=\"fab fa-facebook-f white-text mr-4\" style=\"color:#fff;\"> </i>\n");
      out.write("                                </a>\n");
      out.write("                                <!-- Twitter -->\n");
      out.write("                                <a class=\"tw-ic\">\n");
      out.write("                                    <i class=\"fab fa-twitter white-text mr-4\"style=\"color:#fff;\"> </i>\n");
      out.write("                                </a>\n");
      out.write("                                <!-- Google +-->\n");
      out.write("                                <a class=\"gplus-ic\">\n");
      out.write("                                    <i class=\"fab fa-google-plus-g white-text mr-4\"style=\"color:#fff;\"> </i>\n");
      out.write("                                </a>\n");
      out.write("                                <!--Linkedin -->\n");
      out.write("                                <a class=\"li-ic\">\n");
      out.write("                                    <i class=\"fab fa-linkedin-in white-text mr-4\"style=\"color:#fff;\"> </i>\n");
      out.write("                                </a>\n");
      out.write("                                <!--Instagram-->\n");
      out.write("                                <a class=\"ins-ic\">\n");
      out.write("                                    <i class=\"fab fa-instagram white-text\" style=\"color:#fff;\"> </i>\n");
      out.write("                                </a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Grid column -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Grid row-->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Footer Links -->\n");
      out.write("                <div class=\"container text-center text-md-left mt-5\">\n");
      out.write("\n");
      out.write("                    <!-- Grid row -->\n");
      out.write("                    <div class=\"row mt-3\">\n");
      out.write("\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("                        <div class=\"col-md-3 col-lg-4 col-xl-3 mx-auto mb-4\">\n");
      out.write("\n");
      out.write("                            <!-- Content -->\n");
      out.write("                            <h6 class=\"text-uppercase font-weight-bold\" style=\"color:#E5EDE7;\">Equipo profesional y experimentado</h6>\n");
      out.write("                            <hr class=\"deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 60px; \">\n");
      out.write("                            <p style=\"color:#E5EDE7 ;\">Nuestra mejor garantía es el trabajo de nuestros profesionales. Nuestros pacientes así lo confirman. </p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("                        <div class=\"col-md-2 col-lg-2 col-xl-2 mx-auto mb-4\">\n");
      out.write("\n");
      out.write("                            <!-- Links -->\n");
      out.write("                            <h6 class=\"text-uppercase font-weight-bold\" style=\"color:#E5EDE7 ;\">SERVICIOS</h6>\n");
      out.write("                            <hr class=\"deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 60px;\">\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Consultas 24hrs.</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Consultas a domicilio</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Precios accesibles</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\"></a>\n");
      out.write("                            </p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("                        <div class=\"col-md-3 col-lg-2 col-xl-2 mx-auto mb-4\">\n");
      out.write("\n");
      out.write("                            <!-- Links -->\n");
      out.write("                            <h6 class=\"text-uppercase font-weight-bold\" style=\"color:#E5EDE7 ;\">Información</h6>\n");
      out.write("                            <hr class=\"deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 60px;\">\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Ubicacion</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Consultas</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Medicamentos</a>\n");
      out.write("                            </p>\n");
      out.write("                            <p>\n");
      out.write("                                <a href=\"#!\" style=\"color: #07153B;\">Ayuda</a>\n");
      out.write("                            </p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("                        <div class=\"col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4\">\n");
      out.write("\n");
      out.write("                            <!-- Links -->\n");
      out.write("                            <h6 class=\"text-uppercase font-weight-bold\" style=\"color:#E5EDE7 ;\">Contactanos</h6>\n");
      out.write("                            <hr class=\"deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 60px;\">\n");
      out.write("                            <p>\n");
      out.write("                                <i class=\"fas fa-home mr-3\"></i> Tianguistenco, Mex</p>\n");
      out.write("                            <p>\n");
      out.write("                                <i class=\"fas fa-envelope mr-3\"></i> getormedico@gmail.com</p>\n");
      out.write("                            <p>\n");
      out.write("                                <i class=\"fas fa-phone mr-3\"></i> + 01 234 567 88</p>\n");
      out.write("                            <p>\n");
      out.write("                                <i class=\"fas fa-print mr-3\"></i> + 01 234 567 89</p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Grid column -->\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Grid row -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- Footer Links -->\n");
      out.write("\n");
      out.write("                <!-- Copyright -->\n");
      out.write("                <div class=\"footer-copyright text-center py-3\">� 2019 Gestor Medico:\n");
      out.write("                    <a href=\"https://mdbootstrap.com/education/bootstrap/\"> gestormedico.com</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Copyright -->\n");
      out.write("\n");
      out.write("            </footer>\n");
      out.write("\n");
      out.write("            <!-- Optional JavaScript -->\n");
      out.write("            <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("            <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"JS/general.js\" type=\"text/javascript\"></script>\n");
      out.write("            <script src=\"JS/jquery-3.1.1.min.js\"></script>  \n");
      out.write("            <script src=\"https://kit.fontawesome.com/7edcc08e48.js\" crossorigin=\"anonymous\"></script>  \n");
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
