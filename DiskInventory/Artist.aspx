<%--SWDV-235 Spring Semester 2020
Author: Kait Low
Date: 4/27/2020
Last Modified: 5/1/2020
Description: Page containing a editable list view of Artist table.
FileName: Artist.aspx--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="DiskInventory.Artist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Here's a list of great artists!</h1>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Artist_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="A_first_nameLabel" runat="server" Text='<%# Eval("A_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="A_last_nameLabel" runat="server" Text='<%# Eval("A_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_type_IDLabel" runat="server" Text='<%# Eval("Artist_type_ID") %>' />
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
                    <asp:Label ID="Artist_IDLabel1" runat="server" Text='<%# Eval("Artist_ID") %>' />
                   
                </td>
                <td>
                    <asp:TextBox ID="A_first_nameTextBox" runat="server" Text='<%# Bind("A_first_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="A_first_nameTextBox" 
                        ValidationGroup="Edit"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="A_last_nameTextBox" runat="server" Text='<%# Bind("A_last_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_type_IDTextBox" runat="server" Text='<%# Bind("Artist_type_ID") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="Artist_type_IDTextBox" 
                        ValidationGroup="Edit"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="A_first_nameTextBox" runat="server" Text='<%# Bind("A_first_name") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="A_first_nameTextBox" 
                        ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="A_last_nameTextBox" runat="server" Text='<%# Bind("A_last_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Artist_type_IDTextBox" runat="server" Text='<%# Bind("Artist_type_ID") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="Artist_type_IDTextBox" 
                        ValidationGroup="Insert"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="A_first_nameLabel" runat="server" Text='<%# Eval("A_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="A_last_nameLabel" runat="server" Text='<%# Eval("A_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_type_IDLabel" runat="server" Text='<%# Eval("Artist_type_ID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;
                            border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">Artist_ID</th>
                                <th runat="server">A_first_name</th>
                                <th runat="server">A_last_name</th>
                                <th runat="server">Artist_type_ID</th>
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
                    <asp:Label ID="Artist_IDLabel" runat="server" Text='<%# Eval("Artist_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="A_first_nameLabel" runat="server" Text='<%# Eval("A_first_name") %>' />
                </td>
                <td>
                    <asp:Label ID="A_last_nameLabel" runat="server" Text='<%# Eval("A_last_name") %>' />
                </td>
                <td>
                    <asp:Label ID="Artist_type_IDLabel" runat="server" Text='<%# Eval("Artist_type_ID") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryklConnectionString %>" 
        DeleteCommand="sp_del_artist" DeleteCommandType="StoredProcedure" InsertCommand="sp_ins_artist" InsertCommandType="StoredProcedure" SelectCommand="SELECT [Artist_ID]
              ,[A_first_name]
              ,[A_last_name]
              ,[Artist_type_ID]
          FROM [dbo].[Artist]
        ORDER BY A_last_name, A_first_name" 
        UpdateCommand="sp_upd_artist" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Artist_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="A_first_name" Type="String" />
            <asp:Parameter Name="A_last_name" Type="String" />
            <asp:Parameter Name="Artist_type_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Artist_ID" Type="Int32" />
            <asp:Parameter Name="A_first_name" Type="String" />
            <asp:Parameter Name="A_last_name" Type="String" />
            <asp:Parameter Name="Artist_type_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
