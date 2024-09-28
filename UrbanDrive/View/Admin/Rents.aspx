<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="UrbanDrive.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

   <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-2">
                    <h3 class="text-danger pl-4">Rented Cars</h3>
                    <img src="../../Assets/img/car.jpeg" height="200px" weight="200px"/></div>
                <div class="col"></div>
            </div>
            <br/>
  <br />
            <div class="row">
              <div class="col-lg-3"></div> 
                <div class="col-lg-6"> 
                    <form runat="server">
                     

                      <asp:GridView runat="server" ID="RentList" CssClass="table table-striped table-hover"
                            AutoGenerateSelectButton="True" OnSelectedIndexChanged="RentList_SelectedIndexChanged">
        
                        <HeaderStyle BackColor="#007BFF" ForeColor="White" Font-Bold="True" Font-Size="16px" />
                        <AlternatingRowStyle BackColor="#FFD700" ForeColor="Black" />
                           <RowStyle BackColor="#F8F9FA" ForeColor="Black" />
                          <SelectedRowStyle BackColor="#28A745" ForeColor="White" Font-Bold="True" />
        
                </asp:GridView>
                       
                        
     <div class="mb-3 form-group">
    <input type="text" class="form-control" id="DelayTb" runat="server" />
    <label class="form-check-label" for="customerRadio">Delay</label>

    <input type="text" class="form-control" id="FineTb" runat="server"  />
    <label class="form-check-label" for="adminRadio">Fine</label>
  </div> 
                        <br/>
                          <br />
    <div class="mb-3 form-group d-grid">
        <label id="InfoMsg" runat="server" class="text-danger"></label>
        <asp:Button type="submit" ID="SaveBtn" CssClass="btn btn-danger btn-block" Text="Return" runat="server" OnClick="SaveBtn_Click1" />
    </div>                    
                          </form>

                </div>
            </div>
            
        </div>
    </div>
</div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
