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

namespace BookStoreManagerment.ViewModel
{
    public class SellBookViewVM:BusinessWindowVM
    {

        public ICommand AddCommand { get; set; }
        public ICommand AddBookCmd { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand BookIDChangedCommand { get; set; }
        public ICommand CustomerIDChangedCommand { get; set; }

        public ICommand ReceiptChangedCommand { get; set; }

        public ICommand DeleteBillCommand { get; set; }
        public ICommand DeleteBillDetailCommand { get; set; }
        public bool IsAdding { get; set; }
        public bool isSaved { get; set; }
        public HOADON CurrentBill { get; set; }

        private bool _EnteredCusID;
        public bool EnteredCusID { get { return _EnteredCusID; } set { _EnteredCusID = value; OnPropertyChanged(); } }
        private bool _SaveButtonEnable = false;
        public bool SaveButtonEnable { get { return _SaveButtonEnable; } set { _SaveButtonEnable = value; OnPropertyChanged(); } }
        //private bool _isEnabledCBBox;
        //public bool IsEnabledCBBox { get { return _isEnabledCBBox; } set { _isEnabledCBBox = value; OnPropertyChanged(); } }
        //private bool _isEnabledCustomerCBBox;
        //public bool IsEnabledCustomerCBBox { get { return _isEnabledCustomerCBBox; } set { _isEnabledCustomerCBBox = value; OnPropertyChanged(); } }
        //private bool _isEnabledListView;
        //public bool IsEnabledListView { get { return _isEnabledListView; } set { _isEnabledListView = value; OnPropertyChanged(); } }
        //private bool _isEnabledBillListView;
        //public bool IsEnabledBillListView { get { return _isEnabledBillListView; } set { _isEnabledBillListView = value; OnPropertyChanged(); } }

        private int _BillId;
        public int BillId { get { return _BillId; } set { _BillId = value; OnPropertyChanged(); } }

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

        private int _numOfBook = 1;
        public int NumOfBook { get { return _numOfBook; } set { _numOfBook = value; OnPropertyChanged(); } }

        private decimal _buyingPrice;
        public decimal BuyingPrice { get { return _buyingPrice; } set { _buyingPrice = value; OnPropertyChanged(); } }

        private decimal _Change;
        public decimal Change { get { return _Change; } set { _Change = value; OnPropertyChanged(); } }

        private string _bookName;
        public string BookName { get { return _bookName; } set { _bookName = value; OnPropertyChanged(); } }
        private decimal _moneyReceipt;
        public decimal MoneyReceipt { get { return _moneyReceipt; } set { _moneyReceipt = value;
                OnPropertyChanged(); } }
        private decimal _totalPrice;
        public decimal TotalPrice { get { return _totalPrice; } set { _totalPrice = value; OnPropertyChanged(); } }



        private bool _isActiveSnackBar;
        public bool IsActiveSnackBar { get { return _isActiveSnackBar; } set { _isActiveSnackBar = value; OnPropertyChanged(); } }

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
                    //if (CurrentBill != null && SelectedItem == CurrentBill)
                    //    IsEnabledListView = true;
                    //else
                    //    IsEnabledListView = false;
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
                    var book = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedBook.MASACH).SingleOrDefault();
                    if (book.GIAMGIA == 0)
                        BuyingPrice = book.GIABAN;
                    else
                        BuyingPrice = (book.GIABAN * book.GIAMGIA??0)/100;
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

            //ButtonName = "Thêm Sách";
            //isSaved = true;
            //IsEnabledBillListView = true;
            //IsEnabledCustomerCBBox = true;
            //AddCommand = new RelayCommand<Button>((p) => { return isSaved && SelectedCustomer != null ? true : false; }, (p) =>
            //{
            //    IsEnabledTextBox = true;
            //    IsEnabledCustomerCBBox = false;
            //    IsEnabledCBBox = true;
            //    IsEnabledListView = true;
            //    IsAdding = true;
            //    isSaved = false;
            //    var bill = new HOADON() { MAKH = SelectedCustomer.MAKH, NGAYHD = DateTime.Now, TONGTIEN = 0 };
            //    CurrentBill = bill;
            //    SelectedItem = CurrentBill;
            //    DataProvider.Ins.DB.HOADONs.Add(bill);
            //    DataProvider.Ins.DB.SaveChanges();

            //    ListBill.Add(bill);
            //});
            //AddBookCmd = new RelayCommand<Button>((p) =>
            //{
            //    if (SelectedBook == null || NumOfBook < 1 || SelectedItem == null)
            //        return false;
            //    else
            //        return true;
            //}, (p) =>
            //{
            //    if (!IsAdding)
            //    {
            //        var book = DataProvider.Ins.DB.CTHOADONs.Where(x => x.MASACH == SelectedBillDetail.MASACH && x.SOHD == SelectedBillDetail.SOHD).SingleOrDefault();
            //        if (book == null)
            //        {
            //            MessageBoxWindow mess2 = new MessageBoxWindow();
            //            mess2.Tag = "Nhập lại mật khẩu không khớp với mật khẩu đã nhập!";
            //            mess2.ShowDialog();

