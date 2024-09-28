<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="UrbanDrive.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="col-md-3"></div>
                <img src="../../Assets/img/car.jpeg" height="200px" width="200px" />
            </div>
            <h3 class="text-warning">Car Returned History</h3>
            <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <form runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:GridView runat="server" ID="RentList" CssClass="table table-hover" 
                                   AutoGenerateSelectButton="True" 
                                   OnSelectedIndexChanged="RentList_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="Black" />
                    </asp:GridView>

                    <label id="InfoMsg" runat="server" class="text-danger"></label>
                    <asp:Button ID="DeleteBtn" CssClass="btn btn-danger btn-block" 
                                Text="Delete" runat="server" 
                                OnClick="DeleteBtn_Click" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
