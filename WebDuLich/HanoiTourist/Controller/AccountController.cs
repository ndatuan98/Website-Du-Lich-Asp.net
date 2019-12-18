using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using HanoiTourist.DTO;
using System.Security.Cryptography;

namespace HanoiTourist.Controllers
{
    public class AccountController
    {
        ConnectDB connectDB = new ConnectDB();
        public string EncodeMD5(string pass)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(pass);
            bs = md5.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x1").ToLower());
            }
            pass = s.ToString();
            return pass;
        }
        public int Login(string email, string pass)
        {
            string cmd = "SELECT * FROM dbo.ACCOUNT where EMAIL = '" + email + "' AND PASS='"+ EncodeMD5(pass)+ "' AND IS_ADMIN = 1";
            DataTable dt = connectDB.getTable(cmd);
            if (dt.Rows.Count > 0)
                return 1;
            else
            {
                cmd = "SELECT * FROM dbo.ACCOUNT where EMAIL = '" + email + "' AND PASS='" + EncodeMD5(pass) + "' AND IS_ADMIN = 0";
                dt = connectDB.getTable(cmd);
                if (dt.Rows.Count > 0)
                    return 0;
                else
                {
                    return -1;
                }
            }
        }
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
        public void CreateAccount( string email, string fullname, string pass, string phone, string dateOfBirth, string Address)
        {
            SqlConnection conn = connectDB.getConnection();
            string sqlInsert = "INSERT INTO dbo.ACCOUNT  ( EMAIL ,FULLNAME , PASS ,PHONE ,DATE_OF_BIRTH ,ADDRESS)" +
                            " VALUES  ( @Email,@FullName,@Pass,@Phone, @DateOfBirth, @address )";
            SqlCommand cmd = new SqlCommand(sqlInsert, conn);
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