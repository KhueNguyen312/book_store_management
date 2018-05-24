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
    public class AccountMngWindowVM:BaseViewModel
    {
        public ICommand HideMenuCmd { get; set; }
        public ICommand ShowMenuCmd { get; set; }
        public ICommand AccountMngCmd { get; set; }
        public ICommand AccountDetailCmd { get; set; }
        public bool isMenuClosed { get; set; }
        private Visibility _btnHideVisibility;
        public Visibility BtnHideVisibility {get{return _btnHideVisibility;}set{_btnHideVisibility = value;OnPropertyChanged("BtnHideVisibility");}}
        private Visibility _btnShowVisibility;
        public Visibility BtnShowVisibility {get{return _btnShowVisibility;}set{_btnShowVisibility = value;OnPropertyChanged("BtnShowVisibility");}}
        public AccountMngWindowVM()
        {
            if (isMenuClosed)
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
                isMenuClosed = true;
                BtnHideVisibility = Visibility.Hidden;
                BtnShowVisibility = Visibility.Visible;
            });
            ShowMenuCmd = new RelayCommand<Button>((p) => { return p == null ? false : true; }, (p) =>
            {
                isMenuClosed = false;
                BtnShowVisibility = Visibility.Hidden;
                BtnHideVisibility = Visibility.Visible;
            });
            AccountMngCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new AccountMngVM();
            });
            AccountDetailCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DataContext = new AccountDetailVM();
            });
        }
    }
}
