<%--SWDV-235 Spring Semester 2020
Author: Kait Low
Date: 4/27/2020
Modified: 4/27/2020
FileName: Borrower.aspx--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="DiskInventory.Borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Please enter your information to borrow a disk!</h1>

    <fieldset>
        <div>
            <br />
            <asp:Label ID="lblFirstName" runat="server" CssClass="form-control" Text="First Name: " BorderStyle="None" ForeColor="#122620"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" EnableViewState="False"></asp:TextBox>
     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" 
                CssClass="form-control" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>
     
            <br />
            <br />
     
        </div>
        <div>
            <asp:Label ID="lblLastName" runat="server" CssClass="form-control" Text="Last Name: " ForeColor="#122620"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Required" 
                ForeColor="Red" Font-Size="Smaller" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <br />
        </div>

        <div>  
         
            <asp:Label ID="lblPhone" runat="server" CssClass="form-control" Text="Phone: " ForeColor="#122620"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="txtPhone" Display="Dynamic" 
                ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone"
                ErrorMessage="*Please enter in 999-999-9999 format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" 
                Font-Size="Smaller" CssClass="form-control" Display="Dynamic"></asp:RegularExpressionValidator>

            <br />
            <br />

        </div>                                   
    </fieldset>
   
    <div class="Buttons">
        <br />
     <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <br />
        <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="35px" Width="75px" BorderColor="#122620" CssClass="form-control" ForeColor="#122620" OnClick="btnSubmit_Click" /> &nbsp;&nbsp; 
    <asp:Button ID="btnClear" runat="server" Text="Clear" Height="35px" Width="75px" BorderColor="#122620" CssClass="form-control" ForeColor="#122620" OnClick="btnClear_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>