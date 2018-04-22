using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class ReportWindowVM:BaseViewModel
    {
        public static bool doesMenuClose;
        public ICommand HideMenuCmd { get; set; }
        public ICommand ShowMenuCmd { get; set; }
        public ICommand InventoryReportCmd { get; set; }
        public ICommand DueReportCmd { get; set; }
        #region Visibility
        private Visibility btnHideVisibility;
        public Visibility BtnHideVisibility
        {
            get
            {
                return btnHideVisibility;
            }
            set
            {
                btnHideVisibility = value;

                OnPropertyChanged("BtnHideVisibility");
            }
        }
        private Visibility btnShowVisibility;
        public Visibility BtnShowVisibility
        {
            get
            {
                return btnShowVisibility;
            }
            set
            {
                btnShowVisibility = value;

                OnPropertyChanged("BtnShowVisibility");
            }
        }
#endregion

        public ReportWindowVM()
        {
            if (doesMenuClose)
            {
                BtnHideVisibility = Visibility.Hidden;
                BtnShowVisibility = Visibility.Visible;
            }
            else
            {
                BtnShowVisibility = Visibility.Hidden;
                BtnHideVisibility = Visibility.Visible;
            }
            HideMenuCmd = new RelayCommand<Button>((p) => { return p == null ? false : true; }, (p) =>
            {
                doesMenuClose = true;
                BtnHideVisibility = Visibility.Hidden;
                BtnShowVisibility = Visibility.Visible;
            });
            ShowMenuCmd = new RelayCommand<Button>((p) => { return p == null ? false : true; }, (p) =>
            {
                doesMenuClose = false;
                BtnShowVisibility = Visibility.Hidden;
                BtnHideVisibility = Visibility.Visible;
            });
            InventoryReportCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new InventoryReportVM();
            });
            DueReportCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new CustomerDueReportVM();
            });
        }
    }
}
