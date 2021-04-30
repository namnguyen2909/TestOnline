using CPanel.Commons;
using CPanel.Models;
using CPanel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules.QuanLyBaiThi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Commons.ATCL_Commons.getChuDe(drpMenus, entities);

                getObjects();
            }

            if (!IsPostBack)
            {
                Commons.ATCL_Commons.getMucDoBaiThi(DropDownList1, entities);

                getMucDoBaiThi();
            }

        }

        public void getObjects()
        {
            if (!String.IsNullOrEmpty(txtObjectID.Text))
            {
                int intObjectID = Convert.ToInt32(txtObjectID.Text);
                var obj = entities.BAI_THI.Where(x => x.ID == intObjectID).FirstOrDefault();
                if (obj != null)
                {
                    if (obj.ID != null)
                        drpMenus.SelectedValue = obj.ID.ToString();
                }
            }

        }
        public void getMucDoBaiThi()
        {
            if (!String.IsNullOrEmpty(txtObjectID.Text))
            {
                int intObjectID = Convert.ToInt32(txtObjectID.Text);
                var obj = entities.MUC_DO_BAI_THI.Where(x => x.ID == intObjectID).FirstOrDefault();
                if (obj != null)
                {
                    if (obj.ID != null)
                        DropDownList1.SelectedValue = obj.ID.ToString();
                }
            }
        }

        protected string saveObject()
        {
            try
            {
                BAI_THI obj = new BAI_THI();
                MUC_DO_BAI_THI objMD = new MUC_DO_BAI_THI();


                if (String.IsNullOrEmpty(txtObjectID.Text)) //Create new item
                {
                    obj.NGAY_TAO = DateTime.Now;
                    obj.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                    obj.TT_XOA = false;

                    entities.BAI_THI.Add(obj);
                }
                else //Edit the item
                {
                    int intObjID = Convert.ToInt32(txtObjectID.Text);
                    obj = entities.BAI_THI.Find(intObjID);
                }


                obj.THOI_GIAN = TimeSpan.Parse(txtThoiGianThi.Text);

                CAU_HINH_BAI_THI objTN = new CAU_HINH_BAI_THI();
                if (String.IsNullOrEmpty(txtObjectID.Text)) //Create new item
                {
                    objTN.NGAY_TAO = DateTime.Now;
                    objTN.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                    objTN.TT_XOA = false;

                    entities.CAU_HINH_BAI_THI.Add(objTN);
                }
                else //Edit the item
                {
                    int intObjID = Convert.ToInt32(txtObjectID.Text);
                    objTN = entities.CAU_HINH_BAI_THI.Find(intObjID);
                }

                if (!Commons.CommonFuncs.BLANK_ITEM_VALUE.Equals(drpMenus.SelectedValue))
                {
                    obj.ID_CHU_DE_BAI_THI = Convert.ToInt32(drpMenus.SelectedValue);
                }

                if (!Commons.CommonFuncs.BLANK_ITEM_VALUE.Equals(DropDownList1.SelectedValue))
                {
                    obj.ID_MUC_DO_BAI_THI = Convert.ToInt32(DropDownList1.SelectedValue);
                }

                objTN.ID_BAI_THI = obj.ID;

                objTN.SO_LUONG_CAU_DE = txtSoLuongCauHoiDeTN.Text;
                objTN.SO_LUONG_CAU_TB = txtSoLuongCauHoiTrungBinhTN.Text;
                objTN.SO_LUONG_CAU_KHO = txtSoLuongCauHoiKhoTN.Text;

                if (!(String.IsNullOrEmpty((txtSoLuongCauHoiDeTN.Text))) || !(String.IsNullOrEmpty((txtSoLuongCauHoiTrungBinhTN.Text)))
                    || !(String.IsNullOrEmpty((txtSoLuongCauHoiKhoTN.Text))))
                {
                    objTN.ID_LOAI_CAU_HOI = 1;
                }


                CAU_HINH_BAI_THI objTL = new CAU_HINH_BAI_THI();
                if (String.IsNullOrEmpty(txtObjectID.Text)) //Create new item
                {
                    objTL.NGAY_TAO = DateTime.Now;
                    objTL.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                    objTL.TT_XOA = false;

                    entities.CAU_HINH_BAI_THI.Add(objTL);
                }
                else //Edit the item
                {
                    int intObjID = Convert.ToInt32(txtObjectID.Text);
                    objTL = entities.CAU_HINH_BAI_THI.Find(intObjID);
                }

                objTL.ID_BAI_THI = obj.ID;

                objTL.SO_LUONG_CAU_DE = txtSoLuongCauHoiDeTL.Text;
                objTL.SO_LUONG_CAU_TB = txtSoLuongCauHoiTrungBinhTL.Text;
                objTL.SO_LUONG_CAU_KHO = txtSoLuongCauHoiKhoTL.Text;

                if (!(String.IsNullOrEmpty((txtSoLuongCauHoiDeTL.Text))) || !(String.IsNullOrEmpty((txtSoLuongCauHoiTrungBinhTL.Text)))
                    || !(String.IsNullOrEmpty((txtSoLuongCauHoiKhoTL.Text))))
                {
                    objTL.ID_LOAI_CAU_HOI = 2;
                }



                entities.SaveChanges();

                return objTN.ID.ToString();

            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            string strReportID = saveObject();
            setSessionForChuDeBaiThi();
            setSessionForMucDoBaiThi();
            Response.Redirect(Commons.TitleConst.getTitleConst("TaoDeBai.aspx"));
            //showMessage(Commons.TitleConst.getTitleConst("MSG_INSERT_SUCCESFULLY"));
        }
        //protected void showMessage(string strMessage)
        //{
        //    DIV_MESSAGE.Visible = true;
        //    ltMessageContent.Text = strMessage;
        //}
        protected void setSessionForChuDeBaiThi()
        {
             SessionForChuDeBaiThi objSessionForChuDeBaiThi = new SessionForChuDeBaiThi();
             objSessionForChuDeBaiThi.ID_CHU_DE_BAI_THI = drpMenus.SelectedValue;
             Session[Commons.ConstValues.SESSION_CHUDEBAITHI] = objSessionForChuDeBaiThi;
            

        }
        protected void setSessionForMucDoBaiThi()
        {
            SessionForMucDoBaiThi objSessionForMucDoBaiThi = new SessionForMucDoBaiThi();
            objSessionForMucDoBaiThi.ID_MUC_DO_BAI_THI = DropDownList1.SelectedValue;
            Session[Commons.ConstValues.SESSION_MUCDOBAITHI] = objSessionForMucDoBaiThi;
        }
    }
}