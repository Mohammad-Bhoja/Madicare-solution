<%@ Page Title="" Language="C#" MasterPageFile="~/madicare/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Health.aspx.cs" Inherits="madicare_Admin_Health" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx1" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="background-color: #666633">
    
   
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
   
                            <br />
   
                            <table style="height: 600px; width: 600px; overflow: auto;">
                                <tr>
                                    <td rowspan="5">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="style2" align="right">
                                     
                                        <dx:ASPxLabel ID="lblUsername2" runat="server" AssociatedControlID="tbhealthname" 
                                            Text="Health Name">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style2" >
                                       
                                        <dx:ASPxTextBox ID="tbhealthname" runat="server"  
                                            Width="150px" ontextchanged="tbproductname_TextChanged">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="Health Name is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Helth Name is required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td rowspan="5">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="pcmCellCaption" align="right">
                                        <dx:ASPxLabel ID="lbaddress0" runat="server" AssociatedControlID="tbdescripton" 
                                            Text="Description">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style1">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
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
                     
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:Medicare %>" 
                         DeleteCommand="DELETE FROM [Health] WHERE [Health_Id] = @Health_Id" 
                         InsertCommand="INSERT INTO [Health] ( [Health_Name],[Description],[Image1],[Image2]) VALUES (@Health_Name, @Description,@Image1,@Image2)" 
                         SelectCommand="SELECT * FROM [Health]" 
                         UpdateCommand="UPDATE [Health] SET [Health_Name] = @Health_Name,  [Description] = @Description,[Image1] = @Image1,[Image2] = @Image2 WHERE [Health_Id] = @Health_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Health_Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Health_Name" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                            <asp:Parameter Name="Health_Name" Type="String" />
          
                             <asp:Parameter Name="Description" Type="String" />
                              
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                                     <asp:Parameter Name="Health_Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                    
                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                            DataSourceID="SqlDataSource1" KeyFieldName="Health_Id" Theme="Youthful">
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" 
                                                    ShowEditButton="True" VisibleIndex="0">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="Health_Id" ReadOnly="True" 
                                                    VisibleIndex="1">
                                                    <EditFormSettings Visible="False" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="health_Name" VisibleIndex="2">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3" 
                                                    Width="200px">
                                                    <PropertiesTextEdit Width="200px">
                                                    </PropertiesTextEdit>
                                                </dx:GridViewDataTextColumn>
                                               <dx:GridViewDataBinaryImageColumn  FieldName="Image1" VisibleIndex="4" 
                                                    Width="300px">
                                                   <PropertiesBinaryImage ImageHeight="300px" ImageWidth="300px">
                                                   </PropertiesBinaryImage>
                                                </dx:GridViewDataBinaryImageColumn> 
                                           <dx:GridViewDataBinaryImageColumn  FieldName="Image2" VisibleIndex="5" Width="300px">
                                               <PropertiesBinaryImage ImageHeight="300px" ImageWidth="300px">
                                               </PropertiesBinaryImage>
                                               </dx:GridViewDataBinaryImageColumn> 
                                            </Columns>
                                            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                        </dx:ASPxGridView>

                                            <br />
                                        </td>
                                </tr>
                                </table>
                      
     
    
    </div>
    
</asp:Content>


