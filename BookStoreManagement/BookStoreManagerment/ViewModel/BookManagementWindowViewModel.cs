using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class BookManagementWindowViewModel : BaseViewModel
    {
        public static bool doesMenuClose;
        public ICommand HideMenuCmd { get; set; }
        public ICommand ShowMenuCmd { get; set; }
        public ICommand DataBookCmd { get; set; }
        public ICommand BookMngCmd { get; set; }
        public ICommand CustomerMngCmd { get; set; }

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


        public BookManagementWindowViewModel()
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
            DataBookCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => 
            {
                p.DataContext = new DataBookViewModel();
            });
            BookMngCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new BookMngViewVM();
            });
            CustomerMngCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new CustomerMngViewVM();
            });
        }

        
        
    }
}
