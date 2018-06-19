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
    public class PromotionVM:BusinessWindowVM
    {
        public ICommand AddCmd { get; set; }
        private string _iD;
        public string ID { get { return _iD; } set { _iD = value; OnPropertyChanged(); } }

        private string _name;
        public string Name { get { return _name; } set { _name = value; OnPropertyChanged(); } }
        private DateTime _startDate;
        public DateTime StartDate { get { return _startDate; } set { _startDate = value; OnPropertyChanged(); } }
        private DateTime _endDate;
        public DateTime EndDate { get { return _endDate; } set { _endDate = value; OnPropertyChanged(); } }
        private KHUYENMAI _selectedItem;
        public KHUYENMAI SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    ListPromotionDetail = new ObservableCollection<CTKHUYENMAI>(DataProvider.Ins.DB.CTKHUYENMAIs.Where(x=>x.MAKM == SelectedItem.MAKM));
                    StartDate = SelectedItem.NGAYBD;
                    EndDate = SelectedItem.NGAYKT;
                    ID = SelectedItem.MAKM;
                    Name = SelectedItem.TENKM;
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
                    
                }
            }
        }
        private ObservableCollection<CTKHUYENMAI> _listPromotionDetail;
        public ObservableCollection<CTKHUYENMAI> ListPromotionDetail { get { return _listPromotionDetail; } set { _listPromotionDetail = value; OnPropertyChanged(); } }
        private ObservableCollection<KHUYENMAI> _listPromotion;
        public ObservableCollection<KHUYENMAI> ListPromotion { get { return _listPromotion; } set { _listPromotion = value; OnPropertyChanged(); } }
        private ObservableCollection<SACH> _listBook;
        public ObservableCollection<SACH> ListBook { get { return _listBook; } set { _listBook = value; OnPropertyChanged(); } }
        public PromotionVM()
        {
            StartDate = EndDate = DateTime.Now;
            AddCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                if (StartDate < EndDate)
                {
                    var promotionProgram = new KHUYENMAI() { MAKM = ID, TENKM = Name, NGAYBD = StartDate, NGAYKT = EndDate };
                    if (DataProvider.Ins.DB.KHUYENMAIs.Where(x => x.MAKM == promotionProgram.MAKM).Count() > 0)
                    {
                        System.Windows.MessageBox.Show("Khuyến mãi này đã tồn tại", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    else
                    {
                        DataProvider.Ins.DB.KHUYENMAIs.Add(promotionProgram);
                        DataProvider.Ins.DB.SaveChanges();
                        ListPromotion.Add(promotionProgram);
                        PromotionDetailWindow window = new PromotionDetailWindow();
                        window.DataContext = new PromotionDetailWindowVM(ID);
                        window.ShowDialog();
                    }
                }
                else
                    System.Windows.MessageBox.Show("Ngày bắt đầu phải nhỏ hơn ngày kết thúc", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            });
            ListPromotion = new ObservableCollection<KHUYENMAI>(DataProvider.Ins.DB.KHUYENMAIs);
        }
    }
}
