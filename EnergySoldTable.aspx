
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="EnergySoldTable.aspx.cs" Inherits="EnergySoldTable" %>

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
     
        .auto-style1 {
            height: 677px;
        }
     
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
               
          <div  style="background-position: center center; background-image: url('Images/shaking-hands-ge30c9fe98_1920.jpg'); background-repeat: no-repeat" class="auto-style1"  >
                           
               <br />
        <div class="auto-style4">    
                    <h3 class="alert alert-info">EnergySoldTable</h3>  
            
         </div>       
            <asp:GridView ID="GridView3" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="TransactionId" DataSourceID="LibraryDb"   >
              <Columns>
                                            
                  <asp:BoundField DataField="TransactionId" HeaderText="TransactionId" 
                      SortExpression="TransactionId" ReadOnly="True" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="FiscalCode" HeaderText="FiscalCode" 
                      SortExpression="FiscalCode" />
                   <asp:BoundField DataField="timestamp" HeaderText="DatePurchase" 
                      SortExpression="timestamp" />
                 
                  <asp:BoundField DataField="ProducerName" HeaderText="ProducerName" 
                      SortExpression="ProducerName" />
                  <asp:BoundField DataField="Cost" HeaderText="Cost" 
                      SortExpression="Cost" FooterStyle-ForeColor="Black" HeaderStyle-VerticalAlign="Middle" />
                 
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TradeConnectionString %>" 
                SelectCommand="SELECT * FROM [EnergyS_Table]" 
                DeleteCommand="DELETE FROM [EnergyS_Table] WHERE [TransactionId] = @TransactionId" 
                InsertCommand="INSERT INTO [EnergyS_Table] ([Name],[ProducerId],[timestamp],[FiscalCode],[QuantityEnergy],[SelectDistance],[ProducerName],[Select_DM_Per_Km],[Cost]) VALUES (@Name,@ProducerId,@timestamp,@FiscalCode,@QuantityEnergy,@SelectDistance,@ProducerName,@Select_DM_Per_Km,@Cost)" 
                UpdateCommand="UPDATE [EnergyS_Table] SET [Name] = @Name,  [timestamp] = @timestamp, [ProducerId] = @ProducerId, [FiscalCode] = @FiscalCode, [QuantityEnergy] = @QuantityEnergy, [SelectDistance] = @SelectDistance, [ProducerName] = @ProducerName, [Select_DM_Per_Km] = @Select_DM_Per_Km, [Cost] = @Cost WHERE [TransactionId] = @TransactionId" >
                <DeleteParameters>
                    <asp:Parameter Name="TransactionId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="ProducerId" Type="Int32" />
                     
                    <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="FiscalCode" Type="String" />
                    <asp:Parameter Name="QuantityEnergy" Type="String" />
                    <asp:Parameter Name="SelectDistance" Type="String" />
                    <asp:Parameter Name="ProducerName" Type="String" />
                    <asp:Parameter Name="Select_DM_Per_Km" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                   
                     <asp:Parameter Name="ProducerId" Type="Int32" />
                   <asp:Parameter Name="timestamp" Type="DateTime" />
                    <asp:Parameter Name="FiscalCode" Type="String" />
                    <asp:Parameter Name="QuantityEnergy" Type="String" />
                    <asp:Parameter Name="SelectDistance" Type="String" />
                    <asp:Parameter Name="ProducerName" Type="String" />
                    <asp:Parameter Name="Select_DM_Per_Km" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="TransactionId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
          </div>
    </center>
</asp:Content>


