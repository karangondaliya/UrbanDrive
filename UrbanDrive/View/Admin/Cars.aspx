<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="UrbanDrive.View.Admin.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger pl-4">Manage Cars</h3>
                        <img src="../../Assets/img/car.jpeg" height="200px" weight="200px"/></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col"> 
                        <form runat="server">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Licence Number</label>
                              <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Brand</label>
                                <input type="text" class="form-control" id="BrandTb" placeholder="Enter The Car Brand" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Model</label>
                                <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Price</label>
                                <input type="text" class="form-control" id="PriceTb" placeholder="Enter Rent of Car" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Color</label>
                                <input type="text" class="form-control" id="ColorTb" placeholder="Enter Color" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Status: </label>
                                <asp:DropDownList ID="Availabledd" runat="server" class="form-control">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                </asp:DropDownList>
                              </div>
                            
                            <button type="submit" class="btn btn-danger">Edit</button>
                            <button type="submit" class="btn btn-danger">Add</button>
                            <button type="submit" class="btn btn-danger">Submit</button>
                          </form>

                    </div>
                </div>
                <div class="col-md-8">
                    <div class="table">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
