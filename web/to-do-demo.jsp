<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<body>
<!--create html form -->
<form action="to-do-demo.jsp">
    Add new Item: <input type="text" name="theItem">
    <input type="submit" name="Submit">
</form>

<br/>

<!--Add new Items to the List -->

<%-- session.getAttribute -> Returns the object bound with the specified name in this session, or null if no object is bound under the name. --%>
Item entered:   <%


    List<String> itemsList = (List<String>) session.getAttribute("mySessionId");

    if (itemsList == null) {
        itemsList = new ArrayList<>();
        session.setAttribute("mySessionId", itemsList);
    }

    String item = request.getParameter("theItem");
    if (item != null && !item.isEmpty()) {
        itemsList.add(item);
        response.sendRedirect("to-do-demo.jsp");
    }
%>

<!--Display all the "To Do" item from the session  -->

<hr>
<b>To List Items</b>

<ol>
    <%

        for (String temp : itemsList) {
            out.println("<li>" + temp + "</li>");
        }

    %>
</ol>
</body>
</html>