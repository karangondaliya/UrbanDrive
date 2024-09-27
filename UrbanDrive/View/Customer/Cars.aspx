﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="UrbanDrive.View.Customer.Cars" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <label id="CustName" runat="server">.....</label>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 ml-5">
                <img src="../../Assets/img/pexels-mikebirdy-170811.jpg" height="200" width="300" />
            </div>
            <div class="col-md-4"></div>
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col">
                
               
                    <div class="col-md-8">
                        <h3 class="text-danger">Available Cars</h3>
                        <div class="row">
                            <div class="col-5"></div>
                            <div></div>
                        </div>

                        <!-- GridView with AutoGenerateSelectButton -->
                        <asp:GridView runat="server" ID="CarList" CssClass="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="CarList_SelectedIndexChanged1">
                            <AlternatingRowStyle BackColor="#FFCC00" ForeColor="Black" />
                        </asp:GridView>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <div class="mb-3 form-group">
                                <label for="exampleInputDate">Select fisrt Return Date</label>
                                <input type="date" class="form-control" id="ReturnDateTb" runat="server" required="required" />
                            </div>

                            <div class="col-4">
                                <div class="mb-3 form-group d-grid">
                                    <label id="InfoMsg" runat="server" class="text-danger"></label>
                                    <!-- Button to trigger booking action -->
                                    <asp:Button type="submit" ID="BookBtn" CssClass="btn btn-warning btn-block" Text="Book" runat="server" OnClick="BookBtn_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
             
            </div>
        </div>
    </div>
</asp:Content>
