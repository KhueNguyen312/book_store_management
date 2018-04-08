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

        public LoginViewModel()
        {
            LoginCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                Login(p);
            });
        }
        
        public void Login(Window window )
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            window.Close();
        }
    }
}
