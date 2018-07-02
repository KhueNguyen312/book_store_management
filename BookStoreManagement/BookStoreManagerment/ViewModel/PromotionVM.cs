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

            
            ID = DataProvider.Ins.DB.Database.SqlQuery<string>("MAKMTIEPTHEO").First();

            ListPromotion = new ObservableCollection<KHUYENMAI>(DataProvider.Ins.DB.Database.SqlQuery<KHUYENMAI>("SELECT * FROM KHUYENMAI"));
            ListPromotionDetail = new ObservableCollection<CTKHUYENMAI>(DataProvider.Ins.DB.Database.SqlQuery<CTKHUYENMAI>("SELECT * FROM CTKHUYENMAI WHERE MAKM = @ID", new SqlParameter("@ID", ID)));

            StartDate = EndDate = DateTime.Now;
            AddCmd = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                if (StartDate < EndDate)
                {
                    

                    try
                    {


                        DataProvider.Ins.DB.Database.ExecuteSqlCommand("THEM_KM @MAKM, @TENKM, @NGAYBD, @NGAYKT",
                            new SqlParameter("@MAKM", ID),
                            new SqlParameter("@TENKM", Name),
                            new SqlParameter("@NGAYBD", StartDate),
                            new SqlParameter("@NGAYKT", EndDate));

                        ListPromotion = new ObservableCollection<KHUYENMAI>(DataProvider.Ins.DB.Database.SqlQuery<KHUYENMAI>("SELECT * FROM KHUYENMAI WHERE MAKM = @ID", new SqlParameter("@ID", ID)));

                        PromotionDetailWindow window = new PromotionDetailWindow();
                        window.DataContext = new PromotionDetailWindowVM(ID);
                        window.ShowDialog();


                    }
                    catch
                    {
                        MessageBoxWindow mess1 = new MessageBoxWindow();
                        mess1.Tag = "Không được trùng mã KM";
                        mess1.ShowDialog();
                    }
                    
                }
                else
                {
                    MessageBoxWindow mess2 = new MessageBoxWindow();
                    mess2.Tag = "Ngày bắt đầu phải nhỏ hơn ngày kết thúc";
                    mess2.ShowDialog();
                   // System.Windows.MessageBox.Show("Ngày bắt đầu phải nhỏ hơn ngày kết thúc", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            });
            
        }
    }
}
