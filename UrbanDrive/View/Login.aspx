<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UrbanDrive.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">Login Page</h3>
                        <img src="../Assets/img/grandvitaragrandvitararightfrontthreequarter.jpeg" height="200" width="350"/>
                    </div>
                    <div class="col"></div>
                </div>
                <form runat="server">
                  <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" placeholder="Enter User Id" runat="server" required="required"/>
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required"/>
                  </div>
                  <div class="mb-3 form-group">
                    <input type="radio" class="form-check-input" id="CustRadio" name="Role" runat="server" />
                    <label class="form-check-label" for="customerRadio">Customer</label>

                    <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server" />
                    <label class="form-check-label" for="adminRadio">Admin</label>
                  </div> <br />
                    <div class="mb-3 form-group d-grid">
                        <label id="InfoMsg" runat="server" class="text-danger"></label>
                        <asp:Button type="submit" ID="LoginBtn" CssClass="btn btn-warning btn-block" Text="Login" runat="server" OnClick="LoginBtn_Click" />
                    </div>
                  
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

</body>
</html>
