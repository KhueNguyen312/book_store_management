using BookStoreManagerment.Model;
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
        public static decimal DEFAULT_MAXIMUM_CUSTOMERDUE = 10000;
        public static int? LIMITED_IMPORT;
        public static int? LIMITED_UNSTOCK;
        public static int? MAXIMUM_IMPORT;
        public static decimal? MAXIMUM_CUSTOMERDUE;
        public ICommand ChangeCmd { get; set; }
        public ICommand ResetCmd { get; set; }
        private int? _limitedImport;
        public int? LimitedImport { get { return _limitedImport; } set { _limitedImport = value; OnPropertyChanged(); } }
        private int? _limitedUnStock;
        public int? LimitedUnStock { get { return _limitedUnStock; } set { _limitedUnStock = value; OnPropertyChanged(); } }
        private int? _maximumImport;
        public int? MaximumImport { get { return _maximumImport; } set { _maximumImport = value; OnPropertyChanged(); } }
        private decimal? _maximumCustomerDue;
        public decimal? MaximumCustomerDue { get { return _maximumCustomerDue; } set { _maximumCustomerDue = value; OnPropertyChanged(); } }

        public SettingWindowVM()
        {
            var tmp = DataProvider.Ins.DB.QUYDINHs.Where(x => x.MAQD == 1).SingleOrDefault();
            LimitedImport = tmp.NHAPTOITHIEU;
            LimitedUnStock = tmp.TONTOITHIEU;
            MaximumImport = tmp.NHAPTOIDA;
            MaximumCustomerDue = tmp.NOTOIDA;
            ResetCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                LimitedImport = LIMITED_IMPORT = DEFAULT_LIMITED_IMPORT;
                LimitedUnStock =LIMITED_UNSTOCK = DEFAULT_LIMITED_UNSTOCK;
                MaximumCustomerDue = MAXIMUM_CUSTOMERDUE = DEFAULT_MAXIMUM_CUSTOMERDUE;
                MaximumImport = MAXIMUM_IMPORT = DEFAULT_MAXIMUM_IMPORT;
                var a = DataProvider.Ins.DB.QUYDINHs.Where(x => x.MAQD == 1).SingleOrDefault();
                a.NHAPTOIDA = MaximumImport;
                a.NHAPTOITHIEU = LimitedImport;
                a.NOTOIDA = MaximumCustomerDue;
                a.TONTOITHIEU = LimitedUnStock;
                DataProvider.Ins.DB.SaveChanges();
            });
            ChangeCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                LIMITED_IMPORT = LimitedImport;
                LIMITED_UNSTOCK = LimitedUnStock;
                MAXIMUM_IMPORT = MaximumImport;
                MAXIMUM_CUSTOMERDUE = MaximumCustomerDue;
                var a = DataProvider.Ins.DB.QUYDINHs.Where(x=>x.MAQD == 1).SingleOrDefault();
                a.NHAPTOIDA = MaximumImport;
                a.NHAPTOITHIEU = LimitedImport;
                a.NOTOIDA = MaximumCustomerDue;
                a.TONTOITHIEU = LimitedUnStock;
                DataProvider.Ins.DB.SaveChanges();
            });
        }
    }
}
