

<html>

    <head>
        <script src="JS/jquery.js"></script>
  <script>
      
      
    $(function(){
      refresh_answers();
      window.setInterval(refresh_answers, 500); // Refresh Every 500ms (0.5 seconds)
    });
    function refresh_answers(){
      $.get("answers_test.jsp", function(x){
      //  x = JSON.parse(x);
        x=JSON && JSON.parse(x) || $.parseJSON(x);


        var s = ""; // HTML string
        for(var i=0;i<x.length;i++){
          s+="<div><span class='name'>"+x[i].name+"</span><span class='answer'>"+x[i].answer+"</span></div>";
        }
        $("#answers").html(s);
      });
    }
    
  </script>
  <style>
    #answers div {
      display: inline-block;
      width: auto;
      height: auto;
      border: 1px solid black;
      margin: 16px;
    }
    #answers .name {
      display: block;
      width: auto;
      height: auto;
      text-align: center;
      font-size: 25px;
      line-height: 56px;
      font-weight: 700;
      border-bottom: 1px solid black;
      background-color: #1abc9c
    }
    #answers .answer {
      display: block;
      padding: 16px;
      font-size: 14px;
      background-color: #f99157
      
    }
  </style>
    </head>
<body>
    <%
       // a block scrollable display is being suggested by everyone.
      //  or a drop down menu w
        %>
    <div id='answers'></div>
</body>
</html>
