<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="HotelReservation.AccountInfo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" runat="server">
    <h2>Account Information</h2>

    <form id="form1" runat="server">
        <div class="dataDisplay">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </div>

        <div class="instruction">Login is successful. Click "Book Room" to continue.</div>

        <div class="controls">
            <asp:Button ID="bookRoom" runat="server" Text="Book Room" OnClick="bookRoom_Click" />
        </div>
    </form>
</asp:Content>
