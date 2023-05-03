using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Socialmedia
{
    internal class post
    {

        public String username, texts, images, time_post;

        public post(string username, string texts, string images, string time_post)
        {
            this.username = username;
            this.texts = texts;
            this.images = images;
            this.time_post = time_post;
        }

    }
}
