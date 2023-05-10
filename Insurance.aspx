<%@ Page Title="" Language="C#" MasterPageFile="~/madicare/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Insurance.aspx.cs" Inherits="madicare_Admin_Insurance" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#filePhoto").change(function () {
        readURL(this);
    });
    </script>
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 32px;
        }
        .style3
        {
            height: 37px;
        }
        .style4
        {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="background-color: #666633">
    
   
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
   
                            <br />
   
                            <table style="height: 600px; width: 600px; overflow: auto;">
                                <tr>
                                    <td rowspan="7">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="style2" align="right">
                                     
                                        <dx:ASPxLabel ID="lblUsername2" runat="server" AssociatedControlID="tbcompanyname" 
                                            Text="Company Name">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style2" >
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate >
                                        <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" 
                                            onselectedindexchanged="ASPxComboBox2_SelectedIndexChanged">
                                            <Items>
                                                <dx:ListEditItem Text="Aviva India" Value="Aviva India" />
                                                <dx:ListEditItem Text="Bajaj Allianz Insurance" 
                                                    Value="Bajaj Allianz Insurance" />
                                                <dx:ListEditItem Text="Bharti  Axa Isurance" Value="Bharti  Axa Isurance" />
                                                <dx:ListEditItem Text="Brila Insurance" Value="Brila Insurance" />
                                                <dx:ListEditItem Text="Exide Insurance" Value="Exide Insurance" />
                                                <dx:ListEditItem Text="ICICI Lombard Insurance" 
                                                    Value="ICICI Lombard Insurance" />
                                                <dx:ListEditItem Text="HDFC Standard Insurance" 
                                                    Value="HDFC Standard Insurance" />
                                                <dx:ListEditItem Text="SBI Insurance" Value="SBI Insurance" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        </ContentTemplate> 
                                        </asp:UpdatePanel>
                                        </td>
                                    <td rowspan="7">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4" align="right">
                                        <dx:ASPxLabel ID="lbaddress1" runat="server" AssociatedControlID="tbinsurancetype" 
                                            Text="Insurance Type">
                                        </dx:ASPxLabel>
                                    </td>

                                    <td class="style4">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                   <ContentTemplate >
                                        <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" 
                                            onselectedindexchanged="ASPxComboBox1_SelectedIndexChanged">
                                            <Items>
                                                <dx:ListEditItem Text="Health " Value="Health " />
                                                <dx:ListEditItem Text="Motor" Value="Motor" />
                                                <dx:ListEditItem Text="Home" Value="Home" />
                                                <dx:ListEditItem Text="Personal Accident" Value="Personal Accident" />
                                                <dx:ListEditItem Text="Travel " Value="Travel " />
                                                <dx:ListEditItem Text="Commercial" Value="Commercial" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        </ContentTemplate> 
                                        </asp:UpdatePanel> 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        <dx:ASPxLabel ID="lbaddress0" runat="server" AssociatedControlID="tbdescripton" 
                                            Text="Description">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style3">
                                        <dx:ASPxTextBox ID="tbdescription" runat="server" Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                               
                                                
                                                <requiredfield errortext="Address is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Address is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
                                        <dx:ASPxLabel ID="lbcity1" runat="server" AssociatedControlID="tbarea" 
                                            Text="Images">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                       
                                         
    <br />
    <table style="width: 100%;">
        <tr>
            <td>
               
               
                <asp:FileUpload ID="FilePhoto" runat="server" CssClass="fileupload" onchange="readURL(this)" ValidateRequestMode="Enabled" />
               
                <br />

                 <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" onchange="readURL(this)" ValidateRequestMode="Enabled" />
               
               <%--<img id="Img1" src="#" alt="Preview" width="100" height="100" />--%>
            </td>
        </tr>
    </table>
&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
                                        &nbsp;</td>
                                    <td class="style1">
                                            <dx:ASPxButton ID="btCreate" runat="server" AutoPostBack="False" 
                                                style="float: left; margin-right: 8px" Text="OK" Width="80px" onclick="btCreate_Click" 
                                               >
                                              
 
                                            </dx:ASPxButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <dx:ASPxButton ID="btCancel2" runat="server" AutoPostBack="False" 
                                                style="float: left; margin-right: 8px" Text="Cancel" Width="80px" 
                                               >
                                               
                                            </dx:ASPxButton>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
                                        &nbsp;</td>
                                    <td class="style1">
                                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                DataSourceID="SqlDataSource1" KeyFieldName="Insurance_Id" Theme="Youthful">
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" 
                                                        ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Insurance_Id" ReadOnly="True" 
                                                        VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Company_Name" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Types" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="4">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataImageColumn  Width ="100" FieldName="Image1" VisibleIndex="5">
                                                    </dx:GridViewDataImageColumn> 
                                                    <dx:GridViewDataImageColumn  Width="100" FieldName="Image2" VisibleIndex="6">
                                                    </dx:GridViewDataImageColumn> 
                                                </Columns>
                                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                             
                        
                         DeleteCommand="DELETE FROM [Insurance] WHERE [Insurance_Id] = @Insurance_Id" 
                         InsertCommand="INSERT INTO [Insurance] ( [Company_Name],[Types],[Description],[Image1],[Image2]) VALUES (@Company_Name,@types, @Description,@Image1,@Image2)" 
                         SelectCommand="SELECT * FROM [Insurance]" 
                         UpdateCommand="UPDATE [Insurance] SET [Company_Name] = @Company_Name,[Types] = @Types,  [Description] = @Description,[Image1] = @Image1,[Image2] = @Image2 WHERE [Insurance_Id] = @Insurance_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Insurance_Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Company_Name" Type="String" />
                              <asp:Parameter Name="Types" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                            <asp:Parameter Name="Company_Name" Type="String" />
                            <asp:Parameter Name="Types" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                              
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                                     <asp:Parameter Name="Insurance_Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                    
                                        </td>
                               
                                   
                                </tr>
                            </table>
                      
     
    
    </div>
    
</asp:Content>




