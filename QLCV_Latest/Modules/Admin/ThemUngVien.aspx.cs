﻿using CPanel.Commons;
using CPanel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules.Admin
{
    public partial class ThemUngVien : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Commons.ATCL_Commons.getChuDe(drpViTri, entities);

                if (!String.IsNullOrEmpty((string)Session[ATCL_Consts.SESSION_OBJECT_ID]))
                {
                    txtObjectID.Text = Session[ATCL_Consts.SESSION_OBJECT_ID].ToString();
                    Session[ATCL_Consts.SESSION_OBJECT_ID] = null;
                }

                configFormatDateTime();

                getObject();
            }
        }

        public void getObject()
        {
            if (!String.IsNullOrEmpty(txtObjectID.Text))
            {
                int intObjectID = Convert.ToInt32(txtObjectID.Text);
                var uv = entities.UNG_VIEN.Where(x => x.ID == intObjectID).FirstOrDefault();
                if (uv != null)
                {
                    if (uv != null)
                    {
                        txtHoTen.Text = uv.HO_TEN;

                        txtEmail.Text = uv.EMAIL;

                        txtSDT.Text = uv.SO_DIEN_THOAI;

                        lblMaUV.Text = uv.MA_UNG_VIEN;

                        if (uv.NGAY_SINH != null)
                        {
                            dtNgaySinh.Text = ((DateTime)uv.NGAY_SINH).ToString(Commons.DateTimeType.DATE_FORMAT_DD_MM_YYYY);
                            dtNgaySinh.Value = ((DateTime)uv.NGAY_SINH).ToString(Commons.DateTimeType.DATE_FORMAT_DD_MM_YYYY);
                        }

                        if (uv.ID_CHU_DE_BAI_THI != null)
                            drpViTri.SelectedValue = uv.ID_CHU_DE_BAI_THI.ToString();
                    }
                }
            }
        }

        protected void configFormatDateTime()
        {
            dtNgaySinh.EditFormatString = Commons.DateTimeType.DATE_FORMAT_DD_MM_YYYY;
        }

        protected string saveObject()
        {
            try
            {
                UNG_VIEN uv = new UNG_VIEN();
                if (String.IsNullOrEmpty(txtObjectID.Text))
                {
                    uv.NGAY_TAO = DateTime.Now;
                    uv.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                    uv.TT_XOA = false;

                    entities.UNG_VIEN.Add(uv);
                }
                else
                {
                    int intObjID = Convert.ToInt32(txtObjectID.Text);
                    uv = entities.UNG_VIEN.Find(intObjID);
                }

                uv.HO_TEN = txtHoTen.Text;
                uv.EMAIL = txtEmail.Text;
                uv.SO_DIEN_THOAI = txtSDT.Text;
                if (!Commons.CommonFuncs.BLANK_ITEM_VALUE.Equals(drpViTri.SelectedValue))
                {
                    uv.ID_CHU_DE_BAI_THI = Convert.ToInt32(drpViTri.SelectedValue);
                }
                if (!String.IsNullOrEmpty(dtNgaySinh.Text))
                    uv.NGAY_SINH = DateTime.ParseExact(dtNgaySinh.Text, Commons.DateTimeType.DATE_FORMAT_DD_MM_YYYY, System.Globalization.CultureInfo.InvariantCulture);
                uv.MA_UNG_VIEN = lblMaUV.Text;
                uv.NGAY_SUA = DateTime.Now;
                uv.ID_NGUOI_SUA = (int)Commons.CheckUserInfo.GetUserId();

                entities.SaveChanges();

                return uv.ID.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnSaveUV_Click(object sender, EventArgs e)
        {
            string strReportID = saveObject();
            Response.Redirect(Commons.TitleConst.getTitleConst("XemUngVien.aspx"));
        }

        protected void showMessage(string strMessage)
        {
            DIV_MESSAGE.Visible = true;
            ltMessageContent.Text = strMessage;
        }

        protected void btlClosePopUp_Click(object sender, EventArgs e)
        {
            DIV_MESSAGE.Visible = false;
            redirectPage();
        }

        protected void redirectPage()
        {
            Session[ATCL_Consts.SESSION_HE_THONG_ID] = txtHeThongID.Text;
            Response.Redirect(Commons.TitleConst.getTitleConst("XemUngVien.aspx"));
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("XemUngVien.aspx"));
        }

        protected void drpViTri_SelectedIndexChanged(object sender, EventArgs e)
        {
            int intCountUV = entities.UNG_VIEN.ToList().Count;
            lblMaUV.Text = entities.CHU_DE_BAI_THI.Find(Convert.ToInt32(drpViTri.SelectedValue)).MA_CHU_DE + String.Format("{0:00000}", intCountUV) + DateTime.Now.ToString("yy");
        }
    }
}