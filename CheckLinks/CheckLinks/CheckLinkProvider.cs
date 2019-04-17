using CheckLinks.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace CheckLinks
{
    public class CheckLinkProvider
    {
        public static async Task<SiteManager> Check(SiteManager obj)
        {
            if (obj!=null)
            {
                var rgx = new Regex(@"^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$");
               
                if (obj.Link != null && rgx.IsMatch(obj.Link))
                {
                    var request = (HttpWebRequest)WebRequest.Create(obj.Link);
                    request.Method = "HEAD";
                    var response = (HttpWebResponse)request.GetResponse();
                    if (response.StatusCode == HttpStatusCode.OK)
                    {
                        obj.Status = true;
                    }
                    else
                    {
                        obj.Status = false;
                    }
                }
                else
                {
                    obj.Status = false;
                }
               
            }
           
            return obj;
        }
    }
}
