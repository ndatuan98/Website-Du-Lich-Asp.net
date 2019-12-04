using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using AspWebDuLich.DTO;
namespace AspWebDuLich.Controllers
{
    public class AccountController
    {
        ConnectDB connectDB = new ConnectDB();
        public void Update(int userId,string email, string fullname, string pass, string phone, string dateOfBirth, string Address)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlUpdate = "UPDATE dbo.ACCOUNT SET EMAIL=@email,FULLNAME = @fullname, PASS = @pass, " +
                        "PHONE = @phone, DATE_OF_BIRTH = @date_of_birth, ADDRESS = @address WHERE ID =" + userId;
            SqlCommand cmd =  new SqlCommand(sqlUpdate, conn);
            cmd.Parameters.AddWithValue("@Email",email);
            cmd.Parameters.AddWithValue("@FullName", fullname);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@date_of_birth", dateOfBirth);
            cmd.Parameters.AddWithValue("@address", Address);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void CreateAccount(int userId, string email, string fullname, string pass, string phone, string dateOfBirth, string Address)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlInsert = "INSERT INTO dbo.ACCOUNT  ( ID ,EMAIL ,FULLNAME , PASS ,PHONE ,DATE_OF_BIRTH ,ADDRESS)" +
                            " VALUES  ( @ID,@Email,@FullName,@Pass,@Phone, @DateOfBirth, @address )";
            SqlCommand cmd = new SqlCommand(sqlInsert, conn);
            cmd.Parameters.AddWithValue("@ID", userId);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@FullName", fullname);
            cmd.Parameters.AddWithValue("@Pass", pass);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
            cmd.Parameters.AddWithValue("@address", Address);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void DeleteAccount(int userId)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlDelete = "DELETE  FROM dbo.ACCOUNT WHERE ID=@id";
            SqlCommand cmd = new SqlCommand(sqlDelete, conn);
            cmd.Parameters.AddWithValue("@id", userId);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}