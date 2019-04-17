using CheckLinks.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CheckLinks
{
    class Program
    {
        static void Main(string[] args)
        {
            var db= new DBEntities();
            var listSite = db.SiteManagers.ToList();
            var lstTask= new List<Task<SiteManager>>();
            foreach (var item in listSite)
            {
                lstTask.Add(CheckLinkProvider.Check(item));
            }
            Task.WhenAll(lstTask);
            db.SaveChanges();
        }
    }
}
