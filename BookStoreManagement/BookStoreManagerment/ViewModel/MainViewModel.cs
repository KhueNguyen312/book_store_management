using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
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
        public ICommand PressBtnStatisticCmd { get; set; }
        public ICommand LogOutCmd { get; set; }
        public ICommand ExitCmd { get; set; }
        public MainViewModel()
        {
            var tmp = DataProvider.Ins.DB.QUYDINHs.Where(x => x.MAQD == 1).SingleOrDefault();
            SettingWindowVM.LIMITED_IMPORT = tmp.NHAPTOITHIEU;
            SettingWindowVM.LIMITED_UNSTOCK = tmp.TONTOITHIEU;
            SettingWindowVM.MAXIMUM_CUSTOMERDUE = tmp.NOTOIDA;
            SettingWindowVM.MAXIMUM_IMPORT = tmp.NHAPTOIDA;
            
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                UpdatePromotionData();
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
            PressBtnStatisticCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenStatisticsWindow(p); });
            LogOutCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { LogOut(p); });
            ExitCmd = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { Exit(p); });
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
        public void OpenStatisticsWindow(Window w)
        {
            StatisticsWindow window = new StatisticsWindow();
            window.ShowDialog();
        }
        public void LogOut(Window w)
        {
            w.Hide();
            MainWindow main = new MainWindow();
            main.Show();
            w.Close();
        }
        public void Exit(Window w)
        {
            if (System.Windows.MessageBox.Show("Bạn có muốn thoát chương trình", "Thông báo", MessageBoxButton.YesNo,MessageBoxImage.Information) == MessageBoxResult.Yes)
            {
                w.Close();
            }
        }
        void UpdatePromotionData()
        {
            var listPromotionBook = DataProvider.Ins.DB.SACHes.Where(x => x.GIAMGIA > 0);
            foreach (var item in listPromotionBook)
            {
                var tmp = DataProvider.Ins.DB.CTKHUYENMAIs.Where(x => x.MASACH == item.MASACH);// DS chi tiết khuyến mãi chứa sách đó
                if (tmp != null && !checkCond(tmp))
                {
                    DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == item.MASACH).SingleOrDefault().GIAMGIA = 0;
                }
                
            }
            DataProvider.Ins.DB.SaveChanges();
        }
        bool checkCond(IQueryable<CTKHUYENMAI> tmp)
        {
            foreach (var item in tmp)
            {
                if (DataProvider.Ins.DB.KHUYENMAIs.Where(x => x.MAKM == item.MAKM && x.NGAYKT >= DateTime.Now).Count() > 0)
                {
                    return true;
                }
            }
            return false;
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
            new AppInfo {Content = "Bookstore management application by Evil team",Photo = "Images/background4.jpg" },
            new AppInfo {Content = "For more infomation vist our Github",Photo = "Images/background5.jpg" },
            new AppInfo {Content = "",Photo="Images/d2684aeb9b47927fb36469e4252ec552.jpg" }
        };
    }
    #endregion
}
