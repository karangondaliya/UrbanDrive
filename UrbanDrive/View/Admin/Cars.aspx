<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="UrbanDrive.View.Admin.Cars" EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <!-- Left side: Form taking 40% width (col-md-4) -->
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Manage Cars</h3>
                        <img src="../../Assets/img/car.jpeg" height="200" width="400"/>
                    </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col"> 
                        <form id="form1" runat="server">
                            <div class="mb-3">
                              <label for="LNumberTb" class="form-label">Licence Number</label>
                              <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="BrandTb" class="form-label">Brand</label>
                                <input type="text" class="form-control" id="BrandTb" placeholder="Enter The Car Brand" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="ModelTb" class="form-label">Model</label>
                                <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="PriceTb" class="form-label">Price</label>
                                <input type="text" class="form-control" id="PriceTb" placeholder="Enter Rent of Car" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="ColorTb" class="form-label">Color</label>
                                <input type="text" class="form-control" id="ColorTb" placeholder="Enter Color" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="Availabledd" class="form-label">Status: </label>
                                <asp:DropDownList ID="Availabledd" runat="server" class="form-control">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                           
                            <label id="ErrorMsg" runat="server" class="text-danger"></label>
                            <asp:Button type="submit" ID="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />
                            <asp:Button type="submit" ID="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                            <asp:Button type="submit" ID="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />
                          </form>
                    </div>
                </div>
            </div>

            <!-- Right side: Car list taking 60% width (col-md-8) -->
            <div class="col-md-8">
                <h1>Cars List</h1>
                <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#FFCC00" ForeColor="Black" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
