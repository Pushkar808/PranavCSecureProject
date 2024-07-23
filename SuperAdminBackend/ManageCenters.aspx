﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminBackend/SuperAdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageCenters.aspx.cs" Inherits="SuperAdminBackend_ManageCenters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
        .rounded-corners {
  border: 1px solid black;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
  overflow: hidden;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-12">
                                <h1 class="m-0">Center Verification</h1>
                            </div>
                            <!-- /.col -->

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <section class="content">
                    <div class="container-fluid">
                      
                        <!-- Small boxes (Stat box) -->
                        <div class="row">
                            <div class="col-12">
                                  <div id="MyModal" class="modal fade" role="dialog" runat="server">
        <div class="modal-dialog" runat="server">
            <div class="modal-content" runat="server">
                <div class="modal-header" runat="server">
                    <h4>Message</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                 </div>
                 <div class="modal-body" runat="server">Successfully Verified
                  </div>
                  <div class="modal-footer" runat="server">
                      <button type="button" class="btn btn-danger" data-dismiss="modal" runat="server">Close</button>
                 </div>
              </div>
          </div>
      </div>
                           
                                  <div id="RejectMessage" class="modal fade" runat="server">
        <div class="modal-dialog" runat="server">
            <div class="modal-content" runat="server">
                <div class="modal-header" runat="server">
                    <h4>Message</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     
                 </div>
                 <div class="modal-body" runat="server">
                     <div class="row">
                         <div class="col-12">
                             <h4>Successfully Request Rejected</h4>
                         </div>
                         <div class="col-6">
                             Reason to reject request
                         </div>
                         <div class="col-6">
                             <asp:HiddenField ID="hf" runat="server" />
                              <asp:TextBox ID="txtReason" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                     </div>
                    
                  </div>
                  <div class="modal-footer" runat="server">
                      <asp:Button runat="server" ID="btnOK" CssClass="btn btn-success" OnClick="btnOK_Click" Text="OK" />
                      <button type="button" class="btn btn-danger" data-dismiss="modal" runat="server">Close</button>
                 </div>
              </div>
          </div>
      </div>    
                            </div>
                            <div class="col-lg-9 col-md-9">
                                </div>

                            <div class="col-lg-3 col-md-3">

                                <a id="btnAdd" runat="server" class="btn btn-block btn-info" style="margin-top: 20px;" href="~/CenterRegister.aspx">Add New</a>
                            </div>
                           
                            <div class="col-lg-12 col-md-12 mt-3">
                                <div style="overflow: scroll; height:1500px;">
                                    <asp:GridView ID="gvCenter" runat="server" DataKeyNames="ID" AutoGenerateColumns="False" CssClass="table rounded-corners" 
                                        style= "-moz-border-radius: 25px;border-radius: 25px;" HeaderStyle-CssClass="bg-dark" RowStyle-CssClass="bg-info" 
                                        AlternatingRowStyle-CssClass="table-secondary" HeaderStyle-HorizontalAlign="Center" Width="100%" CellPadding="8" BorderStyle="Solid" 
                                        BorderWidth="2px" OnRowDataBound="gvCenter_RowDataBound" OnRowDeleting="gvCenter_RowDeleting">
                                     <AlternatingRowStyle CssClass="AltRowStyle" />
                                        <Columns>

                                            <asp:TemplateField HeaderText="Verify/Reject">
                                                <ItemTemplate>
                                                    <asp:DropDownList ID="ddlVerification" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlVerification_SelectedIndexChanged">
                                                        <asp:ListItem Text="Pending" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Accept" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Reject" Value="2"></asp:ListItem>
                                                    </asp:DropDownList>

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          
                                            
                                            <asp:BoundField HeaderText="Center ID" DataField="CenterID" />
                                            
                                            <asp:TemplateField HeaderText="Center Head Pic">
                                                <ItemTemplate>
                                                    <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("passportpic") %>' runat="server" ><asp:Image ID="imgPic" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("passportpic") %>' style="width:100px;height:100px;" /></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                          
                                            <asp:TemplateField HeaderText="Center Head Details" HeaderStyle-Width="50px" ControlStyle-Width="50px">
                                          <ItemTemplate>
                                              
                                              Name:-<%# Eval("PersonName") %><br />
                                              Email:-<%# Eval("Email") %><br />
                                              Phone Number:- <%# Eval("PhoneNumber") %><br />
                                              Signature:<br />
                                                <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("Signature") %>' runat="server" ><asp:Image ID="imgSignature" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("Signature") %>' style="width:75px;height:100px;" /></asp:HyperLink><br />
                                               Id-Proof:- <br /><asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("AadharCard") %>' runat="server" ><asp:Image ID="imgID" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("AadharCard") %>' style="width:65px;height:100px;" /></asp:HyperLink><br />
                                   Qualification certificate: <br />
                                    <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("Marksheet") %>' runat="server" ><asp:Image ID="imgMarksheet" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("Marksheet") %>' style="width:75px;height:100px;" /></asp:HyperLink>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Center Details">
                               <ItemTemplate>
                                   Center Name:-<%# Eval("InstituteName") %><br />
                                   Address:-<%# Eval("Address") %><br />
                                   Pin Code:-<%# Eval("PinCode") %><br />
                                   Total PCs:- <%# Eval("TotalPC") %><br />
                                   Total Staff:-<%# Eval("Staffs") %><br />
                                   Practical Lab:  <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("LabPicture") %>' runat="server" ><asp:Image ID="imgLab" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("LabPicture") %>' style="width:75px;height:100px;" /></asp:HyperLink><br />
                                                   Theory Room <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("TheoryRoomPic") %>' runat="server" ><asp:Image ID="imgTheory" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("TheoryRoomPic") %>' style="width:75px;height:100px;" /></asp:HyperLink><br />
                                                    Office Room <asp:HyperLink target="_blank" NavigateUrl='<%# "~/Center-Document/" + Eval("OfficePic") %>' runat="server" ><asp:Image ID="imgOfficePic" runat="server" ImageUrl='<%# "~/Center-Document/" + Eval("OfficePic") %>' style="width:75px;height:100px;" /></asp:HyperLink>
                                  
                               </ItemTemplate>
                           </asp:TemplateField>
                                            
                                            
                                        </Columns>
                                      <FooterStyle BackColor="#b5dedc" ForeColor="#3d8c3c" />
                                        <HeaderStyle HorizontalAlign="Center" BackColor="#e5e1fc" Font-Bold="True"
                                            ForeColor="#3d1d1d" BorderColor="#ddd"></HeaderStyle>
                                        <PagerStyle BackColor="#ddf2d8" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle VerticalAlign="Top" BackColor="#f5edfc" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#f0f9fc" />
                                     
                                    </asp:GridView>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
               
            </div>
            <script type="text/javascript">
        function openModal() {
            $('#ContentPlaceHolder1_MyModal').modal('show');
           }

        </script> 
             <script type="text/javascript">
                 function openRejectMessage() {
                     $('#ContentPlaceHolder1_RejectMessage').modal('show');
           }
        </script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

