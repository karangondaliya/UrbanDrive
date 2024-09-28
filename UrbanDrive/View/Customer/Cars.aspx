<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="UrbanDrive.View.Customer.Cars" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row mb-4">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                 <h4 class="text-dark fw-bold">Welcome</h4>
               <label id="CustName" runat="server" class="text-dark fw-bold">.....</label>
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-md-4"></div>
            <div class="col-md-4 text-center">
                <img src="../../Assets/img/tmain.jpg" height="200" width="300" class="img-fluid rounded shadow" />
            </div>
            <div class="col-md-4"></div>
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                <h3 class="text-danger text-center mb-4">Available Cars</h3>

                <!-- GridView with AutoGenerateSelectButton -->
                <asp:GridView runat="server" ID="CarList" CssClass="table table-striped table-hover" 
                    AutoGenerateSelectButton="true" OnSelectedIndexChanged="CarList_SelectedIndexChanged1">
                    <HeaderStyle BackColor="#007BFF" ForeColor="White" Font-Bold="True" Font-Size="16px" />
                    <AlternatingRowStyle BackColor="#FFD700" ForeColor="Black" />
                    <RowStyle BackColor="#F8F9FA" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#28A745" ForeColor="White" Font-Bold="True" />
                </asp:GridView>

                <div class="row mt-4">
                    <div class="col-md-8 offset-md-2">
                        <div class="mb-3 form-group">
                            <label for="ReturnDateTb" class="form-label">Select First Return Date</label>
                            <input type="date" class="form-control" id="ReturnDateTb" runat="server" required="required" />
                        </div>
                        <div class="d-grid">
                            <label id="InfoMsg" runat="server" class="text-danger"></label>
                           
                            <asp:Button type="submit" ID="BookBtn" CssClass="btn btn-warning btn-block" Text="Book" runat="server" OnClick="BookBtn_Click" />
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
