using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CPanel.Models.Views
{
    public class CAU_HOI_VIEW : CAU_HOI
    {
        private string _KIEU_CAU_HOI;
        private string _KIEU_MUC_DO;

        ATCLEntities entities = new ATCLEntities();

        public string KIEU_CAU_HOI
        {
            get
            {
                if (ID_LOAI_CAU_HOI != null)
                {
                    LOAI_CAU_HOI obj = entities.LOAI_CAU_HOI.Where(x => x.ID == ID_LOAI_CAU_HOI).FirstOrDefault();
                    if (obj != null)
                    {
                        return obj.MO_TA;
                    }
                }
                return _KIEU_CAU_HOI;
            }
            set
            {
                _KIEU_CAU_HOI = value;
            }

        }

        public string KIEU_MUC_DO
        {
            get
            {
                string strResult = "";
                var lstObjMucDo = entities.CAU_HOI.Join(entities.CAU_HOI_MUC_DO, CH => CH.ID, CHMD => CHMD.ID_CAU_HOI, (CH, CHMD) => new { CH, CHMD })
                                 .Where(x => (x.CH.ID == ID)).Select(y => y.CHMD).ToList();
                if ((lstObjMucDo != null) && (lstObjMucDo.Count >0)){
                    foreach (var item in lstObjMucDo)
                    {
                        if (String.IsNullOrEmpty(strResult))
                        {
                            strResult = entities.MUC_DO_CAU_HOI.Find(item.ID_MUC_DO_CAU_HOI).MO_TA;
                        }
                        else
                            strResult = strResult + "," + entities.MUC_DO_CAU_HOI.Find(item.ID_MUC_DO_CAU_HOI).MO_TA;
                        
                    }
                }
                return strResult;
            }
            set
            {
                _KIEU_MUC_DO = value;
            }

        }
    }
}