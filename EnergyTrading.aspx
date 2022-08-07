
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="EnergyTrading.aspx.cs" Inherits="EnergyTrading" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .myddls {
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-collapse: collapse;
            border-image-outset: 0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(204, 204, 204);
            border-left-style: solid;
            border-left-width: 1px;
            border-right-color: rgb(204, 204, 204);
            border-right-style: solid;
            border-right-width: 1px;
            border-top-color: rgb(204, 204, 204);
            border-top-left-radius: 4px;
            border-top-right-radius: 0px;
            border-top-style: solid;
            border-top-width: 1px;
            box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
            box-sizing: border-box;
            color: rgb(85, 85, 85);
            cursor: default;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            height: 34px;
            letter-spacing: normal;
            line-height: normal;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
            max-width: 280px;
            overflow-x: visible;
            overflow-y: visible;
            padding-bottom: 6px;
            padding-left: 12px;
            padding-right: 12px;
            padding-top: 6px;
            text-align: start;
            text-indent: 0px;
            text-rendering: auto;
            text-shadow: none;
            text-transform: none;
            transition-delay: 0s, 0s;
            transition-duration: 0.15s, 0.15s;
            transition-property: border-color, box-shadow;
            transition-timing-function: ease-in-out, ease-in-out;
            vertical-align: middle;
            white-space: pre;
            width: 48px;
            word-spacing: 0px;
            writing-mode: horizontal-tb;
            -webkit-appearance: menulist-button;
            -webkit-rtl-ordering: logical;
        }
        .auto-style3 {
            height: 402px;
            margin-left: 319px;
        }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        
            <br />
            <div  style="background-image: url('Images/dvi.png'); background-repeat: no-repeat" class="auto-style3" >
            <br />
        </div>
            <div class="input-group">
                <div class="form-inline">              
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr  class="alert-danger" style="background-color: #99CCFF; font-family: Arial; font-size: large; font-weight: bold; color: #FFFFFF"> 
                            <td >
                                <span>Distance</span>
                            </td>                            
                            <td >
                                <span>Per_km_Price</span>
                            </td>                            
                            <td>
                            </td>                            
                            
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtDistance" class="form-control" placeholder="Distance" required  CssClass="form-control"/>
                            </td>   
                             <td>
                                <asp:TextBox runat="server" ID="txtPer_km_Price" class="form-control" placeholder="Per_km_Price" required  CssClass="form-control"/>
                            </td> 
                            
                            <td>
                                <asp:Button Text="Add Price" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="BtnAdd_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <br />
         
          <asp:GridView ID="GridView2" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="ppId" DataSourceID="LibraryDb" BorderColor="Black" BorderStyle="Solid">
              <Columns>
                 
                  <asp:BoundField DataField="ppId" HeaderText="ppId" 
                      SortExpression="ppId" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
                  <asp:BoundField DataField="Per_km_Price" HeaderText="Per_km_Price" SortExpression="Per_km_Price" />
                  
                  <asp:CommandField ShowEditButton="True" EditText="Edit" DeleteText="Delete" CancelText="Cancel" UpdateText="Update" /> <asp:CommandField  ShowDeleteButton="True"  DeleteText="Delete" />    
                   
              </Columns>
                 
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TradeConnectionString %>"                
                DeleteCommand="DELETE FROM [Price_Table] WHERE [ppId] = @ppId"                 
                UpdateCommand="UPDATE [Price_Table] SET [Distance] = @Distance ,[Per_km_Price] = @Per_km_Price WHERE [ppId] = @ppId">
                <DeleteParameters>
                    <asp:Parameter Name="ppId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Distance" Type="String" />
                    <asp:Parameter Name="Per_km_Price" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Distance" Type="String" />
                    <asp:Parameter Name="ppId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
    </center>
</asp:Content>

