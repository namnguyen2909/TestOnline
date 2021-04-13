﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPanel.Commons;
using CPanel.Models;


namespace CPanel.Modules
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        ATCLEntities entities = new ATCLEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
            }
        }
        protected bool validate()
        {            
            int intUserID = (int)CheckUserInfo.GetUserId();
            var obj = entities.TBL_NGUOI_DUNG.Where(x => x.Id == intUserID).FirstOrDefault();
            var md5OldPassword = Formats.GetMD5(txtOldPassword.Text);
            if (md5OldPassword != obj.Password)
            {
                Commons.ValidationFuncs.errorMessage_TimeDelay("Wrong password", Page);
                return false;
            }
            
            if (txtNewPassword.Text != txtRetypeNewPassword.Text)
            {
                Commons.ValidationFuncs.errorMessage_TimeDelay("Your Retype Password does not match", Page);
                return false;
            }

            return true;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (!validate())    
            {
                return;
            }

            TBL_NGUOI_DUNG objUser;
            int intUserID = (int)CheckUserInfo.GetUserId();
            objUser = entities.TBL_NGUOI_DUNG.Where(x => x.Id == intUserID).FirstOrDefault();
            objUser.Password = Formats.GetMD5(txtNewPassword.Text);

            entities.SaveChanges();

            Commons.ValidationFuncs.displayMessage_UpdateSuccessfully ("Password Changed!", Page);

            // sign out
            Session.Clear();
            //Response.Redirect("/SignIn.aspx");
        }
    }
}