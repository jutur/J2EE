<html>
<body>
<h3>Built in test</h3>

Request User Agent: <%= request.getHeaders("User-Agent")%>

<br/><br/>

Request Language <%= request.getLocale()%>
</body>
</html>