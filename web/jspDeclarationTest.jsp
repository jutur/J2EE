<html>
<body>

<!--Declaration tag is used to declare variables, methods and classes -->
   <%! String makeItLowerCase(String word) {
       return word.toLowerCase();
   }%>

make it lower case <%= "result"+ makeItLowerCase("TESTTOO")%>
</body>
</html>