using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACFM.Backend
{
    public class Music
    {
        public int IdMusic{ get; set; }
        public string Name { get; set; }
        public string Artist { get; set; }
        public string Genre { get; set; }
        public string Link { get; set; }
        public string Album { get; set; }
    }
}