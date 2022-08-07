<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-info" style="font-size: xx-large; color: #0000FF;">Registration Form</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                             <tr >
                            <td class="alert-danger">
                                User Name

                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtStudentId" class="form-control" placeholder="User Name" required  CssClass="form-control"/>
                            </td>
                             <td class="alert-danger">
                                Password 
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtStudentName" class="form-control" placeholder="Password" required CssClass="form-control"/>
                            </td>
                          
                            <td class="alert-danger">
                                <span>FiscalCode </span>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtFiscalCode" class="form-control" placeholder="FiscalCode" required CssClass="form-control"/>
                            </td>
                             <td class="alert-danger">
                                UserAddress

                            </td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtUserAddress" class="form-control" placeholder="UserAddress" required CssClass="form-control"/>
                            </td>
                          </tr>
                         <tr >
                            
                             <td class="alert-danger">
                               ProducedEnergy

                            </td>
                              <td>
                                 <asp:TextBox runat="server" ID="txtProducedEnergy" class="form-control" placeholder="ProducedEnergy" required CssClass="form-control"/>
                            </td>
                              <td class="alert-danger">
                               ConsumedEnergy

                            </td>
                             <td>
                                 <asp:TextBox runat="server" ID="txtConsumedEnergy" class="form-control" placeholder="ConsumedEnergy" required CssClass="form-control"/>
                            </td>
                             <td class="alert-danger">
                                UserType 
                            </td>
                            <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select UserType" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Consumer" Value="Consumer"></asp:ListItem>  
                            <asp:ListItem Text="Producer" Value="Producer"></asp:ListItem>  
                            <asp:ListItem Text="Prosumer" Value="Prosumer"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                            
                            <td>
                                <asp:Button Text="Add User" runat="server" ID="Button2" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                            </td>
                          
                           

                              </tr>
                       
                     
                             
                                                       
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="UserId" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:BoundField DataField="UserId" HeaderText="UserId" 
                      SortExpression="UserId" ReadOnly="True" InsertVisible="False" Visible="False"  />
                  <asp:BoundField DataField="UserName" HeaderText="User Name" 
                      SortExpression="UserName" />
                    <asp:BoundField DataField="Pwd" HeaderText="Password" SortExpression="Pwd" />
                  <asp:BoundField DataField="FiscalCode" HeaderText="FiscalCode" SortExpression="FiscalCode" />
                  <asp:BoundField DataField="UserAddress" HeaderText="UserAddress" SortExpression="UserAddress" />
                  <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                  <asp:BoundField DataField="ProducedEnergy" HeaderText="ProducedEnergy" SortExpression="ProducedEnergy" />
                  <asp:BoundField DataField="ConsumedEnergy" HeaderText="ConsumedEnergy" SortExpression="ConsumedEnergy" />
                   <asp:CommandField  ShowEditButton="True" EditText="Edit" DeleteText="Delete" UpdateText="Update" CancelText="Cancel" /> <asp:CommandField  ShowDeleteButton="True" DeleteText="Delete" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TradeConnectionString %>" 
                SelectCommand="SELECT * FROM [Users_Table] Where [Role]='Manager'" 
                DeleteCommand="DELETE FROM [Users_Table] WHERE [UserId] = @UserId" 
                UpdateCommand="UPDATE [Users_Table] SET [UserName] = @UserName, [Pwd] = @Pwd  WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pwd" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Pwd" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>

