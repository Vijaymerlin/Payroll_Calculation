<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="Payroll_appicaton.employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/site.css" />

    <%--<body>
        <form id="form1" runat="server">--%>
    <div class="col-md-8 col-md-offset-2">
        <div class="row" style="margin-top: 10px;">
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: black; color: white">
                    <strong>Insert Employees Information</strong>
                </div>

                <div class="panel-body">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Employee Name</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Employee Code</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtcode" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Job Title</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtjob" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Describtion</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtdescribtion" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Salary</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtsalary" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Duration</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtduration" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-md-4">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-danger" Font-Bold="false" OnClick="btnsubmit_Click" />
                        <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="btn btn-success" Font-Bold="false" OnClick="btnreset_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="col-md-8 col-md-offset-2">
        <div class="row" style="margin-top: 10px; color: #33CC33;">

            <div class="col-md-8">--%>
            <div class="d-flex p-2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999"
                    class="table table-bordered table-condensed table-responsive table-hover "
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataKeyNames="eId"
                    OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating"
                    OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="eId" HeaderText="Employee Id" ReadOnly="True" />
                    <asp:BoundField DataField="e_name" HeaderText="Employee Name" />
                    <asp:BoundField DataField="e_job" HeaderText="Job" />
                    <asp:BoundField DataField="e_code" HeaderText="Code" />
                    <asp:BoundField DataField="e_describtion" HeaderText="Describtion" />
                    <asp:BoundField DataField="e_salary" HeaderText="Salary" />
                    <asp:BoundField DataField="e_duration" HeaderText="Duration" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                    <ControlStyle BorderStyle="Solid"  CssClass="btn btn-success"  Height="40px" Width="75px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-danger"  BorderStyle="Solid" Height="40px" Width="75px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            </div>
       <%-- </div>
        </div>
    </div>--%>
</asp:Content>


