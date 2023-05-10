<%@ Page Title="" Language="C#" MasterPageFile="~/madicare/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="madicare_Admin_ProductInfo" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="background-color: #666633">
    
   
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
   
                            <br />
   
                            <table style="height: 600px; width: 600px; overflow: auto;">
                                <tr>
                                    <td rowspan="6">
                                        <div class="pcmSideSpacer">
                                        </div>
                                    </td>
                                    <td class="style2" align="right">
                                     
                                        <dx:ASPxLabel ID="lbproductname" runat="server" AssociatedControlID="tbproductname" 
                                            Text="Product Name">
                                        </dx:ASPxLabel>
                                    </td>
                                    <td class="style2" >
                                       
                                        <dx:ASPxTextBox ID="tbproductname" runat="server" 
                                            Width="150px" ontextchanged="tbproductname_TextChanged">
                                            <validationsettings enablecustomvalidation="True" errordisplaymode="Text" 
                                                errortextposition="Bottom" setfocusonerror="True" 
                                                validationgroup="createAccountGroup">
                                                <errorframestyle font-size="10px">
                                                    <errortextpaddings paddingleft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                </errorframestyle>
                                                <requiredfield errortext="Product Name is required" isrequired="True" />

<RequiredField IsRequired="True" ErrorText="Product Nameis required"></RequiredField>
                                            </validationsettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td rowspan="6">
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
                                                style="float: left; margin-right: 8px; height: 25px;" Text="OK" 
                                                Width="80px" onclick="btCreate_Click" 
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
                         DeleteCommand="DELETE FROM [Product_Info] WHERE [Product_Id] = @Product_Id" 
                         InsertCommand="INSERT INTO [Product_Info] ( [Product_Name],[Description],[Image1],[Image2]) VALUES (@Product_Name, @Description,@Image1,@Image2)" 
                         SelectCommand="SELECT * FROM [Product_Info]" 
                         UpdateCommand="UPDATE [Product_Info] SET [Product_Name] = @Product_Name,  [Description] = @Description,[Image1] = @Image1,[Image2] = @Image2 WHERE [Product_Id] = @Product_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Product_Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Product_Name" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                            <asp:Parameter Name="Product_Name" Type="String" />
          
                             <asp:Parameter Name="Description" Type="String" />
                              
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                                     <asp:Parameter Name="Product_Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                    
                     

                                            <br />
                                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                DataSourceID="SqlDataSource1" KeyFieldName="Product_Id" Theme="Youthful">
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" 
                                                        ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Product_Id" ReadOnly="True" 
                                                        VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Product_Name" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Image1" VisibleIndex="4">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Image2" VisibleIndex="5">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                            </dx:ASPxGridView>
                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        &nbsp;</td>
                                </tr>
                            </table>
                      
     
    
    </div>
    
</asp:Content>

