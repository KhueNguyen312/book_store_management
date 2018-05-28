using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace BookStoreManagerment.ViewModel
{
    public class AccountDetailVM:AccountMngWindowVM
    {
        private string _accountName;
        public string AccountName { get { return _accountName; } set { _accountName = value; OnPropertyChanged(); } }
        private string _displayName;
        public string DisplayName { get { return _displayName; } set { _displayName = value; OnPropertyChanged(); } }
        private byte[] _image;
        public byte[] Image { get { return _image; } set { _image = value; OnPropertyChanged(); } }
        private BitmapImage _img;
        public BitmapImage Img { get { return _img; } set { _img = value; OnPropertyChanged(); } }
        public AccountDetailVM()
        {
            AccountName = MainViewModel.LoginAccount.TENTK;
            DisplayName = MainViewModel.LoginAccount.TENHIENTHI;
            Image = MainViewModel.LoginAccount.HINHANH;
            Img = ByteToImageConverter.Ins.LoadImage(Image);
        }
    }
}
