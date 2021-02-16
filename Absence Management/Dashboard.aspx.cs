using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Absence_Management;

namespace Absence_Management
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadGrid1_NeedDataSource(Object sender, GridNeedDataSourceEventArgs e)
        {
            (sender as RadGrid).DataSource = DemoData;
        }

        public IEnumerable<Dummy> DemoData = Enumerable.Range(1, 40).Select(x => new Dummy
        {
            ID = x,
            Name = "Name" + x,
            Department = "Department" + x
        });

       
    }

    public class Dummy
    {
        public int ID { get; set; }
        public String Name { get; set; }
        public String Department { get; set; }

    }
}