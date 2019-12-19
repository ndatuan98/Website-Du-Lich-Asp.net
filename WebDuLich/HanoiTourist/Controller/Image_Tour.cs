using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HanoiTourist.Controller
{
    public class Image_Tour
    {
        int id, detail_id;
        string image1, image2, image3, video;
        public int Id { get => id; set => id = value; }
        public int Detail_id { get => detail_id; set => detail_id = value; }
        public string Image1 { get => image1; set => image1 = value; }
        public string Image2 { get => image2; set => image2 = value; }
        public string Image3 { get => image3; set => image3 = value; }
        public string Video { get => video; set => video = value; }
    }
}