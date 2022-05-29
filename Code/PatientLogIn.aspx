﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientLogIn.aspx.cs" Inherits="SE_Project.PatientLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>design</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/-Login-form-Page-BS4-.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-4---Table-Fixed-Header.css">
    <link rel="stylesheet" href="assets/css/Button-Icon-Counter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Transparent-Incremental-Number-Counter.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row mh-100vh">
            <div class="col-10 col-sm-8 col-md-6 col-lg-6 offset-1 offset-sm-2 offset-md-3 offset-lg-0 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                <div class="m-auto w-lg-75 w-xl-50">
                    <h2 class="text-danger text-info font-weight-light mb-5" id="logoBlock" style="text-align: center;"><i class="fas fa-heartbeat text-danger"></i>&nbsp;nutrometer</h2>
                    <%--<form runat="server" id="loginBlock" style="text-align: center;">--%>
                        <div class="form-group"><label class="text-secondary">Email</label>
                            <asp:TextBox ID="email" runat="server" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$" inputmode="email" class="form-control" required=""  ></asp:TextBox>
                        </div>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        
                    <div class="form-group"><label class="text-secondary">Password</label>
                        <asp:TextBox ID="pass" runat="server" type="password" class="form-control" required=""></asp:TextBox> </div>    
                    

                          <asp:button ID="loginUserName"  runat="server"  class="btn border rounded-0 border-danger mt-2" type="submit" Text="Log In"  onclick="loginFunct"></asp:button>
                              <br /><br />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                   <%-- </form>--%>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background-image: url(&quot;assets/img/pexels-pixabay-40751.jpg&quot;);background-size: cover;background-position: center center;"></div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
</body>

</html>


        </div>
    </form>
</body>
</html>
