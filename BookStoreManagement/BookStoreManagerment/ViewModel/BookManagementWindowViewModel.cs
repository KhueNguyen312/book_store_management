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
        public ICommand HideMenuCmd { get; set; }
        public ICommand ShowMenuCmd { get; set; }

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
            HideMenuCmd = new RelayCommand<Button>((p) => { return p == null ? false : true; }, (p) =>
            {
                BtnHideVisibility = Visibility.Hidden;
                BtnShowVisibility = Visibility.Visible;
            });
            ShowMenuCmd = new RelayCommand<Button>((p) => { return p == null ? false : true; }, (p) =>
            {
                BtnShowVisibility = Visibility.Hidden;
                BtnHideVisibility = Visibility.Visible;
            });
        }

        
        
    }
}
