using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACFM.Backend
{
    public class Playlist
    {
        public int IdPlaylist { get; set; }
        public List<Music> MusicList { get; set; }
        public int IdPerson { get; set; }
    }
}