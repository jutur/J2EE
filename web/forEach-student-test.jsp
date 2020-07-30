<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.luc2code.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    List<Student> studentList = new ArrayList<>();
    studentList.add(new Student("John", "Doe", false));
    studentList.add(new Student("Max", "Well", false));
    studentList.add(new Student("William", "Burger", false));

    pageContext.setAttribute("myStudents", studentList);
%>


<html>
<body>

<table border="1">
         <tr>
             <th>firstName</th>
             <th>lastName</th>
             <th>goldCustomer</th>
         </tr>


        <c:forEach var="tempStudent" items="${myStudents}">
            <tr>
                <td>${tempStudent.firstName}</td>
                <td>${tempStudent.lastName}</td>
                <td>${tempStudent.goldCustomer}</td>
            </tr>
        </c:forEach>
</table>

</body>
</html>