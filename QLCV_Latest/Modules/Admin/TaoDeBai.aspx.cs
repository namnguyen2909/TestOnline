﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPanel.Modules.Admin
{
    public partial class TaoDeBai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("http://localhost:1998/HomePage"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Commons.TitleConst.getTitleConst("http://localhost:1998/HomePage"));
        }
    }
}