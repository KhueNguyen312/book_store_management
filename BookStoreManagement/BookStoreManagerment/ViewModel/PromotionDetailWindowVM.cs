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
    class PromotionDetailWindowVM:BusinessWindowVM
    {
        public ICommand AddBookCmd { get; set; }
        public ICommand AddGroupCmd { get; set; }
        public ICommand SaveCmd { get; set; }

        private string _iD;
        public string ID { get { return _iD; } set { _iD = value; OnPropertyChanged(); } }
        private string _bookTypeID;
        public string BookTypeID { get { return _bookTypeID; } set { _bookTypeID = value; OnPropertyChanged(); } }

        private string _bookName;
        public string BookName { get { return _bookName; } set { _bookName = value; OnPropertyChanged(); } }
        private string _bookTypeName;
        public string BookTypeName { get { return _bookTypeName; } set { _bookTypeName = value; OnPropertyChanged(); } }
        private int _promotionPercent;
        public int PromotionPercent { get { return _promotionPercent; } set { _promotionPercent = value; OnPropertyChanged(); } }
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
                    ID = SelectedBook.MASACH;
                }
            }
        }
        private LOAISACH _selectedBookType;
        public LOAISACH SelectedBookType
        {
            get { return _selectedBookType; }
            set
            {
                _selectedBookType = value;
                OnPropertyChanged();
                if (_selectedBookType != null)
                {
                    BookTypeID = SelectedBookType.MALOAISACH;
                }
            }
        }
        private ObservableCollection<SACH> _listBook;
        public ObservableCollection<SACH> ListBook { get { return _listBook; } set { _listBook = value; OnPropertyChanged(); } }
        private ObservableCollection<LOAISACH> _listBookType;
        public ObservableCollection<LOAISACH> ListBookType { get { return _listBookType; } set { _listBookType = value; OnPropertyChanged(); } }
        private ObservableCollection<CTKHUYENMAI> _listPromotionDetail;
        public ObservableCollection<CTKHUYENMAI> ListPromotionDetail { get { return _listPromotionDetail; } set { _listPromotionDetail = value; OnPropertyChanged(); } }
        public PromotionDetailWindowVM(string maKM)
        {
            AddBookCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var book = new CTKHUYENMAI() { MAKM = maKM, MASACH = ID, SOLUONGGIAM = PromotionPercent };
                if (DataProvider.Ins.DB.CTKHUYENMAIs.Where(x => x.MASACH == book.MASACH && x.MAKM == book.MAKM).Count() > 0)
                {
                    System.Windows.MessageBox.Show("Đã thêm sách này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    DataProvider.Ins.DB.CTKHUYENMAIs.Add(book);
                    ListPromotionDetail.Add(book);
                    DataProvider.Ins.DB.SaveChanges();
                }
            });
            AddGroupCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var list = DataProvider.Ins.DB.SACHes.Where(x => x.MALOAISACH == BookTypeID).ToList();
                foreach (var item in list)
                {
                    if (item.GIAMGIA == 0 || item.GIAMGIA == null)
                    {
                        var book = new CTKHUYENMAI() { MAKM = maKM, MASACH = item.MASACH, SOLUONGGIAM = PromotionPercent };
                        if (DataProvider.Ins.DB.CTKHUYENMAIs.Where(x => x.MASACH == book.MASACH && x.MAKM == book.MAKM).Count() > 0)
                        {

                        }
                        else
                        {
                            DataProvider.Ins.DB.CTKHUYENMAIs.Add(book);
                            ListPromotionDetail.Add(book);
                            DataProvider.Ins.DB.SaveChanges();
                        }
                    }
                }
            });
            SaveCmd = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                UpdateBook(maKM);
                p.Close();
            });
            ListPromotionDetail = new ObservableCollection<CTKHUYENMAI>(DataProvider.Ins.DB.CTKHUYENMAIs.Where(x=>x.MAKM == maKM));
            ListBook = new ObservableCollection<SACH>(DataProvider.Ins.DB.SACHes.Where(x=>x.GIAMGIA == 0 || x.GIAMGIA == null));
            ListBookType = new ObservableCollection<LOAISACH>(DataProvider.Ins.DB.LOAISACHes);
        }
        public PromotionDetailWindowVM()
        {

        }
        void UpdateBook(string maKM)
        {
            var list = DataProvider.Ins.DB.CTKHUYENMAIs.Where(x => x.MAKM == maKM).ToList();
            if (list == null)
                return;
            foreach (var item in list)
            {
                DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == item.MASACH).SingleOrDefault().GIAMGIA = item.SOLUONGGIAM;
                DataProvider.Ins.DB.SaveChanges();
            }
        }
    }
}