            //            //MessageBox.Show("Không tìm thấy cuôn sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            //            return;
            //        }
            //        if (NumOfBook > DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == book.MASACH).SingleOrDefault().SOLUONGHIENTAI)
            //        {
            //            MessageBoxWindow mess2 = new MessageBoxWindow();
            //            mess2.Tag = "Nhập lại mật khẩu không khớp với mật khẩu đã nhập!";
            //            mess2.ShowDialog();

            //            //MessageBox.Show("Số lượng sách trong kho không đủ để cung cấp.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            //            return;
            //        }
            //        else
            //            book.SOLUONG = NumOfBook;

            //        book.GIABAN = BuyingPrice;
            //        DataProvider.Ins.DB.SaveChanges();
            //        IsAdding = true;
            //        ButtonName = "Thêm sách";
            //    }
            //    else
            //    {
            //        var book = new CTHOADON() { SOHD = SelectedItem.SOHD, MASACH = SelectedBook.MASACH, SOLUONG = NumOfBook, GIABAN = BuyingPrice };
            //        if (DataProvider.Ins.DB.CTHOADONs.Where(x => x.MASACH == book.MASACH && x.SOHD == book.SOHD).Count() > 0)
            //        {
            //            MessageBoxWindow mess2 = new MessageBoxWindow();
            //            mess2.Tag = "Đã thêm sách này";
            //            mess2.ShowDialog();

            //            //MessageBox.Show("Đã thêm sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            //        }
            //        else if(book.SOLUONG > DataProvider.Ins.DB.SACHes.Where(x=>x.MASACH == book.MASACH).SingleOrDefault().SOLUONGHIENTAI)
            //        {
            //            MessageBoxWindow mess2 = new MessageBoxWindow();
            //            mess2.Tag = "Số lượng sách trong kho không đủ để cung cấp.";
            //            mess2.ShowDialog();

            //           // MessageBox.Show("Số lượng sách trong kho không đủ để cung cấp.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            //        }
            //        else
            //        {
            //            DataProvider.Ins.DB.CTHOADONs.Add(book);
            //            DataProvider.Ins.DB.SaveChanges();
            //            ListBillDetail.Add(book);
            //        }
            //    }
            //    //TotalPrice ;
            //    IsEnabledListView = true;
            //    IsEnabledCBBox = true;

            //});
            //EditCommand = new RelayCommand<Button>((p) => { return SelectedBillDetail == null ? false : true; }, (p) =>
            //{
            //    IsAdding = false;
            //    IsEnabledListView = false;
            //    IsEnabledTextBox = true;
            //    IsEnabledCBBox = false;
            //    ButtonName = "Sửa dữ liệu";

            // });
            //SaveCommand = new RelayCommand<Button>((p) =>
            //{
            //    if (IsEnabledListView && TotalPrice <= MoneyReceipt)
            //        return true;
            //    else
            //        return false;
            //}, (p) =>
            //{
            //    //var target = DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD);
            //    //target.SingleOrDefault().TIENNHAN = MoneyReceipt;
            //    //target.SingleOrDefault().TONGTIEN = UpdateTotalPrice();
            //    //if (MoneyReceipt - TotalPrice > 0)
            //    //    target.SingleOrDefault().TIENTHUA = MoneyReceipt - TotalPrice;
            //    //else
            //    //{
            //    //    target.SingleOrDefault().TIENTHUA = 0;
            //    //    DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == CustomerID).SingleOrDefault().TIENNO += TotalPrice - MoneyReceipt; // update temp value for property that set automatically
            //    //}
            //    //DataProvider.Ins.DB.SaveChanges();
            //    //UpdateNumOfBook();

            //    IsEnabledListView = false;
            //    //CurrentBill = null;
            //    isSaved = true;

            //});
            //DeleteBillCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            //{
            //    var bill = DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD).SingleOrDefault();
            //    if (DataProvider.Ins.DB.HOADONs.Where(x => x.SOHD == SelectedItem.SOHD).Count() > 0)
            //    {
            //        DataProvider.Ins.DB.CTHOADONs.RemoveRange(DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD));
            //        DataProvider.Ins.DB.SaveChanges();
            //        ListBillDetail.Clear();
            //    }
            //    try
            //    {
            //        DataProvider.Ins.DB.HOADONs.Remove(bill);
            //        DataProvider.Ins.DB.SaveChanges();
            //    }
            //    catch (Exception)
            //    {
            //    }

