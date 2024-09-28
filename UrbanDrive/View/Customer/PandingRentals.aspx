<%@ Page Title="Pending Rentals" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PandingRentals.aspx.cs" Inherits="UrbanDrive.View.Customer.PandingRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Libraries/css/custom-style.css" /> <!-- Optional: For additional styling -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <!-- Page Header -->
        <div class="row justify-content-center mb-4">
            <div class="col text-center">
                <h2 class="text-dark fw-bold">Your Pending Rentals</h2>
            </div>
        </div>

        <!-- GridView for Pending Rentals -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-danger">Pending Rentals</h3>
                <asp:GridView runat="server" ID="CarList" CssClass="table table-striped table-hover">
                    <HeaderStyle BackColor="#007BFF" ForeColor="White" Font-Bold="True" Font-Size="16px" />
                    <AlternatingRowStyle BackColor="#FFD700" ForeColor="Black" />
                    <RowStyle BackColor="#F8F9FA" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#28A745" ForeColor="White" Font-Bold="True" />
                </asp:GridView>
                <asp:Label ID="ErrorMsg" runat="server" CssClass="text-danger"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
