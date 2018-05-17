using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class DataBookViewModel:BookManagementWindowViewModel
    {
        private ObservableCollection<NHAXUATBAN> _listNXB;
        public ObservableCollection<NHAXUATBAN> ListNXB { get { return _listNXB; } set { _listNXB = value; OnPropertyChanged(); } }
        private ObservableCollection<LOAISACH> _listOfBookType;
        public ObservableCollection<LOAISACH> ListOfBookType { get { return _listOfBookType; } set { _listOfBookType = value; OnPropertyChanged(); } }
        public DataBookViewModel()
        {
            if(doesMenuClose)
            {
                BtnHideVisibility = Visibility.Hidden;
                BtnShowVisibility = Visibility.Visible;
            }
            else
            {
                BtnShowVisibility = Visibility.Hidden;
                BtnHideVisibility = Visibility.Visible;
            }
            ListNXB = new ObservableCollection<NHAXUATBAN>(DataProvider.Ins.DB.NHAXUATBANs);
            ListOfBookType = new ObservableCollection<LOAISACH>(DataProvider.Ins.DB.LOAISACHes);
        }
    }
}
