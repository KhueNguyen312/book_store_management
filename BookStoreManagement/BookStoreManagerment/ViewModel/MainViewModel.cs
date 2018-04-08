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
        public bool Isloaded = false;
        public ICommand PressBtnBookMngCommand { get; set; }

        public MainViewModel()
        {
            if (!Isloaded)
            {
                Isloaded = true;
            }
            PressBtnBookMngCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { OpenBookMngWindow(p); });
            

        }
        //All commands
        public void OpenBookMngWindow(Window w)
        {
            BookManagementWindow window = new BookManagementWindow();
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
