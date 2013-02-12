<%-- 
    Document   : index
    Created on : Jan 31, 2013, 5:30:47 PM
    Author     : Patrick Urban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge #1: Convenience Calculators</title>
    </head>
    <body>
        <h2 style="color: blue"">Challenge #1: Select a calculator below:</h2>
        <p>Click <a href="challenge2.jsp">here</a> for challenge #2.</p> 
        <h3>Area of a Rectangle</h3>
        <form id="areaRect" name="areaRect" method="post" 
              onsubmit="return validateRect()" action="RectServlet">
            Length: <input type="text" name="length"><br>
            Width: <input type="text" name="width"><br>
            <input type="submit" value="Area Rectangle">           
        </form>
        <hr>
        
        <h3>Area of a Circle</h3>
        <form id="areaCircle" name="areaCircle" method="post" 
              onsubmit="return validateCircle()" action="cs.do">
            <p>Radius of the Circle: <input type="text" name="radius"><br>
                <input type="submit" value="Area Circle">
            </p>
        </form>
        <hr>
        
        <h3 style="margin-bottom: 3px">Hypotenuse of a Rectangle</h3>
        <p style="font-family: Arial; font-size: small; margin-top: 0px">(Remember this is 'A' and 'B' to determine 'C')</p>
        <form id="thirdSide" name="thirdSide" method="post" 
              onsubmit="return validateTriangle()" action="tri.do">
            Side one of the rectangle: <input type="text" name="sideone"><br>
            Side two of the rectangle: <input type="text" name="sidetwo"><br>
            <input type="submit" value="Hypotenuse">
        </form>
        <hr>
        
        <script>
            function validateCircle(){
                var radius=document.forms["areaCircle"]["radius"].value;
                if (radius==null || radius==""){
                    alert("You must enter a number for the Radius to perform the calculation.")
                    return false;
                }
                if (isNaN(radius))
                {
                    alert("You entered letter instead of a number.");
                    return false;
                }
            }
            
            function validateRect(){
                var length=document.forms["areaRect"]["length"].value;
                var width=document.forms["areaRect"]["width"].value;
                if (length==null || length==""){
                    alert("You must enter a number for length to perform the calculation.")
                    return false;
                }
                if (width==null || width == ""){
                    alert("You must enter a number for width to perform the calculation.")
                    return false;
                }
                if (isNaN(length))
                {
                    alert("You entered a non number for the length instead of a number.");
                    return false;
                }
                if (isNaN(width))
                {
                    alert("You entered a non number for the width instead of a number.");
                    return false;
                }
            }
            
            function validateTriangle(){
                var sideone=document.forms["thirdSide"]["sideone"].value;
                var sidetwo=document.forms["thirdSide"]["sidetwo"].value;
                if (sideone==null || sidetwo==null || sideone=="" || sidetwo == ""){
                    alert("You must enter a number for side 'A' and side 'B' to perform the calculation.")
                    return false;
                }
                if (isNaN(sideone))
                {
                    alert("You entered letter instead of a number.");
                    return false;
                }
                if (isNaN(sidetwo))
                {
                    alert("You entered letter instead of a number.");
                    return false;
                }
            }
            
        </script>
    </body>
</html>
