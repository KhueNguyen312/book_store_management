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
    public class BusinessWindowVM:BaseViewModel
    {
        public static bool doesMenuClose;
        public ICommand HideMenuCmd { get; set; }
        public ICommand ShowMenuCmd { get; set; }
        public ICommand BookInputCmd { get; set; }
        public ICommand SellBookCmd { get; set; }
        public ICommand MoneyCollectionCmd { get; set; }
        private Visibility _btnHideVisibility;
        public Visibility BtnHideVisibility
        {
            get
            {
                return _btnHideVisibility;
            }
            set
            {
                _btnHideVisibility = value;

                OnPropertyChanged("BtnHideVisibility");
            }
        }
        private Visibility _btnShowVisibility;
        public Visibility BtnShowVisibility
        {
            get
            {
                return _btnShowVisibility;
            }
            set
            {
                _btnShowVisibility = value;

                OnPropertyChanged("BtnShowVisibility");
            }
        }
        public BusinessWindowVM()
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
            BookInputCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new BookInputViewVM();
            });
            SellBookCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new SellBookViewVM();
            });
            MoneyCollectionCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new MoneyCollectionViewVM();
            });
        }
    }
}
