<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.luc2code.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    List<Student> studentList = new ArrayList<>();
    studentList.add(new Student("John", "Doe", false));
    studentList.add(new Student("Max", "Well", false));
    studentList.add(new Student("William", "Burger", true));

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

                <td>

                  <c:choose>
                      <c:when test="${tempStudent.goldCustomer}">
                          Special Discount
                      </c:when>

                      <c:otherwise>
                          No Discount
                      </c:otherwise>
                  </c:choose>


                </td>



            </tr>
        </c:forEach>
</table>

</body>
</html>