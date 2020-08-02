<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<body>

<c:set var="data" value="NewYork, St. Louis, Virginia, Kansas"></c:set>


<h3>Split Demo</h3>


<c:set var="citiesArray" value="${fn:split(data, ',')}"></c:set>

<c:forEach var="tempCity" items="${citiesArray}">

    ${tempCity}<br>

</c:forEach>


<c:set var="join" value="${fn:join(citiesArray, '*' )}"></c:set>

Result of joining: ${join}


</body>
</html>