<html>
  <body>


  <!--Cookies are text files stored on client side computer and they are kept for various information tracking purposes -->
  <!--sessions are stored on client as well as server -->
  <h3>Training portal</h3>

   <!--Read the favorite programming language from Cookie -->

  <%
     String favLang = "Java";
     Cookie[] theCookies = request.getCookies();

     if (theCookies != null) {
         for (Cookie tempCookie: theCookies) {
             if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
                 favLang = tempCookie.getValue();
                 break;
             }
         }
     }
  %>


  <!--Show Personlized page -->
   <h4>New Books for <%=favLang%></h4>

  <ul>
      <li>Blah Blah Blah</li>
      <li>Blah Blah Blah</li>
  </ul>

  <h4>Latest Report for <%=favLang%></h4>

  <ul>
      <li>Blah Blah Blah</li>
      <li>Blah Blah Blah</li>
  </ul>

  </body>

<br/><br/>
<hr>

<a href="cookie-personalize-form.html">Personlize this page</a>
</html>