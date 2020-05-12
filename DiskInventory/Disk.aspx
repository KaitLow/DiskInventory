<%--SWDV-235 Spring Semester 2020
Author: Kait Low
Date: 4/27/2020
Last Modified: 5/11/2020
Description: Page containing a editable list view of Disk table.
FileName: Disk.aspx--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Disk.aspx.cs" Inherits="DiskInventory.Disk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Check out our collection!</h1>
<div style="border:solid black 2px; padding-top: 6px; padding-bottom: 6px;">  <%--added styling (5\11\2020)--%>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Disk_ID" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="Disk_IDLabel" runat="server" Text='<%# Eval("Disk_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_nameLabel" runat="server" Text='<%# Eval("Disk_name") %>' />
            </td>
            <td>
                <asp:Label ID="Release_dateLabel" runat="server" Text='<%# Eval("Release_date") %>' />
            </td>
            <td>
                <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_type_IDLabel" runat="server" Text='<%# Eval("Disk_type_ID") %>' />
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
                <asp:Label ID="Disk_IDLabel1" runat="server" Text='<%# Eval("Disk_ID") %>' />

            </td>
            <td>
                <asp:TextBox ID="Disk_nameTextBox" runat="server" Text='<%# Bind("Disk_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="Disk_nameTextBox"
                    ValidationGroup="Edit"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="Release_dateTextBox" runat="server" Text='<%# Bind("Release_date") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="Release_dateTextBox" 
                    ValidationGroup="Edit"></asp:RequiredFieldValidator>
                 <%--    added a RegEx validator for Release_Date (5/11/2020)--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Date Invalid" ValidationGroup="Edit" 
                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                    ControlToValidate="Release_dateTextBox"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="Status_IDTextBox" 
                    ValidationGroup="Edit"></asp:RequiredFieldValidator>
                 <%--    added a range validator for Status_ID (5/11/2020)--%>
                 <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Status_IDTextBox"
                        Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Edit"></asp:RangeValidator>
            </td>
            <td>
                <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="Genre_IDTextBox"
                    ValidationGroup="Edit"></asp:RequiredFieldValidator>
                 <%--    added a range validator for Genre_ID (5/11/2020)--%>
                 <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Genre_IDTextBox"
                        Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Edit"></asp:RangeValidator>
            </td>
            <td>
                <asp:TextBox ID="Disk_type_IDTextBox" runat="server" Text='<%# Bind("Disk_type_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required" ControlToValidate="Disk_type_IDTextBox"
                    ValidationGroup="Edit"></asp:RequiredFieldValidator>
                <%--    added a range validator for Disk_type_ID (5/11/2020)--%>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Disk_type_IDTextBox"
                        Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Edit"></asp:RangeValidator>
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
                <asp:TextBox ID="Disk_nameTextBox" runat="server" Text='<%# Bind("Disk_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="Disk_nameTextBox" ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="Release_dateTextBox" runat="server" Text='<%# Bind("Release_date") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="Release_dateTextBox" ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
                   <%--    added a RegEx validator for Release_Date (5/11/2020)--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Date Invalid" ValidationGroup="Insert" 
                    ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                    ControlToValidate="Release_dateTextBox"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="Status_IDTextBox" runat="server" Text='<%# Bind("Status_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="Status_IDTextBox" ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
                   <%--    added a range validator for Status_ID (5/11/2020)--%>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Status_IDTextBox"
                    Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Insert"></asp:RangeValidator>
            </td>
            <td>
                <asp:TextBox ID="Genre_IDTextBox" runat="server" Text='<%# Bind("Genre_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="Genre_IDTextBox" ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
                   <%--    added a range validator for Genre_ID (5/11/2020)--%>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Genre_IDTextBox"
                    Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Insert"></asp:RangeValidator>
            </td>
            <td>
                <asp:TextBox ID="Disk_type_IDTextBox" runat="server" Text='<%# Bind("Disk_type_ID") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required" ControlToValidate="Disk_type_IDTextBox" ValidationGroup="Insert">
                </asp:RequiredFieldValidator>
                   <%--    added a range validator for Disk_type_ID (5/11/2020)--%>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="*Must be 1, 2, 3, or 4" ControlToValidate="Disk_type_IDTextBox"
                    Type="Integer" CssClass="form-control" MaximumValue="4" MinimumValue="1" ValidationGroup="Insert"></asp:RangeValidator>
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
                <asp:Label ID="Disk_IDLabel" runat="server" Text='<%# Eval("Disk_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_nameLabel" runat="server" Text='<%# Eval("Disk_name") %>' />
            </td>
            <td>
                <asp:Label ID="Release_dateLabel" runat="server" Text='<%# Eval("Release_date") %>' />
            </td>
            <td>
                <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_type_IDLabel" runat="server" Text='<%# Eval("Disk_type_ID") %>' />
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
                            <th runat="server">Disk_ID</th>
                            <th runat="server">Disk_name</th>
                            <th runat="server">Release_date</th>
                            <th runat="server">Status_ID</th>
                            <th runat="server">Genre_ID</th>
                            <th runat="server">Disk_type_ID</th>
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
                <asp:Label ID="Disk_IDLabel" runat="server" Text='<%# Eval("Disk_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_nameLabel" runat="server" Text='<%# Eval("Disk_name") %>' />
            </td>
            <td>
                <asp:Label ID="Release_dateLabel" runat="server" Text='<%# Eval("Release_date") %>' />
            </td>
            <td>
                <asp:Label ID="Status_IDLabel" runat="server" Text='<%# Eval("Status_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Genre_IDLabel" runat="server" Text='<%# Eval("Genre_ID") %>' />
            </td>
            <td>
                <asp:Label ID="Disk_type_IDLabel" runat="server" Text='<%# Eval("Disk_type_ID") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryklConnectionString %>" 
    SelectCommand="SELECT [Disk_ID], [Disk_name], [Release_date], [Status_ID], [Genre_ID], [Disk_type_ID] FROM [Disk] ORDER BY [Disk_name]" 
    DeleteCommand="sp_del_disk" InsertCommand="sp_ins_disk" UpdateCommand="sp_upd_disk" DeleteCommandType="StoredProcedure" InsertCommandType="StoredProcedure" 
    UpdateCommandType="StoredProcedure">
    <DeleteParameters>
        <asp:Parameter Name="Disk_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Disk_name" Type="String" />
        <asp:Parameter DbType="Date" Name="Release_date" />
        <asp:Parameter Name="Status_ID" Type="Int32" />
        <asp:Parameter Name="Genre_ID" Type="Int32" />
        <asp:Parameter Name="Disk_type_ID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Disk_ID" Type="Int32" />
        <asp:Parameter Name="Disk_name" Type="String" />
        <asp:Parameter DbType="Date" Name="Release_date" />
        <asp:Parameter Name="Status_ID" Type="Int32" />
        <asp:Parameter Name="Genre_ID" Type="Int32" />
        <asp:Parameter Name="Disk_type_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
