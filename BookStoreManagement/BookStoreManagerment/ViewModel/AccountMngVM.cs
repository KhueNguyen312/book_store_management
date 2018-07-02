using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace BookStoreManagerment.ViewModel
{
    public class AccountMngVM: AccountMngWindowVM
    {
        public ICommand AddAccountCmd { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand Password2ChangedCommand { get; set; }
        public ICommand SearchCmd { get; set; }
        public bool IsAdding { get; set; }
        
        private bool _isEnabledUserNameTextBox;
        public bool IsEnabledUserNameTextBox { get { return _isEnabledUserNameTextBox; } set { _isEnabledUserNameTextBox = value; OnPropertyChanged(); } }
        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }

        private string _accountName;
        public string AccountName { get { return _accountName; } set { _accountName = value; OnPropertyChanged(); } }
        private string _typeAccountDisplay;
        public string TypeAccountDisplay { get { return _typeAccountDisplay; } set { _typeAccountDisplay = value; OnPropertyChanged(); } }
        private string _displayName;
        public string DisplayName { get { return _displayName; } set { _displayName = value; OnPropertyChanged(); } }
        private string _password;
        public string Password { get { return _password; } set { _password = value; OnPropertyChanged(); } }
        private string _password2;
        public string Password2 { get { return _password2; } set { _password2 = value; OnPropertyChanged(); } }
        private TypeAccount _typeAccount;
        public TypeAccount TypeAccount { get { return _typeAccount; } set { _typeAccount = value; OnPropertyChanged(); } }
        private byte[] _image;
        public byte[] Image { get { return _image; } set { _image = value; OnPropertyChanged(); } }

        private BitmapImage _img;
        public BitmapImage Img {get{return _img;}set{_img = value; OnPropertyChanged();}}

        private ObservableCollection<TAIKHOAN> _listAccount;
        public ObservableCollection<TAIKHOAN> ListAccount { get { return _listAccount; } set { _listAccount = value; OnPropertyChanged(); } }
        private ObservableCollection<TypeAccount> _listTypeAccount;
        public ObservableCollection<TypeAccount> ListTypeAccount { get { return _listTypeAccount; } set { _listTypeAccount = value; OnPropertyChanged(); } }

        private TAIKHOAN _selectedAccount;
        public TAIKHOAN SelectedAccount
        {
            get { return _selectedAccount; }
            set
            {
                _selectedAccount = value;
                OnPropertyChanged();
                if (_selectedAccount != null)
                {
                    AccountName = SelectedAccount.TENTK;
                    DisplayName = SelectedAccount.TENHIENTHI;
                    Image = SelectedAccount.HINHANH;
                    Img = ByteToImageConverter.Ins.LoadImage(Image);
                    TypeAccount = new TypeAccount(SelectedAccount.LOAITK);
                    TypeAccountDisplay = TypeAccount.Display;
                }
            }
        }
        private TypeAccount _selectedCBItem;
        public TypeAccount SelectedCBItem
        {
            get { return _selectedCBItem; }
            set
            {
                _selectedCBItem = value;
                OnPropertyChanged();
                if (_selectedCBItem != null)
                {
                    TypeAccount = new TypeAccount(SelectedCBItem.IDType);
                }
            }
        }
        public AccountMngVM()
        {
            AddAccountCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsAdding = true;
                IsEnabledUserNameTextBox = true;
                IsEnabledTextBox = true;
            });
            EditCommand = new RelayCommand<Button>((p) => { return SelectedAccount == null ? false : true; }, (p) =>
            {
                IsAdding = false;
                IsEnabledUserNameTextBox = false;
                IsEnabledTextBox = true;
            });
            SaveCommand = new RelayCommand<Button>((p) =>
            {
                if (IsEnabledTextBox && ((Password  != null && Password2 != null &&IsAdding)||!IsAdding))
                    return true;
                else
                    return false;
            }, (p) =>
            {
                IsEnabledTextBox = false;
                IsEnabledUserNameTextBox = false;
                if (!IsAdding)
                {
                    var account = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.TENTK == SelectedAccount.TENTK).SingleOrDefault();
                    if (account == null)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Không tìm thấy tài khoản này";
                        mess2.ShowDialog();

                       // MessageBox.Show("Không tìm thấy tài khoản này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    if (Img != null)
                    {
                        Image = ByteToImageConverter.Ins.ImageToByte(Img);
                        account.HINHANH = Image;
                    }
                    else
                        account.HINHANH = null;
                    account.TENTK = AccountName;
                    account.TENHIENTHI = DisplayName;
                    account.LOAITK = TypeAccount.IDType;

                    if (Password != null)
                    {
                        if (Password != Password2)
                        {
                            MessageBoxWindow mess2 = new MessageBoxWindow();
                            mess2.Tag = "Nhập lại mật khẩu không khớp với mật khẩu đã nhập!";
                            mess2.ShowDialog();

                           // MessageBox.Show("Nhập lại mật khẩu không khớp với mật khẩu đã nhập!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                        else
                            account.MATKHAU = Password;
                    }
                    else
                        account.MATKHAU = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.TENTK == SelectedAccount.TENTK).SingleOrDefault().MATKHAU;
                    DataProvider.Ins.DB.SaveChanges();
                    Password2 = Password = null;
                    IsAdding = true;
                }
                else
                {
                    if (Img != null)
                        Image = ByteToImageConverter.Ins.ImageToByte(Img);
                    else
                        Image = null;
                    var account = new TAIKHOAN() { TENTK = AccountName, TENHIENTHI = DisplayName, HINHANH = Image, LOAITK = TypeAccount.IDType, MATKHAU = Password };
                    if (DataProvider.Ins.DB.TAIKHOANs.Where(x => x.TENTK == account.TENTK).Count() > 0)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Tài khoản đã tồn tại!";
                        mess2.ShowDialog();

                        //MessageBox.Show("Tài khoản đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        if (Password != Password2)
                        {
                            MessageBoxWindow mess2 = new MessageBoxWindow();
                            mess2.Tag = "Nhập lại mật khẩu không khớp với mật khẩu đã nhập!";
                            mess2.ShowDialog();

                            //MessageBox.Show("Nhập lại mật khẩu không khớp với mật khẩu đã nhập!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                        else
                        {
                            DataProvider.Ins.DB.TAIKHOANs.Add(account);
                            DataProvider.Ins.DB.SaveChanges();
                            ListAccount.Add(account);
                        }
                    }
                }
            });
            DeleteCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var account = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.TENTK == SelectedAccount.TENTK).SingleOrDefault();
                DataProvider.Ins.DB.TAIKHOANs.Remove(account);
                DataProvider.Ins.DB.SaveChanges();

                ListAccount.Remove(SelectedAccount);
            });
            SearchCmd = new RelayCommand<TextBox>((p) => { return true; }, (p) =>
            {
                if (p.Text != "")
                {
                    var newList = new ObservableCollection<TAIKHOAN>(DataProvider.Ins.DB.Database.SqlQuery<TAIKHOAN>("USP_TIMTKTHEOTEN @TEN", new SqlParameter("TEN", p.Text)));
                    ListAccount = newList;
                }
                else
                {
                    var newList = new ObservableCollection<TAIKHOAN>(DataProvider.Ins.DB.TAIKHOANs);
                    ListAccount = newList;
                }
            });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password;});
            Password2ChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password2 = p.Password; });
            ListAccount = new ObservableCollection<TAIKHOAN>(DataProvider.Ins.DB.TAIKHOANs);
            ListTypeAccount = new ObservableCollection<TypeAccount>() { new TypeAccount(0), new TypeAccount(1) };
        }
    }
    
}
