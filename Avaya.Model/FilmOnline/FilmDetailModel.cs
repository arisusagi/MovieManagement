using System;
using System.Collections.Generic;
using System.Text;

namespace Avaya.Model.FilmOnline
{
    public class FilmDetailModel : BaseModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string ImgUrl { get; set; }
        public int? Duration { get; set; }
        public string Type { get; set; }
        public string ReleaseDate { get; set; }
        public string Description { get; set; }
        public string MovieUrl { get; set; }
        public string Category { get; set; }
    }
}
