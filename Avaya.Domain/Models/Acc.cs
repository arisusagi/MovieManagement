using System;
using System.Collections.Generic;

namespace Avaya.Domain.Models
{
    public partial class Acc
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int? Type { get; set; }
    }
}