            //    ListBill.Remove(SelectedItem);
            //});



            BookIDChangedCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
            if (DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == BookID).Count() > 0)
            {
                BuyingPrice = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == BookID).SingleOrDefault().GIABAN;

               
                    DataProvider.Ins.DB.Database.ExecuteSqlCommand("THEM_CTHD @SOHD, @MASACH, @SOLUONGBAN",
                        new SqlParameter("@SOHD", BillId),
                        new SqlParameter("@MASACH", BookID),
                        new SqlParameter("@SOLUONGBAN", NumOfBook)
                        );
                
               

                ListBill = new ObservableCollection<HOADON>(DataProvider.Ins.DB.Database.SqlQuery<HOADON>("SELECT * FROM HOADON"));
                ListBillDetail = new ObservableCollection<CTHOADON>(DataProvider.Ins.DB.Database.SqlQuery<CTHOADON>("SELECT * FROM CTHOADON WHERE SOHD = @SOHD", new SqlParameter("@SOHD", BillId)));
                // IsEnabledCBBox = false;
                DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == BookID).SingleOrDefault().SOLUONGHIENTAI -= NumOfBook;
                DataProvider.Ins.DB.SaveChanges();

                    BuyingPrice = DataProvider.Ins.DB.CTHOADONs.Where(x => x.MASACH == BookID && x.SOHD == BillId).SingleOrDefault().GIABAN;

                    TotalPrice += BuyingPrice * NumOfBook;
                }
            });

            CustomerIDChangedCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                IsActiveSnackBar = false;
                if(DataProvider.Ins.DB.KHACHHANGs.Where(x=>x.MAKH == CustomerID).Count() > 0)
                {
                    DataProvider.Ins.DB.Database.ExecuteSqlCommand("THEM_HOADON @MAKH", new SqlParameter("@MAKH", CustomerID));
                    ListBill = new ObservableCollection<HOADON>( DataProvider.Ins.DB.Database.SqlQuery<HOADON>("SELECT * FROM HOADON"));

                    EnteredCusID = true;

                    TotalPrice = 0;
                    CustomerName = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == CustomerID).SingleOrDefault().TENKH;

                    BillId = DataProvider.Ins.DB.Database.SqlQuery<int>("SELECT MAX(SOHD) FROM HOADON").First();
            // IsEnabledCBBox = false;
                }
            });

            ReceiptChangedCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                if (MoneyReceipt >= TotalPrice)
                {
                    Change = MoneyReceipt - TotalPrice;
                    
                    SaveButtonEnable = true;
                }
                else
                {
                    SaveButtonEnable = false;
                }
            });

            SaveCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                
                DataProvider.Ins.DB.Database.ExecuteSqlCommand("UPDATE HOADON SET TIENTHUA = @TIENNHAN - TONGTIEN WHERE SOHD = @SOHD UPDATE HOADON SET TIENNHAN = @TIENNHAN WHERE SOHD = @SOHD ", new SqlParameter("@TIENNHAN", MoneyReceipt), new SqlParameter("@SOHD", BillId));
                ListBill = new ObservableCollection<HOADON>(DataProvider.Ins.DB.Database.SqlQuery<HOADON>("SELECT * FROM HOADON"));
                //MessageBoxWindow mess1 = new MessageBoxWindow();
                //mess1.Tag = "Lưu hóa đơn thành công";
                //mess1.ShowDialog();

                IsActiveSnackBar = true;

            });


            //DeleteBillDetailCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            //{
            //    var billDetail = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedBillDetail.SOHD && x.MASACH == SelectedBillDetail.MASACH).SingleOrDefault();

            //    DataProvider.Ins.DB.CTHOADONs.Remove(billDetail);
            //    DataProvider.Ins.DB.SaveChanges();

            //    ListBillDetail.Remove(SelectedBillDetail);
            //});
            //ListBook =  new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes);
            //ListBill = new ObservableCollection<HOADON>(DataProvider.Ins.DB.HOADONs);
            //ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.KHACHHANGs);
        }

        //decimal UpdateTotalPrice()
        //{
        //    decimal sum = 0;
        //    var list = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD).ToList();
        //    if (list == null)
        //        return sum;
        //    foreach (var item in list)
        //    {
        //        sum += item.THANHTIEN;
        //    }
        //    return sum;
        //}
        //void UpdateNumOfBook()
        //{
        //    var list = DataProvider.Ins.DB.CTHOADONs.Where(x => x.SOHD == SelectedItem.SOHD).ToList();
        //    if (list == null)
        //        return;
        //    foreach (var item in list)
        //    {
        //        DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == item.MASACH).SingleOrDefault().SOLUONGHIENTAI -= item.SOLUONG;
        //        DataProvider.Ins.DB.SaveChanges();
        //    }
            
        //}
    }
}
