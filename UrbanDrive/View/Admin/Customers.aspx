<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="UrbanDrive.View.Admin.Customers" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <!-- Left side: Form taking 40% width (col-md-4) -->
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Manage Customers</h3>
                        <img src="../../Assets/img/car.jpeg" height="200px" width="400px" />
                    </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="mb-3">
                                <label for="CustNameTb" class="form-label">Customer Name</label>
                                <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer Name" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="AddTb" class="form-label">Customer Address</label>
                                <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="PhoneTb" class="form-label">Customer Phone</label>
                                <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone No." runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="PassTb" class="form-label">Password</label>
                                <input type="text" class="form-control" id="PassTb" placeholder="Enter Password" runat="server">
                            </div>
                            
                            <label id="ErrorMsg" runat="server" class="text-danger"></label></br>
                                
                            <asp:Button type="submit" ID="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />
                            <asp:Button type="submit" ID="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                            <asp:Button type="submit" ID="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />
                        </form>
                    </div>
                </div>
            </div>

            <!-- Right side: Customer list taking 60% width (col-md-8) -->
            <div class="col-md-8">
                <h1>Customers List</h1>
                <asp:GridView runat="server" ID="CustomerList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="Black" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
