<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="madicare_Admin_Login" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript">
    // <![CDATA[
          function ShowLoginWindow() {
              pcLogin.Show();
          }
          function ShowCreateAccountWindow() {
              pcCreateAccount.Show();
              tbUsername.Focus();
          }
    // ]]> 
    </script>
</head>
<body style="background-color: #666633">
    <form id="form1" runat="server" style="background-color: #666633">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="background-color: #666633" align="center">
      <table  style="overflow: auto; width: 300px; height: 300px">
                                <tr>
                                    <td rowspan="6">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="pcmCellCaption" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <img src="../user/logo/02-1Doctor-512.png" 
                                            style="height: 200px; width: 200px" /> &nbsp;</td>
                                    <td rowspan="6">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lblUsername1" runat="server" Text="Admin Name:" AssociatedControlID="tbLogin">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="pcmCellText">
                                        <dx:ASPxTextBox ID="tbLogin" runat="server" Width="150px" ClientInstanceName="tbLogin">
                                            <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                <RequiredField ErrorText="Admin required" IsRequired="True" />
                                                <RegularExpression ErrorText="Login required" />
                                                <ErrorFrameStyle Font-Size="10px">
                                                    <ErrorTextPaddings PaddingLeft="0px" />
                                                </ErrorFrameStyle>
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" >
                                        <dx:ASPxLabel ID="lblPass1" runat="server" Text="Password:" AssociatedControlID="tbPassword">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="pcmCellText">
                                        <dx:ASPxTextBox ID="tbPassword" runat="server" Width="150px" Password="True">
                                            <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                                <RequiredField ErrorText="Password required" IsRequired="True" />
                                                <ErrorFrameStyle Font-Size="10px">
                                                    <ErrorTextPaddings PaddingLeft="0px" />
                                                </ErrorFrameStyle>
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="pcmCheckBox">
                                        <dx:ASPxCheckBox ID="chbRemember" runat="server" Text="Remember me">
                                        </dx:ASPxCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="pcmButton">
                                            <dx:ASPxButton ID="btOK" runat="server" Text="Login" Width="80px" 
                                                AutoPostBack="False" style="float: left; margin-right: 8px" 
                                                OnClick="btLogin_Click">
                                                <ClientSideEvents Click="function(s, e) { if(ASPxClientEdit.ValidateGroup('entryGroup')) pcLogin.Hide(); }" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="btCancel" runat="server" Text="Cancel" Width="80px" 
                                                AutoPostBack="False" style="float: left; margin-right: 8px" 
                                                OnClick="btCancel_Click">
                                                <ClientSideEvents Click="function(s, e) { pcLogin.Hide(); }" />
                                            </dx:ASPxButton>
                                     <a href="javascript:ShowCreateAccountWindow();" id="hl1" 
                                         style="float: right; width: 115px;">
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                     <a href="javascript:ShowCreateAccountWindow();" id="hl1" 
                                         style="float: right; margin: 14px 0 10px 0; width: 115px;">
                        Create Account</a>
                                        &nbsp;</td>
                                </tr>
                               
                              
                            </table>
                             <dx:ASPxPopupControl ID="pcCreateAccount" runat="server" CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcCreateAccount"
        HeaderText="Create Account" AllowDragging="True" Modal="True" PopupAnimationType="Fade"
        EnableViewState="False" PopupHorizontalOffset="40" PopupVerticalOffset="40" 
            Height="336px" Width="488px" Theme="Youthful">

        <ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup('createAccountGroup'); }" />
        <SizeGripImage Width="11px" />
<SizeGripImage Width="11px"></SizeGripImage>

<ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup(&#39;createAccountGroup&#39;); }"></ClientSideEvents>
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
                <dx:ASPxPanel ID="Panel2" runat="server" DefaultButton="btCreate" Width="322px">
                    <PanelCollection>
                  
                        <dx:PanelContent ID="PanelContent1" runat="server">
                            <table style="height: 308px">
                                <tr>
                                    <td rowspan="11">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lblUsername2" runat="server" AssociatedControlID="tbUsername" 
                                            Text="Admin Name:">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1" >
                                        
                                        <dx:ASPxTextBox ID="tbUsername" runat="server" ClientInstanceName="tbUsername" 
                                            Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="AdminName is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Username is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td rowspan="11">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lblPass2" runat="server" AssociatedControlID="tbPass1" 
                                            Text="Password:">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        <dx:ASPxTextBox ID="tbPass1" runat="server" ClientInstanceName="pass1" 
                                            Password="True" Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="Password is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Password is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lblConfPass2" runat="server" 
                                            AssociatedControlID="tbConfPass2" Text="Confirm password:">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        <dx:ASPxTextBox ID="tbConfPass2" runat="server" ClientInstanceName="pass2" 
                                            Password="True" Width="150px">
                                            <clientsideevents validation="function(s, e) { e.isValid = (pass1.GetText()==pass2.GetText()); }" />
<ClientSideEvents Validation="function(s, e) { e.isValid = (pass1.GetText()==pass2.GetText()); }"></ClientSideEvents>

                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortext="Password is incorrect" errortextposition="Bottom" 
                                                setfocusonerror="True" validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="Please, confirm your password" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Please, confirm your password"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" >
                                        <dx:ASPxLabel ID="lblEmail" runat="server" AssociatedControlID="tbEmail" 
                                            Text="Email:">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        <dx:ASPxTextBox ID="tbEmail" runat="server" Width="150px">
                                            <ValidationSettings EnableCustomValidation="True" ValidationGroup="createAccountGroup"
                                                SetFocusOnError="True" ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="True" ErrorText="E-mail is required" />
                                                <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                <ErrorFrameStyle Font-Size="10px">
                                                    <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </ErrorFrameStyle>

<RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.&#39;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="E-mail is required"></RequiredField>
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lbmobile" runat="server" AssociatedControlID="tbmobile" 
                                            Text="Mobile">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        <dx:ASPxTextBox ID="tbmobile" runat="server" Height="19px" Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                               
                                                <requiredfield errortext="mobile is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="mobile is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="dxflEmptyItem_Youthful">
                                        <dx:ASPxLabel ID="lbaddress" runat="server" AssociatedControlID="tbaddress" 
                                            Text="Address">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style2">
                                        <dx:ASPxTextBox ID="tbaddress" runat="server" Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                
                                                <requiredfield errortext="Address is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Address is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lbgender" runat="server" AssociatedControlID="tbGender" 
                                            Text="Gender">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        <dx:ASPxRadioButton ID="rbmale" runat="server" Text="Male">
                                        </dx:ASPxRadioButton>
                                        <dx:ASPxRadioButton ID="rbfemale" runat="server" Text="Female">
                                        </dx:ASPxRadioButton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <dx:ASPxLabel ID="lbcountry" runat="server" AssociatedControlID="tbcity" 
                                            Text="City">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <dx:ASPxComboBox ID="cmb_city" runat="server" AutoPostBack="True" Height="35px" 
                                                 IncrementalFilteringMode="Contains" NullText="---Select---" Theme="Metropolis" 
                                                 Width="170px" onselectedindexchanged="cmb_city_SelectedIndexChanged" >
                                             </dx:ASPxComboBox>
                                         </ContentTemplate>
                </asp:UpdatePanel>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                        <br />
                                        <dx:ASPxLabel ID="lbstate" runat="server" AssociatedControlID="tbarea" 
                                            Text="Area">
                                        </dx:ASPxLabel>
                                        <br />
                                    </td>
                                    <td class="style1">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxComboBox ID="cmb_area" runat="server" Height="35px" 
                                                IncrementalFilteringMode="Contains" NullText="---Select---" Theme="Metropolis" 
                                                Width="170px" onselectedindexchanged="cmb_area_SelectedIndexChanged" >
                                            </dx:ASPxComboBox>
                                        </ContentTemplate>
                </asp:UpdatePanel>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption">
                                    </td>
                                    <td class="style1">
                                      
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="pcmButton">
                                            <dx:ASPxButton ID="btCreate" runat="server" AutoPostBack="False" 
                                                style="float: left; margin-right: 8px" Text="OK" Width="80px" 
                                                OnClick="btCreate_Click">
                                                <clientsideevents click="function(s, e) {
    if(ASPxClientEdit.ValidateGroup('createAccountGroup')) {
        ASPxClientEdit.ClearGroup('entryGroup');
        tbLogin.SetText(tbUsername.GetText());
        pcCreateAccount.Hide();
    }
}" />
<ClientSideEvents Click="function(s, e) {
    if(ASPxClientEdit.ValidateGroup(&#39;createAccountGroup&#39;)) {
        ASPxClientEdit.ClearGroup(&#39;entryGroup&#39;);
        tbLogin.SetText(tbUsername.GetText());
        pcCreateAccount.Hide();
    }
}"></ClientSideEvents>
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="btCancel2" runat="server" AutoPostBack="False" 
                                                style="float: left; margin-right: 8px" Text="Cancel" Width="80px" 
                                                OnClick="btCancel2_Click">
                                                <clientsideevents click="function(s, e) { pcCreateAccount.Hide(); }" />
<ClientSideEvents Click="function(s, e) { pcCreateAccount.Hide(); }"></ClientSideEvents>
                                            </dx:ASPxButton>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxPanel>
            </dx:PopupControlContentControl>
            </ContentCollection> 
            </dx:ASPxPopupControl>
    
    </div>
    </form>
</body>
</html>
