﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Test_Studenti.aspx.cs" Inherits="Test_Studenti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Test Materia X</h1>
    </div>
    <div>
        <table>
            <tr>
                <th>
                    Domanda n.1
                </th>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList id="test1" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.2
                </th>
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList id="test2" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                   Domanda n.3
                </th>
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList id="test3" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.4
                </th>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList id="test4" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                   Domanda n.5
                </th>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList id="test5" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.6
                </th>
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList id="test6" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.7
                </th>
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList id="test7" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.8
                </th>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList id="test8" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.9
                </th>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList id="test9" runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr>
                <th>
                    Domanda n.10
                </th>
            </tr>
            <tr>
                <td>
                     <asp:RadioButtonList id="test10"  runat="server">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>Forse</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
    </div>
    <asp:Button runat="server" Text="Concludi Test!" />
    <asp:Label id="lbl" runat="server" Text=""></asp:Label>
</asp:Content>
