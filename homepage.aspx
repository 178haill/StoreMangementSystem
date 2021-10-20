<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs"  %>  
  
<!DOCTYPE html>  
  
<html>
<head runat="server">  
    <title>Store</title>  
    <link href="css/my.css" rel="stylesheet" />  
    <asp:ContentPlaceHolder ID="head" runat="server">  
    </asp:ContentPlaceHolder>  
    <style type="text/css">
        .auto-style1 {
            width: 309px;
        }
        .auto-style2 {
            height: 78px;
        }
        .auto-style3 {
            height: 134px;
            width: 309px;
        }
    </style>
</head>  
</html>

 
<html>    
<head>  
    <title>my layout</title>  
    <link rel="stylesheet" type="text/css" href="my.css">  
</head>  
    <header id="header">  
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="homepage.aspx">Home </a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Products <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Billing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Login As Admin</a>
      </li>
    </ul>
    
  </div>
</nav>  
<h1 style=" text-align:center">Welcome</h1>  
</header>
<body style="background-color:aquamarine;">  
  

  
   <div style="padding:10px;">
     
            <img src="store4.png" alt="Sample Image" style="height: 355px; width: 669px" />
        
    </div>
       
  <table class="auto-style2">

 
       <tr>
           <td class="auto-style1">
               <a href="Login.aspx">Login As Admin</a>
               </td>
      <td>
  <div style="padding:10px;">
     
            <img src="login.png" alt="Sample Image" style="height: 110px; width: 324px" />
        
    </div>
          </td>
    </tr>
         <tr>
          
      <td>
  <div style="padding:10px;">
     
            <img src="products.png" alt="Sample Image" style="height: 110px; width: 324px" /></marquee>
        
    </div>
          </td>
              <td class="auto-style1">
               <a href="index.aspx">View Products</a>
               </td>
    </tr>
        <tr>
           <td class="auto-style1">
               <a href="NewBIll.aspx">Generate Bill</a>
               </td>
      <td>
  <div style="padding:10px;">
     
            <img src="billing.jpg" alt="Sample Image" class="auto-style3" />
        
    </div>
          </td>
    </tr>
      </table>

<footer id="footer">  
    Thank You
</footer>  
</body>  
</html>  
  
