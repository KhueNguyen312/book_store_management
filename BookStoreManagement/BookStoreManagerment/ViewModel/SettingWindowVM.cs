using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class SettingWindowVM:BaseViewModel
    {
        public static int DEFAULT_LIMITED_IMPORT = 5;
        public static int DEFAULT_LIMITED_UNSTOCK = 1;
        public static int DEFAULT_MAXIMUM_IMPORT = 500;
        public static int DEFAULT_MAXIMUM_CUSTOMERDUE = 10000;
        public static int LIMITED_IMPORT = 5;
        public static int LIMITED_UNSTOCK = 1;
        public static int MAXIMUM_IMPORT = 500;
        public static int MAXIMUM_CUSTOMERDUE = 10000;
        public ICommand ChangeCmd { get; set; }
        public ICommand ResetCmd { get; set; }
        private int _limitedImport;
        public int LimitedImport { get { return _limitedImport; } set { _limitedImport = value; OnPropertyChanged(); } }
        private int _limitedUnStock;
        public int LimitedUnStock { get { return _limitedUnStock; } set { _limitedUnStock = value; OnPropertyChanged(); } }
        private int _maximumImport;
        public int MaximumImport { get { return _maximumImport; } set { _maximumImport = value; OnPropertyChanged(); } }
        private int _maximumCustomerDue;
        public int MaximumCustomerDue { get { return _maximumCustomerDue; } set { _maximumCustomerDue = value; OnPropertyChanged(); } }

        public SettingWindowVM()
        {
            ResetCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                
            });
        }
    }
}
