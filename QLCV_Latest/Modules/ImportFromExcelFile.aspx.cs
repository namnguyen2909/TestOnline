using CPanel.Commons;
using CPanel.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules
{
    public partial class ImportFromExcelFile : System.Web.UI.Page
    {
        private ATCLEntities entities = new ATCLEntities();
        const int MAX_COLUMN = 56;
        string[] arrColName = new string[MAX_COLUMN];
        int[] arrRuleValue = new int[MAX_COLUMN];
        int[] arrIDMenuValue = new int[MAX_COLUMN];

        string strDefaultPass = "aits@412";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public DataTable funcReadExcelFile(FileUpload fileUpload, string isHDR, int intSheet, HttpServerUtility Server)
        {
            if (fileUpload.HasFile)
            {
                string FileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string Extension = Path.GetExtension(fileUpload.PostedFile.FileName);
                string FolderPath = ConfigurationManager.AppSettings["FolderPath"];

                string FilePath = Server.MapPath(FolderPath + FileName);

                fileUpload.SaveAs(FilePath);

                string conStr = "";
                switch (Extension)
                {
                    case ".xls": //Excel 97-03
                        conStr = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                        break;
                    case ".xlsx": //Excel 07
                        conStr = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
                        break;
                }
                conStr = String.Format(conStr, FilePath, isHDR);
                OleDbConnection connExcel = new OleDbConnection(conStr);
                OleDbCommand cmdExcel = new OleDbCommand();
                OleDbDataAdapter oda = new OleDbDataAdapter();
                DataTable dt = new DataTable();
                cmdExcel.Connection = connExcel;

                //Get the name of First Sheet
                connExcel.Open();
                DataTable dtExcelSchema;
                dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                //string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                string SheetName = "";


                /*if (cbQuyenRule.Checked)
                {
                    SheetName = "MENU_RULE$";//Must have the character "$" after Sheetname
                }
                else if (cbQuyenUser.Checked)
                {
                    
                }*/
                
                //SheetName = "USERS$";//Must have the character "$" after Sheetname
                //SheetName = "PLHD$";
                SheetName = "HE_THONG$";
                
                connExcel.Close();

                //Read Data from First Sheet
                connExcel.Open();
                cmdExcel.CommandText = "SELECT * From [" + SheetName + "]";
                oda.SelectCommand = cmdExcel;
                oda.Fill(dt);
                connExcel.Close();

                //Bind Data to GridView
                return dt;

            }
            else
            {
                return null;
            }

        }

        

        public string RemoveUnicode1(string text)
        {
            string[] arr1 = new string[] { "á", "à", "ả", "ã", "ạ", "â", "ấ", "ầ", "ẩ", "ẫ", "ậ", "ă", "ắ", "ằ", "ẳ", "ẵ", "ặ",  
            "đ",  
            "é","è","ẻ","ẽ","ẹ","ê","ế","ề","ể","ễ","ệ",  
            "í","ì","ỉ","ĩ","ị",  
            "ó","ò","ỏ","õ","ọ","ô","ố","ồ","ổ","ỗ","ộ","ơ","ớ","ờ","ở","ỡ","ợ",  
            "ú","ù","ủ","ũ","ụ","ư","ứ","ừ","ử","ữ","ự",  
            "ý","ỳ","ỷ","ỹ","ỵ",};
                    string[] arr2 = new string[] { "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",  
            "d",  
            "e","e","e","e","e","e","e","e","e","e","e",  
            "i","i","i","i","i",  
            "o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",  
            "u","u","u","u","u","u","u","u","u","u","u",  
            "y","y","y","y","y",};
            for (int i = 0; i < arr1.Length; i++)
            {
                text = text.Replace(arr1[i], arr2[i]);
                text = text.Replace(arr1[i].ToUpper(), arr2[i].ToUpper());
            }
            return text;
        }

        protected void insertDS_Quyen_Rule(DataTable dt)
        {            
            int i = 0, j=0;

            
        }

        public void insertParentItems(int intIDMenu_Child, int intIDMenu_Parent, int intTemp_IDRuleValue, DataRow row)
        {
            ////Insert Child Menu into DB
            //Menu_Quyen objVaiTroMenu = new Menu_Quyen();
            //if (entities.Menu_Quyen.Count() > 0) objVaiTroMenu.ID = entities.Menu_Quyen.Max(x => x.ID) + 1;
            //else objVaiTroMenu.ID = 1;
            //objVaiTroMenu.ID_QUYEN = Convert.ToInt32(row[arrColName[1]].ToString().Trim());
            //objVaiTroMenu.ID_MENU = intIDMenu_Child;
            //entities.Menu_Quyen.Add(objVaiTroMenu);
            //entities.SaveChanges();

            ////Insert Parent Menu into DB
            //intIDMenu_Parent = entities.Menus.Find(intIDMenu_Child).ID_CHA;
            //if (intIDMenu_Parent > 0)
            //{
            //    Menu_Quyen objVaiTroMenu_Parent = new Menu_Quyen();
            //    if (entities.Menu_Quyen.Count() > 0) objVaiTroMenu_Parent.ID = entities.Menu_Quyen.Max(x => x.ID) + 1;
            //    else objVaiTroMenu_Parent.ID = 1;
            //    objVaiTroMenu_Parent.ID_QUYEN = Convert.ToInt32(row[arrColName[1]].ToString().Trim());
            //    objVaiTroMenu_Parent.ID_MENU = intIDMenu_Parent;
            //    entities.Menu_Quyen.Add(objVaiTroMenu_Parent);
            //    entities.SaveChanges();
            //}

            ////Insert Parent Rule into DB
            //DS_Quyen_Rule objQuyenRule = new DS_Quyen_Rule();
            //if (entities.DS_Quyen_Rule.Count() > 0) objQuyenRule.ID = entities.DS_Quyen_Rule.Max(x => x.ID) + 1;
            //else objQuyenRule.ID = 1;

            //objQuyenRule.ID_QUYEN = Convert.ToInt32(row[arrColName[1]].ToString().Trim());
            //objQuyenRule.ID_RULE = entities.DS_Rule.Find(intTemp_IDRuleValue).ID_PARENT;
            //entities.DS_Quyen_Rule.Add(objQuyenRule);
            //entities.SaveChanges(); 
        }

        protected void insert_TBL_NGUOI_DUNG(DataTable dt)
        {
            foreach (DataRow row in dt.Rows)
            {
                //Add User
                TBL_NGUOI_DUNG objUserLogin = new TBL_NGUOI_DUNG();
                objUserLogin.UserName = row["USER_NAME"].ToString().Trim();
                objUserLogin.FullName = row["HO_VA_TEN"].ToString().Trim();
                objUserLogin.Email = row["EMAIL"].ToString().Trim();
                objUserLogin.Tel = row["DIEN_THOAI"].ToString().Trim();
                objUserLogin.Password = Formats.GetMD5(strDefaultPass);
                objUserLogin.isEnabled = true;
                entities.TBL_NGUOI_DUNG.Add(objUserLogin);
                entities.SaveChanges();

                //Assign to Department
                TBL_NGUOI_DUNG_PHONG_BAN objDept = new TBL_NGUOI_DUNG_PHONG_BAN();
                objDept.UserID = objUserLogin.Id;
                objDept.DepartmentID = 1;//1: Phong PTSPDVPM
                objDept.isDeleted = false;
                entities.TBL_NGUOI_DUNG_PHONG_BAN.Add(objDept);
                entities.SaveChanges();


            }

            
        }

        protected void insert_TBL_HE_THONG (DataTable dt)
        {
            string strPLHD = "", strHopDongID = "";
            
            foreach (DataRow row in dt.Rows)
            {
                strHopDongID = "";
               
                //Add Hop dong
                strPLHD = row["PLHD"].ToString().Trim();
                var objSearch = entities.TBL_HOP_DONG.Where(x => strPLHD.Equals(x.MA_HOP_DONG)).FirstOrDefault();
                if (objSearch != null)//Check duplicate
                {
                    strHopDongID = objSearch.ID.ToString();
                }

                //Add He Thong
                TBL_HE_THONG obj = new TBL_HE_THONG();
                obj.MA_HE_THONG = row["MA_HE_THONG"].ToString().Trim();
                obj.TEN = row["MO_TA_HE_THONG"].ToString().Trim();
                obj.MO_TA = row["MO_TA_HE_THONG"].ToString().Trim();
                obj.TT_XOA = false;
                obj.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                obj.NGAY_TAO = DateTime.Now;

                if (!String.IsNullOrEmpty(strHopDongID))
                    obj.ID_HOP_DONG = Convert.ToInt32(strHopDongID);

                entities.TBL_HE_THONG.Add(obj);

                //Save Change
                entities.SaveChanges();

            }
        }

        protected void insert_TBL_HOP_DONG(DataTable dt)
        {
            string strPLHD = "";
            foreach (DataRow row in dt.Rows)
            {
                strPLHD = row["PLHD"].ToString().Trim();
                var objSearch = entities.TBL_HOP_DONG.Where(x => strPLHD.Equals(x.MA_HOP_DONG)).FirstOrDefault();
                if (objSearch == null)//Check duplicate
                {
                    //Add User
                    TBL_HOP_DONG obj = new TBL_HOP_DONG();
                    obj.MA_HOP_DONG = strPLHD;
                    obj.TEN = strPLHD;
                    obj.MO_TA = strPLHD;
                    obj.TT_XOA = false;
                    obj.ID_NGUOI_TAO = (int)Commons.CheckUserInfo.GetUserId();
                    obj.NGAY_TAO = DateTime.Now;

                    entities.TBL_HOP_DONG.Add(obj);
                    entities.SaveChanges();
                }
            }
        }

        protected void BtImport_SoTaiKhoan_Click(object sender, EventArgs e)
        {   
            DataTable dt = funcReadExcelFile(FileUpload_SoTaiKhoan, "Yes", 0, Server);
            if (dt != null)
            {
                //Import TBL_NGUOI_DUNG_QUYEN
                //if (cbQuyenUser.Checked)
                //{                    
                    
                //}

                //insert_TBL_NGUOI_DUNG(dt);
                //insert_TBL_HOP_DONG(dt);
                insert_TBL_HE_THONG(dt);
                
                lbMessage.Text = "Update Successfully";
            }
        }
    }
}