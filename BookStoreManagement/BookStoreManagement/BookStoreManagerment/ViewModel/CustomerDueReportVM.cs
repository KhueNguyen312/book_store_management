using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Collections.ObjectModel;
using BookStoreManagerment.Model;
using System.Windows.Input;
using System.Windows.Controls;

namespace BookStoreManagerment.ViewModel
{
    public class CustomerDueReportVM:ReportWindowVM
    {
        public ICommand SelectedDateCmd { get; set; }
        public ICommand PrintReportCmd { get; set; }
        private DateTime? _selectedDate;
        public DateTime? SelectedDate { get { return _selectedDate; } set { _selectedDate = value; OnPropertyChanged(); } }
        

        private ObservableCollection<USP_BAOCAODOANHTHU_Result> _listReveneuList;
        public ObservableCollection<USP_BAOCAODOANHTHU_Result> ListReveneuList { get { return _listReveneuList; } set { _listReveneuList = value; OnPropertyChanged(); } }
        public CustomerDueReportVM()
        {
            SelectedDateCmd = new RelayCommand<System.Windows.Controls.DatePicker>((p) => { return true; }, (p) =>
            {
                ListReveneuList = new ObservableCollection<USP_BAOCAODOANHTHU_Result>(DataProvider.Ins.DB.USP_BAOCAODOANHTHU(SelectedDate));
            });
            PrintReportCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                ReveneuReportWindow window = new ReveneuReportWindow();
                window.DataContext = new ReveneuReportWindowVM(ListReveneuList,String.Format("{0}/{1}", SelectedDate.Value.Month.ToString(), SelectedDate.Value.Year.ToString()) );
                window.ShowDialog();
            });
            SelectedDate = DateTime.Today;
            ListReveneuList = new ObservableCollection<USP_BAOCAODOANHTHU_Result>(DataProvider.Ins.DB.USP_BAOCAODOANHTHU(SelectedDate));
        }
    }
}
