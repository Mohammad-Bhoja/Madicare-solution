<%@ Page Title="" Language="C#" MasterPageFile="~/madicare/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="madicare_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.2, Version=13.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" 
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False" 
        KeyFieldName="Medicine_Id">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Medicine_Id" ReadOnly="True" 
                VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Medicine_Name" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Image1" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Image2" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                      
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         DeleteCommand="DELETE FROM [Medicine] WHERE [Medicine_Id] = @Medicine_Id" 
                         InsertCommand="INSERT INTO [Medicine] ( [Medicine_Name],[Description],[Image1],[Image2]) VALUES (@Medicine_Name, @Description,@Image1,@Image2)" 
                         SelectCommand="SELECT * FROM [Medicine]" 
                         UpdateCommand="UPDATE [Medicine] SET [Medicine_Name] = @Medicine_Name,  [Description] = @Description,[Image1] = @Image1,[Image2] = @Image2 WHERE [Medicine_Id] = @Medicine_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Medicine_Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Medicine_Name" Type="String" />
                             <asp:Parameter Name="Description" Type="String" />
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                            <asp:Parameter Name="Medicine_Name" Type="String" />
          
                             <asp:Parameter Name="Description" Type="String" />
                              
                                   <asp:Parameter Name="Image1" Type="String" />
                                     <asp:Parameter Name="Image2" Type="String" />
                                     <asp:Parameter Name="Medicine_Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                          

</asp:Content>

