using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPanel.Commons;
using DevExpress.Web;
using System.Web.UI.HtmlControls;
using CPanel.Models;
namespace CPanel
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        ATCLEntities entities = new ATCLEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btlClosePopUp_Click(object sender, EventArgs e)
        {
            DIV_MESSAGE.Visible = false;
            if (!String.IsNullOrEmpty(txtURL_ToRedirect.Text))
                Response.Redirect(txtURL_ToRedirect.Text);
        }
        public void showMessage(string strMessage, string strURL_ToRedirect)
        {
            DIV_MESSAGE.Visible = true;
            ltMessageContent.Text = strMessage;
            txtURL_ToRedirect.Text = strURL_ToRedirect;
        }

        /**
         * Close View Attachment file Window
         */
        protected void btlClosePopUp_ViewFile_Click(object sender, EventArgs e)
        {
            DIV_VIEW_FILE_POP_UP.Visible = false;
        }

        /**
         * View attachment file
         */
        protected void btnViewFile_Click(object sender, EventArgs e)
        {
            //int intFileID = Convert.ToInt32(txtFileID.Text);
            //string strResult = ATCL_UploadFilesCommons.displayOrDownloadFile(intFileID, Page, entities);
            //if (!String.IsNullOrEmpty(strResult))//Display File (Photo, PDF)
            //{
            //    DIV_VIEW_FILE_POP_UP.Visible = true;
            //    ltFileDisplay.Text = strResult;
            //}
            //else //Download file (Excel, DOC)
            //{

            //}
        }

    }
}