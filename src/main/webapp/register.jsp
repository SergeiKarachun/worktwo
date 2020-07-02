<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Bikers Club | Register</title>
<meta charset="iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="page">
  <div id="header">
    <!-- start of header -->
    <ul>
      <jsp:useBean id="userinfo" class="by.sergo.models.User"></jsp:useBean>
      <jsp:setProperty property="*" name="userinfo" />
      <li><a href="index.jsp">home</a></li>
      <li><a href="about.jsp">about</a></li>
      <li><a href="events.jsp">events</a></li>
      <li><a href="gallery.jsp">gallery</a></li>
      <li><a href="blog.jsp">blog</a></li>
      <li>Hello <c:out value="${sessionScope.loggedUser}" default="Anonymous!" /></li>
    </ul>
    <div> <a href="register.jsp" class="join"></a>
      <h3>PROIN AC EUISMOD MI</h3>
      <p>Suspe disse vitae diam</p>
    </div>
  </div>
  <!-- end of header -->
  <div id="body">
    <div class="contents">
      <h1>
        <li>
        Hello <c:out value="${sessionScope.loggedUser}" default="Anonymous, register please!" />


        <%--<%
        UserInfo logged = (UserInfo) session.getAttribute("loggedUser");
        if (logged == null){
          if (session.isNew()){
            out.write("Helo first time!");
          } else {
            out.write("Anonymous! Hello again!");
          }
        } else {
          out.write("Helo " + logged.getUsername() + "!");
        }


        %>--%>
      </li>
      </h1>
      <div class="registration">
        <p> This website template has been designed by Free Website Templates for you, for free. You can replace all this text with your own text. You can remove any link to our website from this website template, you're free to use this website template without linking back to us. If you're having problems editing this website template, then don't hesitate to ask for help on the Forum. </p>
        <form action="#" method="post">
          <table cellspacing="0" cellpadding="0">
            <tbody>
              <tr>
                <td><label>First Name*</label></td>
                <td><input type="text" name="name" ></td>
              </tr>
              <tr>
                <td><label>Last Name*</label></td>
                <td><input type="text" name="surname" /></td>
              </tr>
              <tr>
                <td><label>Password*</label></td>
                <td><input type="password" name="password" /></td>
              </tr>
              <tr>
                <td colspan="2"><input type="submit" value="Submit" class="button" /></td>
              </tr>

            </tbody>
          </table>
        </form>
      </div>
    </div>
  </div>
  <!-- end of body wrapper -->
</div>
<div id="footer">
  <!-- start of footer part -->
  <div>
    <ul>
      <li><a href="#" class="fb">Facebook</a></li>
      <li><a href="#" class="twitr">Twitter</a></li>
    </ul>
    <span>Copyright &copy; <a href="#">Domain Name</a> - All Rights Reserved | Template By <a target="_blank" href="http://www.freewebsitetemplates.com/">FreeWebsiteTemplates.com</a></span> </div>
</div>
<!-- end of footer part -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
