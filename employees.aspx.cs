using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Payroll_appicaton
{
    
    public partial class employees : System.Web.UI.Page
    {
        //string con = ConfigurationManager.ConnectionStrings["sqlserver"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlserver"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GVbind();
            }
        }
        void clear()
        {
            txtname.Text = "";
            txtcode.Text = "";
            txtdescribtion.Text = "";
            txtduration.Text = "";
            txtjob.Text = "";
            txtsalary.Text = "";
            
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //int eId = 0;
            try
            {

                //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlservercs"].ConnectionString);
                SqlCommand cmd_insert = new SqlCommand();
                cmd_insert.Parameters.Add(new SqlParameter("@e_name", txtname.Text));
                cmd_insert.Parameters.Add(new SqlParameter("@e_code", txtcode.Text));
                cmd_insert.Parameters.Add(new SqlParameter("@e_job", txtjob.Text));
                cmd_insert.Parameters.Add(new SqlParameter("@e_describtion", txtdescribtion.Text));
                cmd_insert.Parameters.Add(new SqlParameter("@e_salary", txtsalary.Text));
                cmd_insert.Parameters.Add(new SqlParameter("@e_duration", txtduration.Text));
                
                cmd_insert.CommandType = CommandType.StoredProcedure;
                cmd_insert.Connection = con;
                cmd_insert.CommandText = "e_employee_insert";

                SqlParameter rtnvalue = new SqlParameter("@eId", SqlDbType.Int);
                rtnvalue.Direction = ParameterDirection.ReturnValue;
                cmd_insert.Parameters.Add(rtnvalue);

                if (con.State == ConnectionState.Closed) { con.Open(); }
                try
                {
                    int t=cmd_insert.ExecuteNonQuery();
                    if(t > 0)
                    {
                        Response.Write("<script>alert('Data has been Submitted Successfully')</script>");
                        GVbind();
                    }
                    clear();
                }
                catch (Exception)
                {
                    throw;
                }
                finally { if (con.State == ConnectionState.Open) { con.Close(); } }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtcode.Text = "";
            txtdescribtion.Text = "";
            txtduration.Text = "";
            txtjob.Text = "";
            txtsalary.Text = "";
        }
        protected void GVbind()
        {
            try { 
            //using (SqlConnection con = new SqlConnection(con)) ;
            //con.Open();
            SqlCommand cmd = new SqlCommand("select * from e_employee", con);
                cmd.Connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind(); 
            }
            }
            catch (Exception)
            {
                throw;
            }
            finally { if (con.State == ConnectionState.Open) { con.Close(); } }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GVbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int eId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string e_name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string e_job = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string e_code = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string e_describtion = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string e_salary = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string e_duration = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlserver"].ConnectionString);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update e_employee set e_name='" + e_name + "',e_job='" + e_job + "',e_code='" + e_code + "',e_describtion='" + e_describtion + "',e_salary='" + e_salary + "',e_duration='" + e_duration + "' where eId='"+eId+"'",con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has been Updated')</script>");
                    GridView1.EditIndex = -1;
                    GVbind();
                }
                //try
                //{

                //    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlservercs"].ConnectionString);
                //    SqlCommand cmd_update = new SqlCommand();
                //    cmd_update.Parameters.Add(new SqlParameter("@eId", int.Parse(ViewState["eId"].ToString())));
                //    cmd_update.CommandType = CommandType.StoredProcedure;
                //    cmd_update.Connection = con;
                //    cmd_update.CommandText = "e_employee_update";

                //    SqlParameter rtnvalue = new SqlParameter("@eId", SqlDbType.Int);
                //    rtnvalue.Direction = ParameterDirection.ReturnValue;
                //    cmd_update.Parameters.Add(rtnvalue);

                //    if (con.State == ConnectionState.Closed) { con.Open(); }
                //    try
                //    {
                //        int t= cmd_update.ExecuteNonQuery();
                //        if (t > 0)
                //        {
                //            Response.Write("<script>alert('Data has been Updated')</script>");
                //            GridView1.EditIndex = -1;
                //            GVbind();
                //        }

                //    }
                //    catch (Exception)
                //    {
                //        throw;
                //    }
                //    finally { if (con.State == ConnectionState.Open) { con.Close(); } }
                //}
                //catch (Exception)
                //{
                //    throw;
                //}
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GVbind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int eId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlserver"].ConnectionString);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from e_employee where eId='" + eId + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has been Deleted')</script>");
                    GridView1.EditIndex = -1;
                    GVbind();
                }
            }
        }
    }
}