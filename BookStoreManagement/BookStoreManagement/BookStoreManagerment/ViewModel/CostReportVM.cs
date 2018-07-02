using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class CostReportVM:ReportWindowVM
    {
        public ICommand SelectedDateCmd { get; set; }
        public ICommand PrintReportCmd { get; set; }
        private DateTime? _selectedDate;
        public DateTime? SelectedDate { get { return _selectedDate; } set { _selectedDate = value; OnPropertyChanged(); } }
        private ObservableCollection<USP_BAOCAOCHIPHI_Result> _listItem;
        public ObservableCollection<USP_BAOCAOCHIPHI_Result> ListItem { get { return _listItem; } set { _listItem = value; OnPropertyChanged(); } }
        public CostReportVM()
        {
            SelectedDate = DateTime.Today;
            ListItem = new ObservableCollection<USP_BAOCAOCHIPHI_Result>(DataProvider.Ins.DB.USP_BAOCAOCHIPHI(SelectedDate));
            SelectedDateCmd = new RelayCommand<System.Windows.Controls.DatePicker>((p) => { return true; }, (p) =>
            {
                ListItem = new ObservableCollection<USP_BAOCAOCHIPHI_Result>(DataProvider.Ins.DB.USP_BAOCAOCHIPHI(SelectedDate));
            });
            PrintReportCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                CostReportWindow window = new CostReportWindow();
                window.DataContext = new CostReportWindowVM(ListItem, String.Format("{0}/{1}", SelectedDate.Value.Month.ToString(), SelectedDate.Value.Year.ToString()));
                window.ShowDialog();
            });
            
        }
    }
}
