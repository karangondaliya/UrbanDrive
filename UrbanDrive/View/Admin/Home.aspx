<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UrbanDrive.View.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid mt-4">
        <!-- Admin Panel Card -->
        <div class="row justify-content-center mb-4">
            <div class="col-lg-8">
                <div class="card shadow-lg border-0">
                    <!-- Updated card header with yellow background -->
                    <div class="card-header bg-warning text-white text-center">
                        <h3>Admin Panel</h3>
                    </div>
                    <div class="card-body text-center">
                        <h4 class="card-title text-warning">Welcome, Admin</h4>
                        <p class="card-text">Manage your application efficiently. Use the options below to perform CRUD operations.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Car Gallery Section -->
        <div class="row text-center">
            <div class="col-12">
                <h4 class="mb-4 text-warning">Your Fleet Overview</h4>
            </div>
        </div>

        <!-- Cars Row 1 -->
        <div class="row mb-4">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/tata-harrier.jpg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Tata Harrier">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Tata Harrier</h5>
                        <p class="card-text">A stylish and powerful SUV offering a refined driving experience and advanced features.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/OIP.jpeg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Hyundai Creta">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Hyundai Creta</h5>
                        <p class="card-text">One of the most popular compact SUVs known for comfort, style, and reliability.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/maruti-swift-front.jpg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Maruti Suzuki Swift">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Maruti Suzuki Swift</h5>
                        <p class="card-text">A fuel-efficient and stylish hatchback, perfect for city driving.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/grandvitaragrandvitararightfrontthreequarter.jpeg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Suzuki Grand Vitara">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Suzuki Grand Vitara</h5>
                        <p class="card-text">A rugged SUV that offers great off-road capabilities and a spacious interior.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Cars Row 2 -->
        <div class="row">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/amaze.jpeg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Honda Amaze">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Honda Amaze</h5>
                        <p class="card-text">A compact sedan with a comfortable interior, great fuel efficiency, and smooth handling.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/car.jpeg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Nissan Magnite">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Nissan Magnite</h5>
                        <p class="card-text">A feature-packed compact SUV with modern styling and a competitive price.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/mahindra-xuv300.jpg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Mahindra XUV300">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Mahindra XUV300</h5>
                        <p class="card-text">A subcompact SUV with excellent safety features and strong performance.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card shadow-sm">
                    <img src="../../Assets/img/The_new_Fortuner.jpeg" class="card-img-top img-fluid" style="object-fit: cover; height: 200px;" alt="Toyota Fortuner">
                    <div class="card-body bg-light">
                        <h5 class="card-title text-warning">Toyota Fortuner</h5>
                        <p class="card-text">A premium SUV that offers a commanding road presence, advanced technology, and luxury.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
