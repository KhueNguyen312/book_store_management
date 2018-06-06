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
    public class MoneyCollectionViewVM:BusinessWindowVM
    {
        public ICommand AddCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        private string _iD;
        public string ID { get { return _iD; } set { _iD = value; OnPropertyChanged(); } }

        private string _customerID;
        public string CustomerID { get { return _customerID; } set { _customerID = value; OnPropertyChanged(); } }
        private string _customerName;
        public string CustomerName { get { return _customerName; } set { _customerName = value; OnPropertyChanged(); } }
        private decimal? _debt;
        public decimal? Debt { get { return _debt; } set { _debt = value; OnPropertyChanged(); } }
        private decimal? _collection;
        public decimal? Collection { get { return _collection; } set { _collection = value; OnPropertyChanged(); } }
        private DateTime _date;
        public DateTime Date { get { return _date; } set { _date = value; OnPropertyChanged(); } }
        private PHIEUTHUTIEN _selectedItem;
        public PHIEUTHUTIEN SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    ID = SelectedItem.MAPT;
                    CustomerID = SelectedItem.MAKH;
                    CustomerName = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == CustomerID).SingleOrDefault().TENKH;
                    Debt = SelectedItem.TIENNO;
                    Collection = SelectedItem.TIENTHU;
                    Date = SelectedItem.NGAYTHU;
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
                    CustomerID = SelectedCustomer.MAKH;
                    Debt = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == SelectedCustomer.MAKH).SingleOrDefault().TIENNO;
                }
            }
        }
        private ObservableCollection<KHACHHANG> _listCustomer;
        public ObservableCollection<KHACHHANG> ListCustomer { get { return _listCustomer; } set { _listCustomer = value; OnPropertyChanged(); } }
        private ObservableCollection<PHIEUTHUTIEN> _listMoneyCollection;
        public ObservableCollection<PHIEUTHUTIEN> ListMoneyCollection { get { return _listMoneyCollection; } set { _listMoneyCollection = value; OnPropertyChanged(); } }
        public MoneyCollectionViewVM()
        {
            Date = DateTime.Today;
            AddCommand = new RelayCommand<Button>((p) => { return SelectedCustomer != null && Collection != null && ID !=null && Date !=null ? true : false; }, (p) =>
            {
                var receiptNote = new PHIEUTHUTIEN() { MAPT = ID, MAKH = CustomerID, TIENNO=Debt,TIENTHU = Collection, NGAYTHU = DateTime.Now };
                if (DataProvider.Ins.DB.PHIEUTHUTIENs.Where(x=>x.MAPT == receiptNote.MAPT).Count()>0)
                {
                    MessageBox.Show("Mã phiếu thu bị trùng", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {    
                    DataProvider.Ins.DB.PHIEUTHUTIENs.Add(receiptNote);
                    DataProvider.Ins.DB.SaveChanges();
                    ListMoneyCollection.Add(receiptNote);
                    DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == SelectedCustomer.MAKH).SingleOrDefault().TIENNO = 0; // update
                    DataProvider.Ins.DB.SaveChanges();


                }
            });
            DeleteCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var receiptNote = DataProvider.Ins.DB.PHIEUTHUTIENs.Where(x => x.MAPT == SelectedItem.MAPT).SingleOrDefault();
                DataProvider.Ins.DB.PHIEUTHUTIENs.Remove(receiptNote);
                DataProvider.Ins.DB.SaveChanges();

                ListMoneyCollection.Remove(SelectedItem);
            });
            ListMoneyCollection = new ObservableCollection<PHIEUTHUTIEN>(DataProvider.Ins.DB.PHIEUTHUTIENs);
            ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.KHACHHANGs);
        }
    }
}
