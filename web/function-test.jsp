<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>

<body>

<c:set var="data" value="luv2code"></c:set>

Length of the String <b>${data}</b>: ${fn:length(data)}

<br><br>

String to uppercase <b>${data}</b>: ${fn:toUpperCase(data)}



</body>

</html>