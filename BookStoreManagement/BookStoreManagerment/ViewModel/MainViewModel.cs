using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace BookStoreManagerment.ViewModel
{
    public class MainViewModel:BaseViewModel
    {

        private static TAIKHOAN _loginAccount;
        public static TAIKHOAN LoginAccount { get { return _loginAccount; } set { _loginAccount = value; } }

        public bool Isloaded = false;
        private string _displayName;
        public string DisplayName { get { return _displayName; } set { _displayName = value; OnPropertyChanged(); } }
        private string _typeAccountDisplay;
        public string TypeAccountDisplay { get { return _typeAccountDisplay; } set { _typeAccountDisplay = value; OnPropertyChanged(); } }
        private byte[] _image;
        public byte[] Image { get { return _image; } set { _image = value; OnPropertyChanged(); } }
        private BitmapImage _img;
        public BitmapImage Img { get { return _img; } set { _img = value; OnPropertyChanged(); } }
        private TypeAccount _typeAccount;
        public TypeAccount TypeAccount { get { return _typeAccount; } set { _typeAccount = value; OnPropertyChanged(); } }
        public ICommand PressBtnBookMngCommand { get; set; }
        public ICommand PressBtnAccountCommand { get; set; }
        public ICommand PressBtnBusinessCommand { get; set; }
        public ICommand PressBtnSettingCommand { get; set; }
        public ICommand PressBtnReportCommand { get; set; }
        public ICommand LoadedWindowCommand { get; set; }
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                Isloaded = true;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                if (loginWindow.DataContext == null)
                    return;
                var loginVM = loginWindow.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    DisplayName = LoginAccount.TENHIENTHI;
                    TypeAccount = new TypeAccount(LoginAccount.LOAITK);
                    TypeAccountDisplay = TypeAccount.Display;
                    Image = LoginAccount.HINHANH;
                    Img = ByteToImageConverter.Ins.LoadImage(Image);
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            });
            PressBtnBookMngCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenBookMngWindow(p); });
            PressBtnAccountCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenAccountWindow(p); });
            PressBtnBusinessCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenBusinesstWindow(p); });
            PressBtnSettingCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenSettingWindow(p); });
            PressBtnReportCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenReportWindow(p); });

        }
        //All commands
        public void OpenBookMngWindow(Window w)
        {
            BookManagementWindow window = new BookManagementWindow();
            window.ShowDialog();
        }
        public void OpenAccountWindow(Window w)
        {
            AccountMngWindow window = new AccountMngWindow();
            window.ShowDialog();
        }
        public void OpenBusinesstWindow(Window w)
        {
            BusinessWindow window = new BusinessWindow();
            window.ShowDialog();
        }
        public void OpenSettingWindow(Window w)
        {
            SettingWindow window = new SettingWindow();
            window.ShowDialog();
        }
        public void OpenReportWindow(Window w)
        {
            ReportWindow window = new ReportWindow();
            window.ShowDialog();
        }
        public List<AppInfo> AppInfos { get { return BookStoreManagerment.ViewModel.AppInfos.listInfo; } }
    }

    #region AppInformation
    public class AppInfo
    {
        public string Content { get; set; }
        public string Photo { get; set; }
        public ImageSource PhotoSource
        {
            get { return string.IsNullOrEmpty(Photo) ? null : new BitmapImage(new Uri(Photo, UriKind.Relative)); }
        }
    }
    public static class AppInfos
    {
        public static readonly List<AppInfo> listInfo = new List<AppInfo>
        {
            new AppInfo {Content = "Bookstore management application by Evils group",Photo = "Images/background4.jpg" },
            new AppInfo {Content = "For more infomation vist our Github",Photo = "Images/background5.jpg" },
            new AppInfo {Content = "",Photo="Images/background3.jpg" }
        };
    }
    #endregion
}
