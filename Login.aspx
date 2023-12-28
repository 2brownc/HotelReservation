<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelReservation.Login" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="CphBody" runat="server">
    <div>
    <h2>Login</h2>
    <form runat="server">
        <div id="loginPanel">
            <div class="instruction">Please enter your credentials to avial our services!</div>
            <div class="input-grid">
                <div>Username:</div>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username" ControlToValidate="username"></asp:RequiredFieldValidator>

                <div>Password:</div>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
            <div class="controls">
                <asp:Button ID="loginButton" runat="server" Text="Login" />
            </div>
        </div>

        <div class="instruction errorMessage">
            <asp:Label ID="loginErrorMsg" runat="server"></asp:Label>
        </div>
    </form>

    <div class="instruction">
        If you are a new customer, please <a href="Register.aspx"> register here.</a>
    </div>
    </div>
</asp:Content>
