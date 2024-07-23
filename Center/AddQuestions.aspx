﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Center/CenterAdminMasterPage.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="Center_AddQuistions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <style>
       .rbl input[type="radio"]
{
   margin-left: 40px;
   margin-right: 10px;
}
   </style>
      <script type="text/javascript">
        function confirmDel() {
            return confirm("Are you sure to DELETE this?");
        }
    </script>
    <style>
        .rounded-corners {
  /*border: 1px solid black;*/
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
  overflow: hidden;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12">
                                        <p style="font-size:40px;">Add Question</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <p>Question</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <asp:TextBox ID="txtquestion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="row mt-4">
                                    <div class="col-6">
                                        <asp:TextBox ID="txtop1" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="txtop2" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row mt-4">
                                    <div class="col-6">
                                        <asp:TextBox ID="txtop3" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="txtop4" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                              
                                <div class="row mt-3">
                                     <div class="col-2">
                                        <div>Correct Answer:</div>
                                    </div>
                                    <div class="col-10">
                                        <asp:RadioButtonList ID="rbanswer" RepeatDirection="Horizontal" CssClass="rbl" runat="server">
                                            <asp:ListItem Text="Option A" Value="A"></asp:ListItem>
                                            <asp:ListItem Text="Option B" Value="B"></asp:ListItem>
                                            <asp:ListItem Text="Option C" Value="C"></asp:ListItem>
                                            <asp:ListItem Text="Option D" Value="D"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-2"></div>
                                    <div class="col-8">
                                       <asp:Button ID="btnadd" runat="server" CssClass="form-control btn btn-primary"  Text="Add Question +" OnClick="btnadd_Click"/>
                                    </div>
                                    <div class="col-2"></div>
                                </div>
                                
                                <div class="row mt-5">
                                    <div class="col-12 mt-5">
                                        <div style="width:99%; overflow:scroll;">
                                        <asp:GridView ID="gvaddquestion" runat="server" Width="100%" DataKeyNames="id" CellPadding="3" OnRowDeleting="gvaddquestion_RowDeleting"  
                                            AutoGenerateColumns="false" GridLines="None" CssClass="table rounded-corners" style= "-moz-border-radius: 25px;border-radius: 25px;" 
                                            HeaderStyle-CssClass="table-sm bg-dark" RowStyle-CssClass="bg-info" AlternatingRowStyle-CssClass="table-secondary">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="S.No.">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Question" DataField="Question"/>
                                                <asp:BoundField HeaderText="Option1" DataField="Option1" />
                                                <asp:BoundField HeaderText="Option2" DataField="Option2" />
                                                <asp:BoundField HeaderText="Option3" DataField="Option3" />
                                                <asp:BoundField HeaderText="Option4" DataField="Option4" />
                                                <asp:BoundField HeaderText="CorrectAnswer" DataField="CorrectAnswer" />
                                               <asp:TemplateField HeaderText="Edit">
                                                   <ItemTemplate>
                                                       <asp:HyperLink ID="hledit" CssClass="btn btn-success" runat="server" NavigateUrl='<%# "EditQuestions.aspx?ID=" + Eval("id")%>'><i class="fas fa-edit"></i></asp:HyperLink>
                                                   </ItemTemplate>    
                                               </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbdelete" runat="server" CssClass="btn btn-danger" CommandName="delete" OnClientClick="return confirmDel();"><i class="fas fa-trash"></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                            </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

   

  <!-- Modal -->
  <%--<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          
          <h4 class="modal-title">Edit Question</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                              
                                <div class="row">
                                    <div class="col-12">
                                        <p>Question</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <asp:TextBox ID="TextBox1" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="row mt-4">
                                    <div class="col-6">
                                        <asp:TextBox ID="TextBox2" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="TextBox3" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row mt-4">
                                    <div class="col-6">
                                        <asp:TextBox ID="TextBox4" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="TextBox5" placeholder="Enter Option" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                              
                                <div class="row mt-3">
                                     <div class="col-2">
                                        <div>Correct Answer:</div>
                                    </div>
                                    <div class="col-10">
                                        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" CssClass="rbl" runat="server">
                                            <asp:ListItem Text="Option A" Value="A"></asp:ListItem>
                                            <asp:ListItem Text="Option B" Value="B"></asp:ListItem>
                                            <asp:ListItem Text="Option C" Value="C"></asp:ListItem>
                                            <asp:ListItem Text="Option D" Value="D"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-2"></div>
                                    <div class="col-8">
                                        
                                    </div>
                                    <div class="col-2"></div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
        <div class="modal-footer">
           <asp:Button ID="btnupdate" runat="server" CssClass="form-control btn btn-warning"  Text="Update Question +" OnClick="btnupdate_Click"/>
        </div>
      </div>
      
    </div>
  </div>--%>
  
    <%--<script type='text/javascript'>
                function openModal() {
                    $('[id*=myModal]').modal('show');
                } 
            </script>--%>

</asp:Content>

