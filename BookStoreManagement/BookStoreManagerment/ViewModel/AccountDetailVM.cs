using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace BookStoreManagerment.ViewModel
{
    public class AccountDetailVM:AccountMngWindowVM
    {
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand NewPasswordChangedCommand { get; set; }
        public ICommand NewPasswordChanged2Command { get; set; }
        public ICommand SaveCommand { get; set; }

        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }
        
        private string _accountName;
        public string AccountName { get { return _accountName; } set { _accountName = value; OnPropertyChanged(); } }
        private string _displayName;
        public string DisplayName { get { return _displayName; } set { _displayName = value; OnPropertyChanged(); } }
        private string _password;
        public string Password { get { return _password; } set { _password = value; OnPropertyChanged();
                if (Password != null)
                    IsEnabledTextBox = true;
                else if (Password == "" || Password == null)
                    IsEnabledTextBox = false;
            } }
        private string _newPassword;
        public string NewPassword { get { return _newPassword; } set { _newPassword = value; OnPropertyChanged(); } }
        private string _newPassword2;
        public string NewPassword2 { get { return _newPassword2; } set { _newPassword2 = value; OnPropertyChanged(); } }
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
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => 
            {
                Password = p.Password;
            });
            NewPasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { NewPassword = p.Password; });
            NewPasswordChanged2Command = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { NewPassword2 = p.Password; });
            SaveCommand = new RelayCommand<Button>((p) =>
            {
                return true;
            }, (p) =>
            {
                    TAIKHOAN account = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.TENTK == AccountName).SingleOrDefault();
                    if (account == null)
                    {
                        MessageBox.Show("Không tìm thấy tài khoản này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    if (Img != null)
                    {
                        Image = ByteToImageConverter.Ins.ImageToByte(Img);
                        account.HINHANH = Image;
                    }
                    else
                        account.HINHANH = null;
                    account.TENHIENTHI = DisplayName;
                    if (Password != null)
                    {
                    
                        if (Password == (account.MATKHAU).Trim())
                            if (NewPassword != NewPassword2)
                            {
                                MessageBox.Show("Nhập lại mật khẩu không khớp với mật khẩu đã nhập!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                            return;
                            }
                            else
                                account.MATKHAU = NewPassword;
                        else
                        {
                            MessageBox.Show("Mật khẩu không đúng", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                            return;
                        }
                    }
                    DataProvider.Ins.DB.SaveChanges();
                MessageBox.Show("Cập nhật thành công", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
            });
        }
    }
}
