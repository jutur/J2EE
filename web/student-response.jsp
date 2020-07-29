<html>


<head><title>Student confirmation page</title></head>


<body>
The student is confirmed: ${param.firstName} ${param.lastName}
<br/><br/>

The student country is: ${param.Country}

<br/><br/>

The Students Favorite language is: ${param.FavoriteLanguage}


<br/><br/>


The languages spoken by student are
<%
    String[] langs = request.getParameterValues("Language");

    if (langs != null) {    for(String lang: langs) {
        out.println("<li>" + lang + "</li>");
    }}


%>

</body>

</html>
