<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UrbanDrive.View.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | UrbanDrive</title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css" />
    <style>
        body {
            background: linear-gradient(to right, #ffd700, #ffec8b); /* Shining yellow gradient */
            font-family: 'Poppins', sans-serif;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(255, 215, 0, 0.5); /* Shining yellow shadow */
        }
        .login-header {
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
            color: #FFD700; /* Gold */
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* Soft shadow for glowing text */
        }
        .form-control {
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(255, 215, 0, 0.3); /* Soft glowing border */
        }
        .form-group {
            margin-bottom: 1.5rem;
        }
        .btn-login {
            background-color: #FFD700; /* Gold */
            color: #fff;
            font-weight: bold;
            padding: 0.75rem;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(255, 215, 0, 0.3); /* Shining effect */
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btn-login:hover {
            background-color: #FFEC8B; /* Lighter yellow */
            box-shadow: 0 5px 20px rgba(255, 215, 0, 0.5); /* Stronger glow on hover */
        }
        .form-text {
            font-size: 0.85rem;
        }
        .login-image {
            display: block;
            margin: 0 auto;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(255, 215, 0, 0.3); /* Soft shadow for image */
        }
        .form-check-label {
            margin-left: 5px;
            font-weight: 500;
        }
        #InfoMsg {
            font-weight: bold;
            color: #ff0000; /* Keeping error messages red for contrast */
        }
    </style>
</head>
<body>
    <div class="container-fluid vh-100 d-flex align-items-center justify-content-center">
        <div class="row w-100">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card p-4 bg-light">
                    <div class="row">
                        <div class="col text-center">
                            <h3 class="login-header">Login</h3>
                            <img src="../Assets/img/Logo.jpeg" class="login-image mt-3 mb-4" height="200" width="350" alt="Car Image"/>
                        </div>
                    </div>
                    <form runat="server">
                        <div class="mb-3 form-group">
                            <label for="exampleInputEmail1" class="form-label">Email Address</label>
                            <input type="text" class="form-control" id="UserNameTb" placeholder="Enter User Id" runat="server" required="required"/>
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3 form-group">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required"/>
                        </div>
                        <div class="mb-3 form-group d-flex justify-content-center">
                            <div class="form-check form-check-inline">
                                <input type="radio" class="form-check-input" id="CustRadio" name="Role" runat="server" />
                                <label class="form-check-label" for="CustRadio">Customer</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server" />
                                <label class="form-check-label" for="AdminRadio">Admin</label>
                            </div>
                        </div>
                        <div class="mb-3 form-group d-grid">
                            <label id="InfoMsg" runat="server" class="text-danger"></label>
                            <asp:Button type="submit" ID="LoginBtn" CssClass="btn btn-login" Text="Login" runat="server" OnClick="LoginBtn_Click" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>
