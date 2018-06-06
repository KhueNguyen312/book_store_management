using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class SellBookViewVM:BusinessWindowVM
    {

        public ICommand AddCommand { get; set; }
        public ICommand AddBookCmd { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteBillCommand { get; set; }
        public ICommand DeleteBillDetailCommand { get; set; }
        public bool IsAdding { get; set; }
        public bool isSaved { get; set; }
        public HOADON CurrentBill { get; set; }

        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }
        private bool _isEnabledCBBox;
        public bool IsEnabledCBBox { get { return _isEnabledCBBox; } set { _isEnabledCBBox = value; OnPropertyChanged(); } }
        private bool _isEnabledCustomerCBBox;
        public bool IsEnabledCustomerCBBox { get { return _isEnabledCustomerCBBox; } set { _isEnabledCustomerCBBox = value; OnPropertyChanged(); } }
        private bool _isEnabledListView;
        public bool IsEnabledListView { get { return _isEnabledListView; } set { _isEnabledListView = value; OnPropertyChanged(); } }
        private bool _isEnabledBillListView;
        public bool IsEnabledBillListView { get { return _isEnabledBillListView; } set { _isEnabledBillListView = value; OnPropertyChanged(); } }

        private ObservableCollection<CTHOADON> _listBillDetail;
        public ObservableCollection<CTHOADON> ListBillDetail { get { return _listBillDetail; } set { _listBillDetail = value; OnPropertyChanged(); } }

        private ObservableCollection<HOADON> _listBill;
        public ObservableCollection<HOADON> ListBill { get { return _listBill; } set { _listBill = value; OnPropertyChanged(); } }

        private ObservableCollection<KHACHHANG> _listCustomer;
        public ObservableCollection<KHACHHANG> ListCustomer { get { return _listCustomer; } set { _listCustomer = value; OnPropertyChanged(); } }

        private ObservableCollection<SACH> _listBook;
        public ObservableCollection<SACH> ListBook { get { return _listBook; } set { _listBook = value; OnPropertyChanged(); } }

        private string _bookID;
        public string BookID { get { return _bookID; } set { _bookID = value; OnPropertyChanged(); } }

        private string _buttonName;
        public string ButtonName { get { return _buttonName; } set { _buttonName = value; OnPropertyChanged(); } }

        private string _customerID;
        public string CustomerID { get { return _customerID; } set { _customerID = value; OnPropertyChanged(); } }

        private string _customerName;
        public string CustomerName { get { return _customerName; } set { _customerName = value; OnPropertyChanged(); } }

        private int _numOfBook;
        public int NumOfBook { get { return _numOfBook; } set { _numOfBook = value; OnPropertyChanged(); } }

        private decimal _buyingPrice;
        public decimal BuyingPrice { get { return _buyingPrice; } set { _buyingPrice = value; OnPropertyChanged(); } }

        private string _bookName;
        public string BookName { get { return _bookName; } set { _bookName = value; OnPropertyChanged(); } }
        private decimal _moneyReceipt;
        public decimal MoneyReceipt { get { return _moneyReceipt; } set { _moneyReceipt = value; OnPropertyChanged(); } }
        private decimal _totalPrice;
        public decimal TotalPrice { get { return _totalPrice; } set { _totalPrice = value; OnPropertyChanged(); } }

        private HOADON _selectedItem;
        public HOADON SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    if (CurrentBill != null && SelectedItem == CurrentBill)
                        IsEnabledListView = true;
                    else
                        IsEnabledListView = false;
                    CustomerName = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == SelectedItem.MAKH).SingleOrDefault().TENKH;
                    ListBillDetail = new ObservableCollection<CTHOADON>(DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD));
                }
            }
        }

        private CTHOADON _selectedBillDetail;
        public CTHOADON SelectedBillDetail
        {
            get { return _selectedBillDetail; }
            set
            {
                _selectedBillDetail = value;
                OnPropertyChanged();
                if (_selectedBillDetail != null)
                {
                    BookName = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedBillDetail.MASACH).SingleOrDefault().TENSACH;
                    NumOfBook = SelectedBillDetail.SOLUONG;
                    BuyingPrice = SelectedBillDetail.GIABAN;
                }
            }
        }

        private SACH _selectedBook;
        public SACH SelectedBook
        {
            get { return _selectedBook; }
            set
            {
                _selectedBook = value;
                OnPropertyChanged();
                if (_selectedBook != null)
                {
                    BookID = SelectedBook.MASACH;
                    BuyingPrice = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedBook.MASACH).SingleOrDefault().GIABAN;
                }
            }
        }

        private KHACHHANG _selectedCustomer;
        public KHACHHANG SelectedCustomer
        {
            get { return _selectedCustomer; }
            set
            {
                _selectedCustomer = value;
                OnPropertyChanged();
                if (_selectedCustomer != null)
                {
                    CustomerID = _selectedCustomer.MAKH;
                }
            }
        }

        public SellBookViewVM()
        {
            ButtonName = "Thêm Sách";
            isSaved = true;
            IsEnabledBillListView = true;
            IsEnabledCustomerCBBox = true;
            AddCommand = new RelayCommand<Button>((p) => { return isSaved && SelectedCustomer != null ? true : false; }, (p) =>
            {
                IsEnabledTextBox = true;
                IsEnabledCustomerCBBox = false;
                IsEnabledCBBox = true;
                IsEnabledListView = true;
                IsAdding = true;
                isSaved = false;
                var bill = new HOADON() { MAKH = SelectedCustomer.MAKH, NGAYHD = DateTime.Now, TONGTIEN = 0 };
                CurrentBill = bill;
                SelectedItem = CurrentBill;
                DataProvider.Ins.DB.HOADONs.Add(bill);
                DataProvider.Ins.DB.SaveChanges();

                ListBill.Add(bill);
            });
            AddBookCmd = new RelayCommand<Button>((p) =>
            {
                if (SelectedBook == null || NumOfBook < 1 || SelectedItem == null)
                    return false;
                else
                    return true;
            }, (p) =>
            {
                if (!IsAdding)
                {
                    var book = DataProvider.Ins.DB.CTHOADONs.Where(x => x.MASACH == SelectedBillDetail.MASACH && x.SOHD == SelectedBillDetail.SOHD).SingleOrDefault();
                    if (book == null)
                    {
                        MessageBox.Show("Không tìm thấy cuôn sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    if (NumOfBook > DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == book.MASACH).SingleOrDefault().SOLUONGHIENTAI)
                    {
                        MessageBox.Show("Số lượng sách trong kho không đủ để cung cấp.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    else
                        book.SOLUONG = NumOfBook;

                    book.GIABAN = BuyingPrice;
                    DataProvider.Ins.DB.SaveChanges();
                    IsAdding = true;
                    ButtonName = "Thêm sách";
                }
                else
                {
                    var book = new CTHOADON() { SOHD = SelectedItem.SOHD, MASACH = SelectedBook.MASACH, SOLUONG = NumOfBook, GIABAN = BuyingPrice };
                    if (DataProvider.Ins.DB.CTHOADONs.Where(x => x.MASACH == book.MASACH && x.SOHD == book.SOHD).Count() > 0)
                    {
                        MessageBox.Show("Đã thêm sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else if(book.SOLUONG > DataProvider.Ins.DB.SACHes.Where(x=>x.MASACH == book.MASACH).SingleOrDefault().SOLUONGHIENTAI)
                    {
                        MessageBox.Show("Số lượng sách trong kho không đủ để cung cấp.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        DataProvider.Ins.DB.CTHOADONs.Add(book);
                        DataProvider.Ins.DB.SaveChanges();
                        ListBillDetail.Add(book);
                    }
                }
                TotalPrice = UpdateTotalPrice();
                IsEnabledListView = true;
                IsEnabledCBBox = true;
            });
            EditCommand = new RelayCommand<Button>((p) => { return SelectedBillDetail == null ? false : true; }, (p) =>
            {
                IsAdding = false;
                IsEnabledListView = false;
                IsEnabledTextBox = true;
                IsEnabledCBBox = false;
                ButtonName = "Sửa dữ liệu";

            });
            SaveCommand = new RelayCommand<Button>((p) =>
            {
                if (IsEnabledListView)
                    return true;
                else
                    return false;
            }, (p) =>
            {
                var target = DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD);
                target.SingleOrDefault().TIENNHAN = MoneyReceipt;
                target.SingleOrDefault().TONGTIEN = UpdateTotalPrice();
                if (MoneyReceipt - TotalPrice > 0)
                    target.SingleOrDefault().TIENTHUA = MoneyReceipt - TotalPrice;
                else
                    target.SingleOrDefault().TIENTHUA = 0;
                DataProvider.Ins.DB.SaveChanges();
                UpdateNumOfBook();
                DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == CustomerID).SingleOrDefault().TIENNO = 0; // update temp value for property that set automatically
                DataProvider.Ins.DB.SaveChanges();
                IsEnabledListView = false;
                CurrentBill = null;
                isSaved = true;

            });
            DeleteBillCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var bill = DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD).SingleOrDefault();
                if (DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD).Count() > 0)
                {
                    DataProvider.Ins.DB.HOADONs.RemoveRange(DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD));
                    DataProvider.Ins.DB.SaveChanges();
                    ListBillDetail.Clear();
                }
                try
                {
                    DataProvider.Ins.DB.HOADONs.Remove(bill);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {
                }

                ListBill.Remove(SelectedItem);
            });
            DeleteBillDetailCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var billDetail = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedBillDetail.SOHD && x.MASACH == SelectedBillDetail.MASACH).SingleOrDefault();

                DataProvider.Ins.DB.CTHOADONs.Remove(billDetail);
                DataProvider.Ins.DB.SaveChanges();

                ListBillDetail.Remove(SelectedBillDetail);
            });
            ListBook =  new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes);
            ListBill = new ObservableCollection<HOADON>(DataProvider.Ins.DB.HOADONs);
            ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.KHACHHANGs);
        }

        decimal UpdateTotalPrice()
        {
            decimal sum = 0;
            var list = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD).ToList();
            if (list == null)
                return sum;
            foreach (var item in list)
            {
                sum += item.THANHTIEN;
            }
            return sum;
        }
        void UpdateNumOfBook()
        {
            var list = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD).ToList();
            if (list == null)
                return;
            foreach (var item in list)
            {
                DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == item.MASACH).SingleOrDefault().SOLUONGHIENTAI -= item.SOLUONG;
                DataProvider.Ins.DB.SaveChanges();
            }
            
        }
    }
}
