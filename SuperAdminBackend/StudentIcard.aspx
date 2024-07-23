﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentIcard.aspx.cs" Inherits="SuperAdminBackend_StudentIcard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/1120310c44.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Philosopher&display=swap" rel="stylesheet">
  
</head>
<body>
    <form id="form1" runat="server">
   <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <asp:Button ID="btnSave" runat="server" Text="Generate PDF" OnClick="btnSave_Click" />
            </div>
        </div>
        <div class="row">
           
            <div class="col-6">
                <asp:Label ID="lblStudentName" runat="server"></asp:Label>
            </div>
           
           <div class="col-6">
                <asp:Label ID="lblStudentID" runat="server"></asp:Label>
            </div>
            <div class="col-6">
                <asp:Label ID="lblCenterName" runat="server"></asp:Label>
            </div>
            <div class="col-6">
                <asp:Label ID="lblDate1" runat="server"></asp:Label>
            </div>
            <div class="col-6">
                <asp:Label ID="lblDate2" runat="server"></asp:Label>
            </div>
          
            <div class="col-6">
                <asp:Label ID="imgStudentImg" runat="server" ></asp:Label>
            </div>
         
             <div class="col-6">
                <asp:Label ID="lblCourse" runat="server" ></asp:Label>
            </div>
            <div class="col-6">
                <asp:Label ID="lblCenterAddress" runat="server" ></asp:Label>
            </div>
        </div>
       </div>
    </form>
</body>
</html>
