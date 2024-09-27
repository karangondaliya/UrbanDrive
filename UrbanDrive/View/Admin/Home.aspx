<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UrbanDrive.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid mt-4">
        <!-- Admin Panel Card -->
        <div class="row justify-content-center mb-4">
            <div class="col-lg-8">
                <div class="card shadow-lg border-0">
                    <div class="card-header bg-primary text-white text-center">
                        <h3>Admin Panel</h3>
                    </div>
                    <div class="card-body text-center">
                        <h4 class="card-title">Welcome, Admin</h4>
                        <p class="card-text">Manage your application efficiently. Use the options below to perform CRUD operations.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Car Gallery Section -->
        <div class="row text-center">
            <div class="col-12">
                <h4 class="mb-4">Your Fleet Overview</h4>
            </div>
        </div>

        <!-- Cars Row 1 -->
        <div class="row mb-4">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 1</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 2</h5>
                        <p class="card-text">Sed do eiusmod tempor incididunt ut labore et dolore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 3</h5>
                        <p class="card-text">Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 4</h5>
                        <p class="card-text">Excepteur sint occaecat cupidatat non proident.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Cars Row 2 -->
        <div class="row">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 5</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 6</h5>
                        <p class="card-text">Sed do eiusmod tempor incididunt ut labore et dolore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 7</h5>
                        <p class="card-text">Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top" alt="Car Image">
                    <div class="card-body">
                        <h5 class="card-title">Car Name 8</h5>
                        <p class="card-text">Excepteur sint occaecat cupidatat non proident.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
