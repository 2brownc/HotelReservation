<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="HotelReservation.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CphBody" runat="server">
    <div>
        <h3>Do you want to logout?</h3>
        <div>
            <form runat="server">
                <div class="logoutPanel">
                    <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" />
                    <asp:Button ID="GoHomeButton" runat="server" Text="Back" OnClick="GoHomeButton_Click" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
