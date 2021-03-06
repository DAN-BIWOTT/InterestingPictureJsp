<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%= request.getAttribute("doctype") %>

<html>
    <head>
        <title>Interesting Picture</title>
    </head>
    <body>
        <% if (request.getAttribute("pictureURL") != null) { %>
        <h1>Here is an interesting picture of a <%= request.getParameter("searchWord")%></h1><br>
        <% if (request.getParameter("searchWord").equals("Andy")) { %>
            <% for (int i = 0; i < 10; i++) { %>
                <img src="https://live.staticflickr.com/203/506192734_5f24c80d2b_b.jpg"><br><br>
            <% } %>
        <% } else { %>
                <img src="<%= request.getAttribute("pictureURL")%>"><br><br>
             <% } %>
        <% } else { %>
        <h1>An interesting picture of a <%= request.getParameter("searchWord")%> could not be found</h1><br>
        <% } %>
         <form action="getAnInterestingPicture" method="GET">
            <label for="letter">Type another word.</label>
            <input type="text" name="searchWord" id="letter" value="" /><br>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>

