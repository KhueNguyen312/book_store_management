using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace BookStoreManagerment.ViewModel
{
    public class AccountMngVM: BaseViewModel
    {
        private BitmapImage _img;

        public BitmapImage Img
        {
            get { return _img; }
            set
            {
                MessageBox.Show("Image has been updated.");
                _img = value;
                OnPropertyChanged("_img");
            }
        }
        private string _accountName;
        public string AccountName { get { return _accountName; } set { _accountName = value; OnPropertyChanged(); } }

        public AccountMngVM()
        {

        }
    }
}
