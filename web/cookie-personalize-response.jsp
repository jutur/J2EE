<html>
 <head>
     <title>
         Confirmation
     </title>
 </head>
<body>
<%
    // read the form data
   String favLang = request.getParameter("favoriteLanguage");

   // create a cookie
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

    // set the life span.. total number of seconds (yuk!)
    theCookie.setMaxAge(60*60*24*365);

    //send the cookie to the browser
    response.addCookie(theCookie);

%>

</body>


Thanks! We Set your favorite language to: ${param.favoriteLanguage}

<br/><br/>

<a href="cookie-homepage.jsp">Return to homepage</a>
</html>