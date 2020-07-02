<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Bikers Club | Gallery</title>
<meta charset="iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="page">
  <div id="header">
    <!-- start of header -->
    <ul>
      <li><a href="index.jsp">home</a></li>
      <li><a href="about.jsp">about</a></li>
      <li><a href="events.jsp">events</a></li>
      <li class="current"><a href="gallery.jsp">gallery</a></li>
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
      <!-- start of content -->
      <h1>GALLERY</h1>
      <!-- start of gallery -->

      <div class="gallery">
        <ul>
          <c:forEach var="newsRecord" items="${requestScope.news}">
          <li> <a href="#"><img src="${newsRecord.imgUrl}"  width="280" height="190" alt=""></a>
            <h4>${newsRecord.header}</h4>
            <p>${newsRecord.text}</p>
          </li>
          </c:forEach>
        </ul>

      </div>

      <!-- end of section -->
    </div>
    <!-- end of contents -->
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
