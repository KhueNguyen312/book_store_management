﻿using BookStoreManagerment.Model;
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
    public class CustomerMngViewVM:BookManagementWindowViewModel
    {
        
        public ICommand AddCommand { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand SearchCmd { get; set; }
        private bool _isAdding;
        public bool IsAdding { get { return _isAdding; } set { _isAdding = value; OnPropertyChanged(); } }

        private bool _isEnabledListView;
        public bool IsEnabledListView { get { return _isEnabledListView; } set { _isEnabledListView = value; OnPropertyChanged(); } }

        private bool _isEnabledTextBox;
        public bool IsEnabledTextBox { get { return _isEnabledTextBox; } set { _isEnabledTextBox = value; OnPropertyChanged(); } }

        private bool _isEnabledIDTextBox;
        public bool IsEnabledIDTextBox { get { return _isEnabledIDTextBox; } set { _isEnabledIDTextBox = value; OnPropertyChanged(); } }

        private ObservableCollection<KHACHHANG> _listCustomer;
        public ObservableCollection<KHACHHANG> ListCustomer { get { return _listCustomer; } set { _listCustomer = value; OnPropertyChanged(); } }

        private KHACHHANG _selectedItem;
        public KHACHHANG SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if(_selectedItem != null)
                {
                    ID = SelectedItem.MAKH;
                    NameOfCustomer = SelectedItem.TENKH;
                    Address = SelectedItem.DIACHI;
                    PhoneNumber = SelectedItem.SODIENTHOAI;
                    Mail = SelectedItem.EMAIL;
                    Debt = SelectedItem.TIENNO;
                }
            }
        }

        private string _iD;
        public string ID { get { return _iD; } set { _iD = value; OnPropertyChanged(); } }

        private string _nameOfCustomer;
        public string NameOfCustomer { get { return _nameOfCustomer; } set { _nameOfCustomer = value; OnPropertyChanged(); } }

        private string _address;
        public string Address { get { return _address; } set { _address = value; OnPropertyChanged(); } }

        private string _phoneNumber;
        public string PhoneNumber { get { return _phoneNumber; } set { _phoneNumber = value; OnPropertyChanged(); } }

        private string _mail;
        public string Mail { get { return _mail; } set { _mail = value; OnPropertyChanged(); } }

        private decimal? _debt;
        public decimal? Debt { get { return _debt; } set { _debt = value; OnPropertyChanged(); } }

        public CustomerMngViewVM()
        {
            IsEnabledListView = true;
            IsAdding = true;
            AddCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                IsEnabledListView = false;
                IsEnabledTextBox = true;
                IsEnabledIDTextBox = true;

                ID = DataProvider.Ins.DB.Database.SqlQuery<string>("MAKHTIEPTHEO").First();

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
                    var customer = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == SelectedItem.MAKH).SingleOrDefault();
                    if(customer == null)
                    {
                        MessageBox.Show("Không tìm thấy khách hàng này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    customer.TENKH = NameOfCustomer;
                    customer.DIACHI = Address;
                    customer.SODIENTHOAI = PhoneNumber;
                    customer.EMAIL = Mail;
                    customer.TIENNO = Debt;
                    try
                    {
                        DataProvider.Ins.DB.SaveChanges();
                        ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.Database.SqlQuery<KHACHHANG>("GET_KH").OrderByDescending(x => x.MAKH == ID));
                    }
                    catch (Exception)
                    {

                        MessageBox.Show("Trường giá trị vượt quá giới hạn cho phép", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    
                    IsAdding = true;
                }
                else
                {
                   
                    var customer = new KHACHHANG() { MAKH = ID, TENKH = NameOfCustomer, DIACHI = Address, EMAIL = Mail, SODIENTHOAI = PhoneNumber, TIENNO = Debt };
                    if (DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == customer.MAKH).Count() > 0)
                    {
                        MessageBox.Show("Mã Khách hàng đã tồn tại!", "Lỗi",MessageBoxButton.OK,MessageBoxImage.Error);
                    }
                    else
                    {
                        DataProvider.Ins.DB.KHACHHANGs.Add(customer);
                        
                        try
                        {
                            DataProvider.Ins.DB.SaveChanges();
                            ListCustomer.Add(customer);
                            ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.Database.SqlQuery<KHACHHANG>("GET_KH").OrderByDescending(x => x.MAKH == ID));

                        }
                        catch (Exception)
                        {
                            MessageBox.Show("Trường giá trị vượt quá giới hạn cho phép", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
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
            DeleteCommand = new RelayCommand<Button>((p) =>{return true;}, (p) =>
            {
                var customer = DataProvider.Ins.DB.KHACHHANGs.Where(x => x.MAKH == SelectedItem.MAKH).SingleOrDefault();
                DataProvider.Ins.DB.KHACHHANGs.Remove(customer);
                try
                {
                    DataProvider.Ins.DB.SaveChanges();

                    ListCustomer.Remove(SelectedItem);
                }
                catch (Exception)
                {

                    MessageBox.Show("Không thể xóa khách hàng này", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                
            });
            SearchCmd = new RelayCommand<TextBox>((p) => { return true; }, (p) =>
            {
                if (p.Text != "")
                {
                    var newList = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.Database.SqlQuery<KHACHHANG>("USP_TIMKHTHEOTEN @TEN", new SqlParameter("TEN", p.Text)));
                    ListCustomer = newList;
                }
                else
                {
                    var newList = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.KHACHHANGs);
                    ListCustomer = newList;
                }
            });
            ListCustomer = new ObservableCollection<KHACHHANG>(DataProvider.Ins.DB.KHACHHANGs);
        }
    }
}
