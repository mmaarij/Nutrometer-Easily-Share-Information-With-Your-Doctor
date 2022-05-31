<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="SE_Project.UserProfile" %>

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
    <section id="section1Profile">
        <nav class="navbar navbar-dark navbar-expand-md" data-aos="fade-up" data-aos-delay="150" id="nav">
            <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-heartbeat" id="navIcon" style="font-size: 55px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" id="homeBtn" href="#home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" id="profileBtn" href="#profile">Profile</a></li>
                    </ul>
                    <div class="d-flex flex-column flex-md-row"><button class="btn text-warning border rounded-0" id="logoutBtn" type="button" style="border-radius: 20px;color: rgba(255,255,255,0.75);">Sign out</button></div>
                </div>
            </div>
        </nav>
        <div class="container-fluid form-cont">
            <div class="row justify-content-center mh-100vh">
                <div class="col-8 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                    <div class="m-auto w-lg-75 w-xl-50">
                        <h2 class="text-dark text-info font-weight-light mb-5" id="logoBlock-3" style="text-align: center;"><i class="fas fa-user-edit text-dark"></i>&nbsp;update profile</h2>
                        <form id="loginBlock" style="text-align: center;">
                            <div class="form-group"><label class="text-secondary">Name</label><asp:TextBox ID="uname" runat="server"  class="form-control" type="text"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Age</label><asp:TextBox ID="uage" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Gender</label><asp:TextBox ID="ugender" runat="server"  class="form-control" type="text"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Weight (kg)</label><asp:TextBox ID="uweight" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Height (cm)</label><asp:TextBox ID="uheight" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <asp:button ID="updateProfileBtn"  runat="server"  class="btn btn-primary border rounded-pill mt-2" type="submit" Text="Update Profile"  ></asp:button>
                            
                        </form>
                    </div>
                </div>
                <div class="col-8 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                    <div class="m-auto w-lg-75 w-xl-50">
                        <h2 class="text-dark text-info font-weight-light mb-5" id="logoBlock-1" style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" fill="none" class="text-dark">
                                <path d="M21 6C20.4477 6 20 6.44771 20 7V17C20 17.5523 20.4477 18 21 18C21.5523 18 22 17.5523 22 17V7C22 6.44772 21.5523 6 21 6Z" fill="currentColor"></path>
                                <path d="M4 14C5.10457 14 6 13.1046 6 12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12C2 13.1046 2.89543 14 4 14Z" fill="currentColor"></path>
                                <path d="M12 12C12 13.1046 11.1046 14 10 14C8.89543 14 8 13.1046 8 12C8 10.8954 8.89543 10 10 10C11.1046 10 12 10.8954 12 12Z" fill="currentColor"></path>
                                <path d="M16 14C17.1046 14 18 13.1046 18 12C18 10.8954 17.1046 10 16 10C14.8954 10 14 10.8954 14 12C14 13.1046 14.8954 14 16 14Z" fill="currentColor"></path>
                            </svg>&nbsp;update password</h2>
                        <form id="loginBlock-1" style="text-align: center;">
                            <div class="form-group"><label class="text-secondary">Old Password</label><input class="form-control" type="password" required=""></div>
                            <div class="form-group"><label class="text-secondary">New Password</label><input class="form-control" type="password" required=""></div>
                            <div class="form-group"><label class="text-secondary">Confirm Password</label><input class="form-control" type="password" required=""></div><button class="btn btn-primary border rounded-pill mt-2" id="UpdatePassBtn" type="submit">UPDATE PASSWORD</button>
                        </form>
                    </div>
                </div>
                <div class="col-8 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                    <div class="m-auto w-lg-75 w-xl-50">
                        <h2 class="text-dark text-info font-weight-light mb-5" id="logoBlock-2" style="text-align: center;"><i class="fas fa-medal text-dark"></i>&nbsp;update goals</h2>
                        <form id="loginBlock-2" style="text-align: center;">

                            <div class="form-group"><label class="text-secondary">Weight (kg)</label><asp:TextBox ID="uwg" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Calories (cm)</label><asp:TextBox ID="ucg" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <div class="form-group"><label class="text-secondary">Water (glasses)</label><asp:TextBox ID="uwatg" runat="server"  class="form-control" type="text" inputmode="numeric"></asp:TextBox></div>
                            <asp:button ID="UpdateGoalsBtn" runat="server"  class="btn btn-primary border rounded-pill mt-2" type="submit" Text="UPDATE Goals"  ></asp:button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
