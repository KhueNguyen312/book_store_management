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
    public class BookImportViewVM:BusinessWindowVM
    {
        public ICommand AddCommand { get; set; }
        public ICommand AddBookCmd { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteReceiptNoteCommand { get; set; }
        public ICommand DeleteReceiptNoteDetailCommand { get; set; }

        public bool IsAdding { get; set; }
        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }

        private bool _isEnabledCBBox;
        public bool IsEnabledCBBox { get { return _isEnabledCBBox; } set { _isEnabledCBBox = value; OnPropertyChanged(); } }

        private bool _isEnabledListView;
        public bool IsEnabledListView { get { return _isEnabledListView; } set { _isEnabledListView = value; OnPropertyChanged(); } }

        private PHIEUNHAPSACH _selectedItem;
        public PHIEUNHAPSACH SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    IsEnabledTextBox = true;
                    IsEnabledCBBox = true;
                    ListReceiptNoteDetail = new ObservableCollection<CTPHIEUNHAP>(DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x=>x.MAPHIEUNHAP == SelectedItem.MAPHIEUNHAP));
                }
            }
        }

        private CTPHIEUNHAP _selectedReceiptNoteDetail;
        public CTPHIEUNHAP SelectedReceiptNoteDetail
        {
            get { return _selectedReceiptNoteDetail; }
            set
            {
                _selectedReceiptNoteDetail = value;
                OnPropertyChanged();
                if (_selectedReceiptNoteDetail != null)
                {
                    BookName = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedReceiptNoteDetail.MASACH).SingleOrDefault().TENSACH;
                    NumOfBook = SelectedReceiptNoteDetail.SOLUONG;
                    ImportPrice = SelectedReceiptNoteDetail.DONGIA;
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
                    ImportPrice = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == SelectedBook.MASACH).SingleOrDefault().GIANHAP;
                }
            }
        }

        private string _bookID;
        public string BookID { get { return _bookID; } set { _bookID = value; OnPropertyChanged(); } }

        private string _bookName;
        public string BookName { get { return _bookName; } set { _bookName = value; OnPropertyChanged(); } }

        private int _numOfBook;
        public int NumOfBook { get { return _numOfBook; } set { _numOfBook = value; OnPropertyChanged(); } }

        private decimal _importPrice;
        public decimal ImportPrice { get { return _importPrice; } set { _importPrice = value; OnPropertyChanged(); } }

        private ObservableCollection<CTPHIEUNHAP> _listReceiptNoteDetail;
        public ObservableCollection<CTPHIEUNHAP> ListReceiptNoteDetail { get { return _listReceiptNoteDetail; } set { _listReceiptNoteDetail = value; OnPropertyChanged(); } }

        private ObservableCollection<PHIEUNHAPSACH> _listReceiptNote;
        public ObservableCollection<PHIEUNHAPSACH> ListReceiptNote { get { return _listReceiptNote; } set { _listReceiptNote = value; OnPropertyChanged(); } }

        private ObservableCollection<SACH> _listBook;
        public ObservableCollection<SACH> ListBook { get { return _listBook; } set { _listBook = value; OnPropertyChanged(); } }

        public BookImportViewVM()
        {
            IsEnabledListView = true;
            AddCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsEnabledTextBox = true;
                IsEnabledCBBox = true;
                IsAdding = true;
                var receiptNote = new PHIEUNHAPSACH() {NGAYNHAP = DateTime.Now };
                DataProvider.Ins.DB.PHIEUNHAPSACHes.Add(receiptNote);
                DataProvider.Ins.DB.SaveChanges();

                ListReceiptNote.Add(receiptNote);
            });
            AddBookCmd = new RelayCommand<Button>((p) => 
            {
                if (SelectedBook == null || NumOfBook <1 || SelectedItem == null)
                    return false;
                else
                    return true;
            }, (p) =>
            {
                var book = new CTPHIEUNHAP() {MAPHIEUNHAP = SelectedItem.MAPHIEUNHAP, MASACH = SelectedBook.MASACH ,SOLUONG = NumOfBook, DONGIA = ImportPrice };
                if (DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x => x.MASACH == book.MASACH && x.MAPHIEUNHAP == book.MAPHIEUNHAP).Count() > 0)
                {
                    MessageBox.Show("Đã thêm sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    DataProvider.Ins.DB.CTPHIEUNHAPs.Add(book);
                    try
                    {
                        DataProvider.Ins.DB.SaveChanges();
                    }
                    catch (Exception)
                    {
                    }
                    ListReceiptNoteDetail.Add(book);
                }
            });
            EditCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsAdding = false;
                IsEnabledListView = false;
                IsEnabledTextBox = true;
                IsEnabledCBBox = false;
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
                if (!IsAdding)
                {
                    var book = DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x => x.MASACH == SelectedReceiptNoteDetail.MASACH && x.MAPHIEUNHAP == SelectedReceiptNoteDetail.MAPHIEUNHAP).SingleOrDefault();
                    if (book == null)
                    {
                        MessageBox.Show("Không tìm thấy cuôn sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    book.SOLUONG = NumOfBook;
                    book.DONGIA = ImportPrice;
                    DataProvider.Ins.DB.SaveChanges();
                    IsAdding = true;
                }
            });
            DeleteReceiptNoteCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var receiptNote = DataProvider.Ins.DB.PHIEUNHAPSACHes.Where(x => x.MAPHIEUNHAP == SelectedItem.MAPHIEUNHAP).SingleOrDefault();
                if(DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x=>x.MAPHIEUNHAP == SelectedItem.MAPHIEUNHAP).Count()>0)
                {
                    DataProvider.Ins.DB.CTPHIEUNHAPs.RemoveRange(DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x => x.MAPHIEUNHAP == SelectedItem.MAPHIEUNHAP));
                    DataProvider.Ins.DB.SaveChanges();
                    ListReceiptNoteDetail.Clear();
                }
                DataProvider.Ins.DB.PHIEUNHAPSACHes.Remove(receiptNote);
                DataProvider.Ins.DB.SaveChanges();

                ListReceiptNote.Remove(SelectedItem);
            });
            DeleteReceiptNoteDetailCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var receiptNoteDetail = DataProvider.Ins.DB.CTPHIEUNHAPs.Where(x => x.MAPHIEUNHAP == SelectedReceiptNoteDetail.MAPHIEUNHAP).SingleOrDefault();

                DataProvider.Ins.DB.CTPHIEUNHAPs.Remove(receiptNoteDetail);
                DataProvider.Ins.DB.SaveChanges();

                ListReceiptNoteDetail.Remove(SelectedReceiptNoteDetail);
            });
            ListBook = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes);
            ListReceiptNote = new ObservableCollection<PHIEUNHAPSACH>(DataProvider.Ins.DB.PHIEUNHAPSACHes);
        }

    }
}
