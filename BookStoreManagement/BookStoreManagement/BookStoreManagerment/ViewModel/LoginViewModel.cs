﻿using BookStoreManagerment.Model;
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
        public ICommand ClickedSnackbarCommand { get; set; }
        public bool IsLogin { get; set; }
        
        private string _userName;
        private string _password;
        private bool _isActiveSnackBar;
        public bool IsActiveSnackBar { get { return _isActiveSnackBar; } set { _isActiveSnackBar = value; OnPropertyChanged(); } }
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
            ClickedSnackbarCommand = new RelayCommand<MaterialDesignThemes.Wpf.Snackbar>((p) => { return p == null ? false : true; }, (p) => { p.IsActive = false; });
        }
        
        public void Login(Window window )
        {
            if (window == null)
                return;
            try
            {
                var accountCount = DataProvider.Ins.DB.TAIKHOANs.Where(p => p.TENTK == UserName && p.MATKHAU == Password).Count();
                if (accountCount > 0)
                {
                    MainViewModel.LoginAccount = DataProvider.Ins.DB.TAIKHOANs.Where(p => p.TENTK == UserName && p.MATKHAU == Password).SingleOrDefault();
                    IsLogin = true;
                    IsActiveSnackBar = false;
                    window.Close();
                }
                else
                {
                    IsLogin = false;
                   
                    IsActiveSnackBar = true;


                }
            }
            catch (Exception)
            {

                MessageBoxWindow mess2 = new MessageBoxWindow();
                mess2.Tag = "Hãy kiểm tra kết nối tới CSDL";
                mess2.ShowDialog();

               // MessageBox.Show("Hãy kiểm tra kết nối tới CSDL", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            
            
            
        }
    }
}
