using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class DataBookViewModel:BookManagementWindowViewModel
    {
        public ICommand SaveCommand { get; set; }
        public ICommand SaveCommand2 { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand DeleteCommand2 { get; set; }
        public bool isAddding { get; set; }
        private string _publishingHouseID;
        public string PublishingHouseID { get { return _publishingHouseID; } set { _publishingHouseID = value; OnPropertyChanged(); } }

        private NHAXUATBAN _selectedItem;
        public NHAXUATBAN SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                _selectedItem = value;
                OnPropertyChanged();
                if (_selectedItem != null)
                {
                    var temp = DataProvider.Ins.DB.NHAXUATBANs.Where(x => x.MANXB == SelectedItem.MANXB && x.DIACHI == SelectedItem.DIACHI && x.TENNXB == SelectedItem.TENNXB);

                    if (temp.Count() > 0)
                        isAddding = false;
                    else
                        isAddding = true;
                }
            }
        }
        private LOAISACH _selectedTypeBook;
        public LOAISACH SelectedTypeBook
        {
            get { return _selectedTypeBook; }
            set
            {
                _selectedTypeBook = value;
                OnPropertyChanged();
                if (_selectedTypeBook != null)
                {
                    var temp = DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == SelectedTypeBook.MALOAISACH && x.TENLOAISACH == SelectedTypeBook.TENLOAISACH);

                    if (temp.Count() > 0)
                        isAddding = false;
                    else
                        isAddding = true;
                }
            }
        }
        private ObservableCollection<NHAXUATBAN> _listNXB;
        public ObservableCollection<NHAXUATBAN> ListNXB { get { return _listNXB; } set { _listNXB = value; OnPropertyChanged(); } }
        private ObservableCollection<LOAISACH> _listOfBookType;
        public ObservableCollection<LOAISACH> ListOfBookType { get { return _listOfBookType; } set { _listOfBookType = value; OnPropertyChanged(); } }
        public DataBookViewModel()
        {
            SaveCommand = new RelayCommand<DataGrid>((p) =>
            {
                return true;
            }, (p) =>
            {
                if (SelectedItem.MANXB == null)
                    return;
                var currentItem = DataProvider.Ins.DB.NHAXUATBANs.Where(x => x.MANXB == SelectedItem.MANXB);
                if (!isAddding)
                {
                    var publishingHouse = currentItem.SingleOrDefault();
                    try
                    {
                        publishingHouse.TENNXB = SelectedItem.TENNXB;
                        publishingHouse.DIACHI = SelectedItem.DIACHI;
                        DataProvider.Ins.DB.SaveChanges();

                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Sửa thành công";
                        mess2.ShowDialog();

                        //MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Information);
                        
                    }
                    catch (Exception)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Có lỗi xảy ra vui lòng KT lại";
                        mess2.ShowDialog();

                        //MessageBox.Show("Có lỗi xảy ra vui lòng KT lại", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    
                }
                else
                {
                    var PublishingHouse = new NHAXUATBAN() { MANXB = SelectedItem.MANXB, TENNXB = SelectedItem.TENNXB, DIACHI = SelectedItem.DIACHI };
                    if (DataProvider.Ins.DB.NHAXUATBANs.Where(x => x.MANXB == PublishingHouse.MANXB).Count() > 0)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Mã NXB đã tồn tại!";
                        mess2.ShowDialog();

                        //MessageBox.Show("Mã NXB đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        SelectedItem.MANXB = "";
                        SelectedItem.TENNXB = "";
                        SelectedItem.DIACHI = "";
                    }
                    else
                    {

                        try
                        {
                            DataProvider.Ins.DB.NHAXUATBANs.Add(PublishingHouse);
                            DataProvider.Ins.DB.SaveChanges();
                        }
                        catch (Exception)
                        {
                            MessageBoxWindow mess2 = new MessageBoxWindow();
                            mess2.Tag = "Mã Thể loại sách đã tồn tại!";
                            mess2.ShowDialog();

                            // MessageBox.Show("Mã Thể loại sách đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        }

                    }
                }
            });
            SaveCommand2 = new RelayCommand<DataGrid>((p) =>
            {
                return true;
            }, (p) =>
            {
                if (SelectedTypeBook.MALOAISACH == null)
                    return;
                var currentItem = DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == SelectedTypeBook.MALOAISACH);
                if (!isAddding)
                {
                    var bookType = currentItem.SingleOrDefault();
                    if (DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == bookType.MALOAISACH).Count() > 0)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Mã Thể loại sách đã tồn tại!";
                        mess2.ShowDialog();

                        //MessageBox.Show("Mã Thể loại sách đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    bookType.TENLOAISACH = SelectedTypeBook.TENLOAISACH;
                    DataProvider.Ins.DB.SaveChanges();
                }
                else
                {
                    
                    var bookType = new LOAISACH() { MALOAISACH = SelectedTypeBook.MALOAISACH, TENLOAISACH = SelectedTypeBook.TENLOAISACH };
                    if (DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == bookType.MALOAISACH).Count() > 0)
                    {
                        MessageBoxWindow mess2 = new MessageBoxWindow();
                        mess2.Tag = "Mã Thể loại sách đã tồn tại!";
                        mess2.ShowDialog();

                        //MessageBox.Show("Mã Thể loại sách đã tồn tại!", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        SelectedTypeBook.TENLOAISACH = "";
                    }
                    else
                    {

                        try
                        {
                            DataProvider.Ins.DB.LOAISACHes.Add(bookType);
                            DataProvider.Ins.DB.SaveChanges();
                        }
                        catch (Exception)
                        {
                            MessageBoxWindow mess2 = new MessageBoxWindow();
                            mess2.Tag = "Hãy điền đầy đủ thông tin";
                            mess2.ShowDialog();
                            //MessageBox.Show("Hãy điền đầy đủ thông tin", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                        }

                    }
                }
            });
            DeleteCommand = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var publishingHouse = DataProvider.Ins.DB.NHAXUATBANs.Where(x => x.MANXB == SelectedItem.MANXB).SingleOrDefault();
                try
                {
                    DataProvider.Ins.DB.NHAXUATBANs.Remove(publishingHouse);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {
                    MessageBoxWindow mess2 = new MessageBoxWindow();
                    mess2.Tag = "Không thể xóa giá trị này.";
                    mess2.ShowDialog();

                   // MessageBox.Show("Không thể xóa giá trị này.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                ListNXB.Remove(SelectedItem);
            });
            DeleteCommand2 = new RelayCommand<Button>((p) => { return true; }, (p) =>
            {
                var bookType = DataProvider.Ins.DB.LOAISACHes.Where(x => x.MALOAISACH == SelectedTypeBook.MALOAISACH).SingleOrDefault();
                try
                {
                    DataProvider.Ins.DB.LOAISACHes.Remove(bookType);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {
                    MessageBoxWindow mess2 = new MessageBoxWindow();
                    mess2.Tag = "Không thể xóa giá trị này.";
                    mess2.ShowDialog();

                    //MessageBox.Show("Không thể xóa giá trị này.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                ListOfBookType.Remove(SelectedTypeBook);
            });
            ListNXB = new ObservableCollection<NHAXUATBAN>(DataProvider.Ins.DB.NHAXUATBANs);
            ListOfBookType = new ObservableCollection<LOAISACH>(DataProvider.Ins.DB.LOAISACHes);
        }
    }
}
