<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="RegisterSuccess.aspx.cs" Inherits="HotelReservation.RegisterSuccess" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" runat="server">
    <div>
        <h2>Registration Successful!</h2>
        <div class="instruction">
            Please click on login to continue.
        </div>

        <form runat="server">
            <div class="controls">
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
            </div>
        </form>
    </div>
</asp:Content>
