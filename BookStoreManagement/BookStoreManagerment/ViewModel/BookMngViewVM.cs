using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
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
    public class BookMngViewVM : BookManagementWindowViewModel
    {
        public ICommand AddCommand { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        private bool _isAdding;
        public bool IsAdding { get { return _isAdding; } set { _isAdding = value; OnPropertyChanged(); } }

        private bool _isEnabledListView;
        public bool IsEnabledListView { get { return _isEnabledListView; } set { _isEnabledListView = value; OnPropertyChanged(); } }

        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }

        private bool _isEnabledIDTextBox;
        public bool IsEnabledIDTextBox { get { return _isEnabledIDTextBox; } set { _isEnabledIDTextBox = value; OnPropertyChanged(); } }

        private NHAXUATBAN _selectedPublishingHouseItem;
        public NHAXUATBAN SelectedPublishingHouseItem
        {
            get { return _selectedPublishingHouseItem; }
            set
            {
                _selectedPublishingHouseItem = value;
                OnPropertyChanged();
                if (_selectedPublishingHouseItem != null)
                {
                    PublishingHouse = SelectedPublishingHouseItem.MANXB;
                }
            }
        }

        private LOAISACH _selectedBookTypeItem;
        public LOAISACH SelectedBookTypeItem
        {
            get { return _selectedBookTypeItem; }
            set
            {
                _selectedBookTypeItem = value;
                OnPropertyChanged();
                if (_selectedBookTypeItem != null)
                {
                    BookType = SelectedBookTypeItem.MALOAISACH;
                }
            }
        }

        private SACH _selectedItem;
        public SACH SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    ID = SelectedItem.MASACH;
                    BookName = SelectedItem.TENSACH;
                    BookType = SelectedItem.MALOAISACH;
                    Author = SelectedItem.TACGIA;
                    PublishingHouse = SelectedItem.MANXB;
                    NumOfBook = SelectedItem.SOLUONGHIENTAI;
                    InputPrice = SelectedItem.GIANHAP;
                    BuyingPrice = SelectedItem.GIABAN;
                    Image = SelectedItem.HINHANH;
                    Img = ByteToImageConverter.Ins.LoadImage(Image);
                    DisplayPublishingHouse = DataProvider.Ins.DB.NHAXUATBANs.Where(x => x.MANXB == SelectedItem.MANXB).SingleOrDefault().TENNXB;
                    DisplayBookType = DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == SelectedItem.MALOAISACH).SingleOrDefault().TENLOAISACH;
                }
            }
        }

        private ObservableCollection<SACH> _listBook;
        public ObservableCollection<SACH> ListBook { get { return _listBook; } set { _listBook = value; OnPropertyChanged(); } }

        private ObservableCollection<NHAXUATBAN> _listPublishingHouse;
        public ObservableCollection<NHAXUATBAN> ListPublishingHouse { get { return _listPublishingHouse; } set { _listPublishingHouse = value; OnPropertyChanged(); } }

        private ObservableCollection<LOAISACH> _listBookType;
        public ObservableCollection<LOAISACH> ListBookType { get { return _listBookType; } set { _listBookType = value; OnPropertyChanged(); } }

        private string _iD;
        public string ID { get { return _iD; } set { _iD = value; OnPropertyChanged(); } }

        private string _bookName;
        public string BookName { get { return _bookName; } set { _bookName = value; OnPropertyChanged(); } }

        private string _bookType;
        public string BookType { get { return _bookType; } set { _bookType = value; OnPropertyChanged(); } }

        private string _author;
        public string Author { get { return _author; } set { _author = value; OnPropertyChanged(); } }

        private string _publishingHouse;
        public string PublishingHouse { get { return _publishingHouse; } set { _publishingHouse = value; OnPropertyChanged(); } }

        private int? _numOfBook;
        public int? NumOfBook { get { return _numOfBook; } set { _numOfBook = value; OnPropertyChanged(); } }

        private byte[] _image;
        public byte[] Image { get { return _image; } set { _image = value; OnPropertyChanged(); } }

        private BitmapImage _img;

        public BitmapImage Img
        {
            get
            {
                return _img;
            }
            set
            {
                _img = value;
                OnPropertyChanged();
            }
        }


        private decimal _inputPrice;
        public decimal InputPrice { get { return _inputPrice; } set { _inputPrice = value; OnPropertyChanged(); } }

        private decimal _buyingPrice;
        public decimal BuyingPrice { get { return _buyingPrice; } set { _buyingPrice = value; OnPropertyChanged(); } }

        private string _displayPublishingHouse;
        public string DisplayPublishingHouse { get { return _displayPublishingHouse; } set { _displayPublishingHouse = value; OnPropertyChanged(); } }

        private string _displayBookType;
        public string DisplayBookType { get { return _displayBookType; } set { _displayBookType = value; OnPropertyChanged(); } }

        public BookMngViewVM()
        {
            
            IsEnabledListView = true;
            IsAdding = true;
            AddCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsEnabledListView = false;
                IsEnabledTextBox = true;
                IsEnabledIDTextBox = true;

            });
            SaveCommand = new RelayCommand<Button>((p) =>
            {
                if (!IsEnabledListView)
                    return true;
                else
                    return false;
            }, (p) =>
            {
                IsEnabledListView = true;
                IsEnabledTextBox = false;
                IsEnabledIDTextBox = false;
                if (!IsAdding)
                {
                    var book = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedItem.MASACH).SingleOrDefault();
                    if (book == null)
                    {
                        MessageBox.Show("Không tìm thấy cuôn sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    if (Img != null)
                    {
                        Image = ByteToImageConverter.Ins.ImageToByte(Img);
                        book.HINHANH = Image;
                    }
                    else
                        book.HINHANH = null;
                    book.TENSACH = BookName;
                    book.MALOAISACH = BookType;
                    book.TACGIA = Author;
                    book.MANXB = PublishingHouse;
                    book.SOLUONGHIENTAI = NumOfBook;
                    book.GIANHAP = InputPrice;
                    book.GIABAN = BuyingPrice;
                    DataProvider.Ins.DB.SaveChanges();
                    IsAdding = true;
                }
                else
                {
                    if (Img != null)
                        Image = ByteToImageConverter.Ins.ImageToByte(Img);
                    else
                        Image = null;
                    var book = new SACH() { MASACH = ID, TENSACH = BookName, MALOAISACH = BookType, TACGIA = Author, MANXB = PublishingHouse, GIABAN = BuyingPrice, GIANHAP = InputPrice, HINHANH = Image };
                    if (DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == book.MASACH).Count() > 0)
                    {
                        MessageBox.Show("Mã Sách đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        DataProvider.Ins.DB.SACHes.Add(book);
                        
                        try
                        {
                            DataProvider.Ins.DB.SaveChanges();
                            ListBook.Add(book);
                        }
                        catch (Exception)
                        {
                        }

                        
                    }
                }
            });
            EditCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsAdding = false;
                IsEnabledListView = false;
                IsEnabledTextBox = true;
                IsEnabledIDTextBox = false;
            });
            DeleteCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var book = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedItem.MASACH).SingleOrDefault();
                DataProvider.Ins.DB.SACHes.Remove(book);
                try
                {
                    DataProvider.Ins.DB.SaveChanges();

                    ListBook.Remove(SelectedItem);
                }
                catch (Exception)
                {

                    MessageBox.Show("Không thể xóa cuốn sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                
            });
            ListBook = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes);
            ListPublishingHouse = new ObservableCollection<NHAXUATBAN>(DataProvider.Ins.DB.NHAXUATBANs);
            ListBookType = new ObservableCollection<LOAISACH>(DataProvider.Ins.DB.LOAISACHes);
            
        }
        
        
    }
}
