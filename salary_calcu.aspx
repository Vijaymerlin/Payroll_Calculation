<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salary_calcu.aspx.cs" Inherits="Payroll_appicaton.salary_calcu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/site.css" />

    <div class="col-md-8 col-md-offset-2">
        <div class="row" style="margin-top: 10px;">
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: black; color: white">
                    <strong>Salary Calculation</strong>
                </div>


                <div class="panel-body">
                   <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Employee Name</label>
                            <div class="input-group">
                                <%--<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Month</label>
                            <div class="input-group">
                                <%--<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                                <%--<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>--%>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="160px">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>January</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>Abril</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>Augest</asp:ListItem>
                                    <asp:ListItem>September</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Year</label>
                            <div class="input-group">
                                <%--<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                                <%--<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>--%>
                                <asp:DropDownList ID="ddlYear" runat="server" Height="30px" Width="160px">

                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Hours</label>
                            <div class="input-group">
                                <%--<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                                <%--<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>--%>
                                <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="160px">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>1 hr</asp:ListItem>
                                    <asp:ListItem>2 hrs</asp:ListItem>
                                    <asp:ListItem>3 hrs</asp:ListItem>
                                    <asp:ListItem>4 hrs</asp:ListItem>
                                    <asp:ListItem>5 hrs</asp:ListItem>
                                    <asp:ListItem>6 hrs</asp:ListItem>
                                    <asp:ListItem>7 hrs</asp:ListItem>
                                    <asp:ListItem>8 hrs</asp:ListItem>
                                    <asp:ListItem>9 hrs</asp:ListItem>
                                    <asp:ListItem>10 hrs</asp:ListItem>
                                    <asp:ListItem>11 hrs</asp:ListItem>
                                    <asp:ListItem>12 hrs</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="nameField">Salary</label>
                            <div class="input-group">
                                <%--<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />

                   
                    <div class="col-md-4">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-danger" Font-Bold="false" OnClick="btnsubmit_Click"/>
                        <%--<asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="btn btn-success" Font-Bold="false" />--%>
                    </div>
                        
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8 col-md-offset-2">
    <div class="row" style="text-align:center">

        <label style="width:200px">Tax</label>
        :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
        </div>
    <div class="col-md-8 col-md-offset-2">
    <div class="row" style="text-align:center">

        <label style="width:200px">Final Salary</label>
        :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </div>
        </div>

</asp:Content>
