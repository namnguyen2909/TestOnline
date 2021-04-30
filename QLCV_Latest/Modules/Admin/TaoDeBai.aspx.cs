using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPanel.Commons;
using CPanel.Models;

namespace CPanel.Modules.Admin
{
    public partial class TaoDeBai : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                
                int intChuDeBaiThi;
                SessionForChuDeBaiThi objSessionForChuDeBaiThi = (SessionForChuDeBaiThi)Session[Commons.ConstValues.SESSION_CHUDEBAITHI];

                if((objSessionForChuDeBaiThi!=null) && (!String.IsNullOrEmpty(objSessionForChuDeBaiThi.ID_CHU_DE_BAI_THI)))
                {
                    intChuDeBaiThi = Convert.ToInt32(objSessionForChuDeBaiThi.ID_CHU_DE_BAI_THI);
                    Session[Commons.ConstValues.SESSION_CHUDEBAITHI] = null;

                    var objChuDeBT = entities.CHU_DE_BAI_THI.Find(intChuDeBaiThi);
                    if (objChuDeBT != null)
                        lblLoaiBT.Text = objChuDeBT.TEN_CHU_DE;
                }

                int mucdobaithi;
                SessionForMucDoBaiThi objSessionForMucDoBaiThi = (SessionForMucDoBaiThi)Session[Commons.ConstValues.SESSION_MUCDOBAITHI];
                if ((objSessionForMucDoBaiThi != null) && (!String.IsNullOrEmpty(objSessionForMucDoBaiThi.ID_MUC_DO_BAI_THI)))
                {
                    mucdobaithi = Convert.ToInt32(objSessionForMucDoBaiThi.ID_MUC_DO_BAI_THI);
                    Session[Commons.ConstValues.SESSION_MUCDOBAITHI] = null;

                    var objMucDoBT = entities.MUC_DO_BAI_THI.Find(mucdobaithi);
                    if(objMucDoBT != null)
                    {
                        lblMucDo.Text = objMucDoBT.TEN_MUC_DO;

                    }
                }
            }    
        }
        
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("/HomePage.aspx"));
        }

        
    }
}