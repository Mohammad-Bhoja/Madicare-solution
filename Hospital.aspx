<%@ Page Title="" Language="C#" MasterPageFile="~/madicare/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Hospital.aspx.cs" Inherits="madicare_Admin_Hospital" %>
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
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #666633">
    
   
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
   
                            <br />
   
                            <br />
   
                            <table style="height: auto; width: auto; overflow: auto;">
                                <tr>
                                    <td rowspan="9">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="style2" align="right">
                                     
                                        <dx:ASPxLabel ID="lblUsername2" runat="server" AssociatedControlID="tbhospitalname" 
                                            Text="HospitalName">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style2" >
                                       
                                        <dx:ASPxTextBox ID="tbhospitaname" runat="server" ClientInstanceName="tbUsername" 
                                            Width="150px">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="Hospital Name is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Hospital Name is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td rowspan="9">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
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
                                    <td class="dxflEmptyItem_Youthful" align="right">
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
                                        <dx:ASPxLabel ID="lbcity" runat="server" AssociatedControlID="tbcity" 
                                            Text="City">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                      <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                   <ContentTemplate >
                        <dx:ASPxComboBox ID="cmb_city" runat="server" ValueType="System.String" 
                            Height="35px" Width="170px" AutoPostBack="True" 
                            IncrementalFilteringMode="Contains" NullText="---Select---" 
                            Theme="Metropolis" onselectedindexchanged="cmb_city_SelectedIndexChanged" 
                           ></dx:ASPxComboBox>
                 </ContentTemplate>
                </asp:UpdatePanel>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
                                        <dx:ASPxLabel ID="lbcity0" runat="server" AssociatedControlID="tbarea" 
                                            Text="Area">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate >    
                        <dx:ASPxComboBox ID="cmb_area" runat="server" ValueType="System.String" 
                            Height="35px" Width="170px" 
                            IncrementalFilteringMode="Contains" NullText="---Select---" Theme="Metropolis" 
                                            
                                            AutoPostBack="true" onselectedindexchanged="cmb_area_SelectedIndexChanged"></dx:ASPxComboBox>
                                            </ContentTemplate>
                </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" style="width: auto; height: auto" align="right">
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
               
               <%--<img id="Img" src="#" alt="Preview" width="100" height="100" />--%>
               
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
                                                DataSourceID="SqlDataSource1" KeyFieldName="Hospital_Id" Theme="Youthful">
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" 
                                                        ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Hospital_Id" ReadOnly="True" 
                                                        VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Hospital_Name" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Mobile" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="5">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Ctiy" VisibleIndex="6">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Area" VisibleIndex="7">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataImageColumn  FieldName="Image1" VisibleIndex="8">
                                                   </dx:GridViewDataImageColumn> 
                                                </Columns>
                                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  
                         DeleteCommand="DELETE FROM [Hospital] WHERE [Hospital_Id] = @Hospital_Id" 
                         InsertCommand="INSERT INTO [Hospital] ( [Hospital_Name], [Mobile], [Address],[Description],[City],[Area],[Image1]) VALUES (@Hospital_Name, @Mobile, @Address, @Description,@City,@Area,@Image1)" 
                         SelectCommand="SELECT * FROM [Hospital]" 
                         UpdateCommand="UPDATE [Hospital] SET [Hospital_Name] = @Hospital_Name, [Mobile] = @Mobile, [Address] = @Address, [Description] = @Description,[City] = @City,[Area] = @Area,[Image1] = @Image1 WHERE [Hospital_Id] = @Hospital_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Hospital_Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Hospital_Name" Type="String" />
                             <asp:Parameter Name="Email" Type="String" />
                             <asp:Parameter Name="Mobile" Type="String" />
                             <asp:Parameter Name="Address" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                               <asp:Parameter Name="City" Type="String" />
                                 <asp:Parameter Name="Area" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                 
                         </InsertParameters>
                         <UpdateParameters>
                            <asp:Parameter Name="Hospital_Name" Type="String" />
                             <asp:Parameter Name="Email" Type="String" />
                             <asp:Parameter Name="Mobile" Type="String" />
                             <asp:Parameter Name="Address" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                               <asp:Parameter Name="City" Type="String" />
                                 <asp:Parameter Name="Area" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                 
                                     <asp:Parameter Name="Hospital_Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                    
                                        </td>
                                </tr>
                                </table>
                      
     
    
    </div>
</asp:Content>

