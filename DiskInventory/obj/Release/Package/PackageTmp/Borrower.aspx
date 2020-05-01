<%--SWDV-235 Spring Semester 2020
Author: Kait Low
Date: 4/27/2020
Last Modified: 5/1/2020
Description: Page containing a editable list view of Borrowers table.
FileName: Borrower.aspx--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="DiskInventory.Borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Please enter your information to borrow!</h1>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Borrower_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="B_first_nameLabel" runat="server" Text='<%# Eval("B_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_last_nameLabel" runat="server" Text='<%# Eval("B_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_phone_numberLabel" runat="server" Text='<%# Eval("B_phone_number") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Borrower_IDLabel1" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="B_first_nameTextBox" runat="server" Text='<%# Bind("B_first_name") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="B_first_nameTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="B_last_nameTextBox" runat="server" Text='<%# Bind("B_last_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="B_last_nameTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="B_phone_numberTextBox" runat="server" Text='<%# Bind("B_phone_number") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="B_phone_numberTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Edit"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="B_phone_numberTextBox"
                    ErrorMessage="*Please enter in 999-999-9999 format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ValidationGroup="Edit"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="B_first_nameTextBox" runat="server" Text='<%# Bind("B_first_name") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="B_first_nameTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="B_last_nameTextBox" runat="server" Text='<%# Bind("B_last_name") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="B_last_nameTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="B_phone_numberTextBox" runat="server" Text='<%# Bind("B_phone_number") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="B_phone_numberTextBox" ErrorMessage="*Required" 
                     ValidationGroup="Insert"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="B_phone_numberTextBox"
                    ErrorMessage="*Please enter in 999-999-9999 format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                     ValidationGroup="Insert"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="B_first_nameLabel" runat="server" Text='<%# Eval("B_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_last_nameLabel" runat="server" Text='<%# Eval("B_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_phone_numberLabel" runat="server" Text='<%# Eval("B_phone_number") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;
                        border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">Borrower_ID</th>
                                <th runat="server">B_first_name</th>
                                <th runat="server">B_last_name</th>
                                <th runat="server">B_phone_number</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Borrower_IDLabel" runat="server" Text='<%# Eval("Borrower_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="B_first_nameLabel" runat="server" Text='<%# Eval("B_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_last_nameLabel" runat="server" Text='<%# Eval("B_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="B_phone_numberLabel" runat="server" Text='<%# Eval("B_phone_number") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryklConnectionString %>" 
        DeleteCommand="sp_del_borrower" DeleteCommandType="StoredProcedure" InsertCommand="sp_ins_borrower" InsertCommandType="StoredProcedure" 
        SelectCommand="SELECT [Borrower_ID]
              ,[B_first_name]
              ,[B_last_name]
              ,[B_phone_number]
          FROM [dbo].[Borrower]
        ORDER BY B_last_name, B_first_name" UpdateCommand="sp_upd_borrower" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Borrower_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="B_first_name" Type="String" />
            <asp:Parameter Name="B_last_name" Type="String" />
            <asp:Parameter Name="B_phone_number" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Borrower_ID" Type="Int32" />
            <asp:Parameter Name="B_first_name" Type="String" />
            <asp:Parameter Name="B_last_name" Type="String" />
            <asp:Parameter Name="B_phone_number" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<%--    <h1>Please enter your information to borrow a disk!</h1>

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
    </div>--%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>