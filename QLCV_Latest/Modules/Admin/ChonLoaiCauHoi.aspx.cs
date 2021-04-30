using CPanel.Commons;
using CPanel.Models;
using CPanel.Models.Views;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.Data.Extensions;

namespace CPanel.Modules.QuanLyBaiThi
{
    public partial class ChonLoaiCauHoi : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Commons.TitleConst.setTitleConst_ASPxGridView(grvCauHoi);
            }
            getObjects();
        }

        public void getObjects()
        {
            var lstOpenReports = entities.CAU_HOI.Where(x => (x.TT_XOA == false))
                                 .Select(y => new CAU_HOI_VIEW()
                                 {
                                     ID = y.ID,
                                     NOI_DUNG_CAU_HOI = y.NOI_DUNG_CAU_HOI,
                                     ID_BAI_THI = y.ID_BAI_THI,
                                     ID_CHU_DE_BAI_THI = y.ID_CHU_DE_BAI_THI,
                                     ID_LOAI_CAU_HOI = y.ID_LOAI_CAU_HOI
                                 }).ToList();


            //var lstOpenReports = entities.CAU_HOI.Join(entities.CAU_HOI_MUC_DO, CH => CH.ID, CHMD => CHMD.ID_CAU_HOI, (CH, CHMD) => new { CH, CHMD })
            //                     .Where(x => (x.CH.TT_XOA == false))
            //                     .Select(y => new CAU_HOI_VIEW()
            //                     {
            //                         ID = y.CH.ID,
            //                         NOI_DUNG_CAU_HOI = y.CH.NOI_DUNG_CAU_HOI,
            //                         ID_BAI_THI = y.CH.ID_BAI_THI,
            //                         ID_CHU_DE_BAI_THI = y.CH.ID_CHU_DE_BAI_THI,
            //                         ID_LOAI_CAU_HOI = y.CH.ID_LOAI_CAU_HOI
            //                     }).ToList();


            //var lstOpenReports = entities.CAU_HOI.Join(entities.CAU_HOI_MUC_DO, CH => CH.ID, CHMD => CHMD.ID_CAU_HOI, (CH, CHMD) => new { CH, CHMD })
            //                     .Where(x => (x.CH.TT_XOA == false))
            //                     .Select(y => new CAU_HOI_VIEW()
            //                     {
            //                         ID = y.CHMD.ID,
            //                         NOI_DUNG_CAU_HOI = y.CH.NOI_DUNG_CAU_HOI,
            //                         ID_BAI_THI = y.CH.ID_BAI_THI,
            //                         ID_CHU_DE_BAI_THI = y.CH.ID_CHU_DE_BAI_THI,
            //                         ID_LOAI_CAU_HOI = y.CH.ID_LOAI_CAU_HOI
            //                     }).ToList();

            grvCauHoi.DataSource = lstOpenReports;
            grvCauHoi.DataBind();
        }

        protected void btnViewObject_Click(object sender, EventArgs e)
        {
            Session[ATCL_Consts.SESSION_OBJECT_ID] = txtObjectID.Text;
            int intObjectID = Convert.ToInt32(txtObjectID.Text);
            var objLoaiCH = entities.CAU_HOI.Where(x => x.ID == intObjectID).Select(x => x.ID_LOAI_CAU_HOI).FirstOrDefault();

            if (objLoaiCH == 1)
            {
                Response.Redirect(Commons.TitleConst.getTitleConst("/Modules/Admin/TaoCauHoiTN.aspx"));
            }

            if (objLoaiCH == 2)
            {
                Response.Redirect(Commons.TitleConst.getTitleConst("/Modules/Admin/TaoCauHoiTL.aspx"));
            }
            //Response.Redirect(Commons.TitleConst.getTitleConst("/Modules/Admin/TaoCauHoiTN.aspx"));
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
            var chmd = entities.CAU_HOI_MUC_DO.Where(x => x.ID_CAU_HOI == intObjectID).FirstOrDefault();
            if (chmd != null)
            {
                entities.CAU_HOI_MUC_DO.Remove(chmd);
                entities.SaveChanges();
            }

            var da = entities.DAP_AN.Where(x => x.ID_CAU_HOI == intObjectID).FirstOrDefault();
            if (da != null)
            {
                entities.DAP_AN.Remove(da);
                entities.SaveChanges();
            }

            var ch = entities.CAU_HOI.Find(intObjectID);
            if (ch != null)
            {
                entities.CAU_HOI.Remove(ch);
                entities.SaveChanges();
            }
            //refresh Gridview
            getObjects();

            //Close Popup
            DIV_MESSAGE.Visible = false;
            btnOK_DeleteObject.Visible = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("/HomePage.aspx"));
        }

        protected void btnTuLuan_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("TaoCauHoiTL.aspx"));
        }

        protected void btnTracNghiem_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("TaoCauHoiTN.aspx"));
        }

        protected void grvCauHoi_DataBinding(object sender, EventArgs e)
        {

        }
    }
}