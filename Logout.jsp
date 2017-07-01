<% session.invalidate();  %>
<html>
    <head>
        <script>
                  function delayer()
                  {
                      window.history.forward();   // for stop open the privious page
                      window.setTimeout("location.href='../Login.jsp'",500);
                      
                  }
    
            </script>
    </head>
    <body onload="delayer()">
    </body>
</html>




















