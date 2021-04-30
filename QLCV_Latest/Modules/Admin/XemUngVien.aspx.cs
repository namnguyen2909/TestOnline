using CPanel.Commons;
using CPanel.Models;
using CPanel.Models.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules.Admin
{
    public partial class XemUngVien : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Commons.TitleConst.setTitleConst_ASPxGridView(grvObjects);
            }

            getObjects();
        }

        protected void grvObjects_DataBinding(object sender, EventArgs e)
        {

        }

        protected void getObjects()
        {
            var lstOpenReport = entities.UNG_VIEN.Where(x => (x.TT_XOA == false))
                                .Select(y => new UNG_VIEN_VIEW()
                                {
                                    ID = y.ID,
                                    HO_TEN = y.HO_TEN,
                                    NGAY_SINH = y.NGAY_SINH,
                                    SO_DIEN_THOAI = y.SO_DIEN_THOAI,
                                    EMAIL = y.EMAIL,
                                    ID_CHU_DE_BAI_THI = y.ID_CHU_DE_BAI_THI,
                                    ID_BAI_THI = y.ID_BAI_THI,
                                    TT_XOA = y.TT_XOA,
                                    MA_UNG_VIEN = y.MA_UNG_VIEN
                                }).ToList();
            grvObjects.DataSource = lstOpenReport;
            grvObjects.DataBind();


            var lstTest = entities.UNG_VIEN.Where(x => (x.TT_XOA == false)).Select(y => new UNG_VIEN_VIEW()
            {
                HO_TEN = y.HO_TEN
            }).ToList();
            ASPxGridView1.DataSource = lstTest;
            ASPxGridView1.DataBind();
        }

        protected void btnViewObject_Click(object sender, EventArgs e)
        {
            Session[ATCL_Consts.SESSION_OBJECT_ID] = txtObjectID.Text;
            Response.Redirect(Commons.TitleConst.getTitleConst("/Modules/Admin/ThemUngVien"));
        }

        protected int getObjectID()
        {
            return Convert.ToInt32(txtObjectID.Text);
        }

        protected void btlDeleteObject_Click(object sender, EventArgs e)
        {
            showMessage(Commons.TitleConst.getTitleConst("MSG_BAN_CO_CHAC_CHAN_XOA_KHONG"));

            //Open Popup
            btnOK_DeleteObject.Visible = true;
            DIV_MESSAGE.Visible = true;
        }

        protected void showMessage(string strMessage)
        {
            DIV_MESSAGE.Visible = true;
            ltMessageContent.Text = strMessage;
        }

        protected void btlClosePopUp_Message_Click(object sender, EventArgs e)
        {
            DIV_MESSAGE.Visible = false;
        }

        protected void btnOK_DeleteObject_Click(object sender, EventArgs e)
        {
            int intObjectID = Convert.ToInt32(txtObjectID.Text);
            var uv = entities.UNG_VIEN.Find(intObjectID);
            if (uv != null)
            {
                entities.UNG_VIEN.Remove(uv);
                entities.SaveChanges();
            }
            //refresh Gridview
            getObjects();

            //Close Popup
            DIV_MESSAGE.Visible = false;
            btnOK_DeleteObject.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("ThemUngVien.aspx"));
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("ChonBaiThi.aspx"));
        }

        protected void btnBack1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("/HomePage.aspx"));
        }

        protected void btnBack2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("/HomePage.aspx"));
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {

            SendEmail("namnguyen8616@gmail.com", "testo", "hihi");
        }
        public void SendEmail(string address, string subject, string message)
        {
            string email = "nammha291099@gmail.com";
            string password = "phamhanam291099";


            var loginInfo = new NetworkCredential(email, password);
            var msg = new MailMessage();
            var smtpClient = new SmtpClient("smtp.gmail.com", 587);


            msg.From = new MailAddress(email);
            msg.To.Add(new MailAddress(address));
            msg.Subject = subject;
            msg.Body = message;
            msg.IsBodyHtml = true;

            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = loginInfo;
            smtpClient.Send(msg);
        }

        protected void ASPxGridView1_DataBinding(object sender, EventArgs e)
        {
            BAI_THI_UNG_VIEN abc = new BAI_THI_UNG_VIEN();
            bool blquyen = false;
            int cbGuimail = CommonFuncs.NUMBER_INVALID_INTEGER;

            var listUVmail = entities.UNG_VIEN.Where(x => (x.ID == cbGuimail) && (blquyen)).Select(x => x.EMAIL).Distinct().ToList();

            ASPxGridView1.Selection.UnselectAll();
            foreach (var i in listUVmail)
            {
                ASPxGridView1.Selection.SetSelectionByKey(i, true);
                List<object> obj = ASPxGridView1.GetSelectedFieldValues("Id");


            }
            SendEmail("namnguyen8616@gmail.com", "testo", "hihi");
        }

        protected void ASPxCallback1_Callback(object source, DevExpress.Web.CallbackEventArgs e)
        {
            var isChecked = Convert.ToBoolean(e.Parameter);
            if (isChecked)
            {

            }
        }
    }
}