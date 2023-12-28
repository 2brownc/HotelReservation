<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="BookInfo.aspx.cs" Inherits="HotelReservation.BookInfo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" runat="server">
    <h2>Booking Information
    </h2>

    <h3>
        <asp:Label ID="welcomeText" runat="server" Text=""></asp:Label>
    </h3>

    <div class="dataDisplay">
        <form id="form1" runat="server">
            <div>
                <div class="instruction">Your booking is successfull:</div>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>

            <div>
                <div class="instruction">List of other room bookings:</div>
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
            </div>
        </form>
    </div>
</asp:Content>
