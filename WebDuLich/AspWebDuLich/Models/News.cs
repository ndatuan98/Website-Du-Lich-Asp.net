using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspWebDuLich.Models
{
    public class News
    {
        int id, view_count, create_by, delete_by;
        string title, content;
        DateTime create_date;
        Boolean is_delete;

        public int Id { get => id; set => id = value; }
        public int View_count { get => view_count; set => view_count = value; }
        public int Create_by { get => create_by; set => create_by = value; }
        public int Delete_by { get => delete_by; set => delete_by = value; }
        public string Title { get => title; set => title = value; }
        public string Content { get => content; set => content = value; }
        public DateTime Create_date { get => create_date; set => create_date = value; }
        public bool Is_delete { get => is_delete; set => is_delete = value; }
    }
}