using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DailyShopping.Models
{
    interface ICrud<T>
    {
        void Add(T s);
        void Update(T s);
        void Delete(T s);
        T Search(T s);
        List<T> GetIds();
        StringReader Recipt(T a);
    }
}
