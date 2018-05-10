using BookStoreManagerment.Model;
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

    public class LoginViewModel:BaseViewModel
    {
        public ICommand LoginCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand UserNameChangedCommand { get; set; }
        public bool IsLogin { get; set; }
        private string _userName;
        private string _password;
        public string UserName { get { return _userName; } set { _userName = value;OnPropertyChanged(); } }
        public string Password { get { return _password; } set { _password = value; OnPropertyChanged(); } }

        public LoginViewModel()
        {
            IsLogin = false;
            LoginCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                Login(p);
            });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });
            UserNameChangedCommand = new RelayCommand<TextBox>((p) => { return true; }, (p) => { UserName = p.Text; });
        }
        
        public void Login(Window window )
        {
            if (window == null)
                return;
            var accountCount = DataProvider.Ins.DB.TAIKHOANs.Where(p => p.TENTK == UserName && p.MATKHAU == Password).Count();
            if(accountCount > 0)
            {
                IsLogin = true;
                window.Close();
            }
            else
            {
                IsLogin = false;
                MessageBox.Show("Sai tài khoản hoặc mật khẩu");
            }
            
        }
    }
}
