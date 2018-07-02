using BookStoreManagerment.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookStoreManagerment.Model
{
    public class TypeAccount:BaseViewModel
    {
        private int _IDType;
        public int IDType { get { return _IDType; } set { _IDType = value; OnPropertyChanged(); } }
        private string _display;
        public string Display { get { return _display; } set { _display = value; OnPropertyChanged(); } }
        public TypeAccount(int type)
        {
            IDType = type;
            if (IDType == 0)
                Display = "Administrator";
            else
                Display = "Staff";
        }
    }
}
