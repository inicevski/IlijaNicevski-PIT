<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="Domaci.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prijava</title>
    <meta charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PRIJAVA</h1>

            Prezime i ime<asp:TextBox ID="tb_ime_prez" runat="server" ValidationGroup="Group1"/>
                <asp:RequiredFieldValidator  ID ="ime_prez_val"  
                    ErrorMessage="Moraš da popuniš polje" 
                    ControlToValidate="tb_ime_prez"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
            <br />


            Email<asp:TextBox ID="tb_email" runat="server" ValidationGroup="Group1"/>
                <asp:RequiredFieldValidator  ID ="email_val"  
                    ErrorMessage="Moraš da popuniš polje" 
                    ControlToValidate="tb_email"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
                <asp:RegularExpressionValidator ID="email_format_val" 
                    ErrorMessage="Nije ispravan format email-a" 
                    ControlToValidate="tb_email"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                        runat="server"/>
            <br /> 

             Potrvda<asp:TextBox ID="tb_potvr" runat="server"/>
               <asp:RequiredFieldValidator  ID ="potvr_val"  
                   ErrorMessage="Moraš da popuniš polje" 
                   ControlToValidate="tb_potvr"
                   Display="Static"
                   ForeColor="Red"
                   EnableClientScript="false"
                   SetFocusOnError="true"
                   ValidationGroup="Group1"
                       runat="server"/>
               <asp:CompareValidator ID="potvr_comp_val"
                   ErrorMessage="Nije isti mail" 
                   ControlToValidate="tb_potvr"
                   ControlToCompare="tb_email"
                   Display="Static"
                   ForeColor="Red"
                   EnableClientScript="false"
                   SetFocusOnError="true"
                   ValidationGroup="Group1"
                       runat="server" />
           <br />

            Godina rođenja<asp:TextBox ID="tb_god" runat="server" ValidationGroup="Group1"/>
               <asp:RequiredFieldValidator  ID ="god_val"  
                   ErrorMessage="Moraš da popuniš polje" 
                   ControlToValidate="tb_god"
                   Display="Static"
                   ForeColor="Red"
                   EnableClientScript="false"
                   SetFocusOnError="true"
                   ValidationGroup="Group1"
                       runat="server"/>
               <asp:RangeValidator  ID ="god_opseg_val"  
                   ErrorMessage="Mora biti od 2003 do 2010" 
                   ControlToValidate="tb_god"
                   Display="Static"
                   ForeColor="Red"
                   EnableClientScript="false"
                   SetFocusOnError="true"
                   ValidationGroup="Group1"
                       runat="server" MinimumValue="2003" MaximumValue="2010" Type="Integer" />

           <br />

           Razred<asp:RadioButtonList ID="razred" runat="server" ValidationGroup="Group1">
                   <asp:ListItem Text="I" Value="1"/>
                   <asp:ListItem Text="II" Value="2"/>
                   <asp:ListItem Text="III" Value="3"/>
                   <asp:ListItem Text="IV" Value="4"/>
               </asp:RadioButtonList>
           
               <asp:RequiredFieldValidator  ID ="raz_val"  
                   ErrorMessage="Moraš da odabereš" 
                   ControlToValidate="razred"
                   Display="Static"
                   ForeColor="Red"
                   EnableClientScript="false"
                   SetFocusOnError="true"
                   ValidationGroup="Group1"
                       runat="server"/>

           <br />
           
            <asp:Button Text="PRIJAVI SE" id="btn" onclick="btn_Click" CausesValidation="True" ValidationGroup="Group1" runat="server"/>
            <br />
            <asp:Label ID="lbl" runat="server"/>
        </div>
    </form>
</body>
</html>

