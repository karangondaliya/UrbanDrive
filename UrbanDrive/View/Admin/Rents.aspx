<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="UrbanDrive.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

   <div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <h3 class="text-danger pl-4">Rented Cars</h3>
                    <img src="../../Assets/img/car.jpeg" height="200px" weight="200px"/></div>
                <div class="col"></div>
            </div>
            <div class="row">
                <div class="col"> 
                    <form runat="server">
                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Customer Name</label>
                          <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer Name" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Customer Address</label>
                            <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Customer Phone</label>
                            <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone No." runat="server">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Password</label>
                            <input type="text" class="form-control" id="PassTb" placeholder="Enter Password" runat="server">
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
