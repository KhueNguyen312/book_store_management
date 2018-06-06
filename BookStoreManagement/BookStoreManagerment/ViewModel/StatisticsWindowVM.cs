using BookStoreManagerment.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace BookStoreManagerment.ViewModel
{
    public class StatisticsWindowVM:BaseViewModel
    {
        private ObservableCollection<USP_DOANHTHUSACHTRONGTHANG_Result> _listReveneuBook;
        public ObservableCollection<USP_DOANHTHUSACHTRONGTHANG_Result> ListReveneuBook { get { return _listReveneuBook; } set { _listReveneuBook = value; OnPropertyChanged(); } }

        private ObservableCollection<string> _BestSellBookID;
        public ObservableCollection<string> BestSellBookID { get { return _BestSellBookID; } set { _BestSellBookID = value; OnPropertyChanged(); } }
        private ObservableCollection<USP_BAOCAODOANHTHU_Result> _listReveneuList;
        public ObservableCollection<USP_BAOCAODOANHTHU_Result> ListReveneuList { get { return _listReveneuList; } set { _listReveneuList = value; OnPropertyChanged(); } }
        private string _BookName1;
        public string BookName1 { get { return _BookName1; } set { _BookName1 = value; OnPropertyChanged(); } }

        private decimal _BookPrice1;
        public decimal BookPrice1 { get { return _BookPrice1; } set { _BookPrice1 = value; OnPropertyChanged(); } }

        private string _BookName2;
        public string BookName2 { get { return _BookName2; } set { _BookName2 = value; OnPropertyChanged(); } }

        private decimal _BookPrice2;
        public decimal BookPrice2 { get { return _BookPrice2; } set { _BookPrice2 = value; OnPropertyChanged(); } }

        private string _BookName3;
        public string BookName3 { get { return _BookName3; } set { _BookName3 = value; OnPropertyChanged(); } }

        private decimal _BookPrice3;
        public decimal BookPrice3 { get { return _BookPrice3; } set { _BookPrice3 = value; OnPropertyChanged(); } }

        private byte[] _image1;
        public byte[] Image1 { get { return _image1; } set { _image1 = value; OnPropertyChanged(); } }

        private BitmapImage _img1;

        public BitmapImage Img1{get{return _img1;}set{_img1 = value;OnPropertyChanged();}}

        private byte[] _image2;
        public byte[] Image2 { get { return _image2; } set { _image2 = value; OnPropertyChanged(); } }

        private BitmapImage _img2;

        public BitmapImage Img2 { get { return _img2; } set { _img2 = value; OnPropertyChanged(); } }

        private byte[] _image3;
        public byte[] Image3 { get { return _image3; } set { _image3 = value; OnPropertyChanged(); } }

        private BitmapImage _img3;

        public BitmapImage Img3 { get { return _img3; } set { _img3 = value; OnPropertyChanged(); } }
        private string _uri;
        public string Uri { get { return _uri; } set { _uri = value; OnPropertyChanged(); } }
        public List<string> ListInfo { get; set; }
        public StatisticsWindowVM()
        {
            ListInfo = new List<string>
            {
                "Images/So-Many-Books-So-Little-Time-black.jpg","Images/anna-quindlen-book-quotes-1523047039.jpg",
                "Images/best-quotes-from-books-best-book-lover-quotes-quotes-on-book-lovers-quote-sigma.jpg" ,
                "Images/Between-the-pages-of-a-book-is-a-lovely-place-to-be-Anonymous-540x542.jpg",
                "Images/d2684aeb9b47927fb36469e4252ec552.jpg"
            };
            DispatcherTimer dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 5);
            dispatcherTimer.Start();
            BestSellBookID = new ObservableCollection<string>(DataProvider.Ins.DB.USP_SACHBANCHAYTRONGTHANG());
            if (BestSellBookID.Count() > 2)
            {
                var ID1 = BestSellBookID[0];
                var ID2 = BestSellBookID[1];
                var ID3 = BestSellBookID[2];

                var Book1 = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == ID1).SingleOrDefault();
                var Book2 = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == ID2).SingleOrDefault();
                var Book3 = DataProvider.Ins.DB.SACHes.Where(x => x.MASACH == ID3).SingleOrDefault();
                BookName1 = Book1.TENSACH;
                BookPrice1 = Book1.GIABAN;

                BookName2 = Book2.TENSACH;
                BookPrice2 = Book2.GIABAN;

                BookName3 = Book3.TENSACH;
                BookPrice3 = Book3.GIABAN;

                Image1 = Book1.HINHANH;
                Img1 = ByteToImageConverter.Ins.LoadImage(Image1);

                Image2 = Book2.HINHANH;
                Img2 = ByteToImageConverter.Ins.LoadImage(Image2);

                Image3 = Book3.HINHANH;
                Img3 = ByteToImageConverter.Ins.LoadImage(Image3);
            }
            else
            {
                BookName1 = "Không tìm thấy sách";
                BookPrice1 = 0;

                BookName2 = "Không tìm thấy sách";
                BookPrice2 = 0;

                BookName3 = "Không tìm thấy sách";
                BookPrice3 = 0;
            }

            ListReveneuList = new ObservableCollection<USP_BAOCAODOANHTHU_Result>(DataProvider.Ins.DB.USP_BAOCAODOANHTHU(DateTime.Today));
            ListReveneuBook = new ObservableCollection<USP_DOANHTHUSACHTRONGTHANG_Result>(DataProvider.Ins.DB.USP_DOANHTHUSACHTRONGTHANG());
        }
        // User can change these imgs after the next update
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            Random rand = new Random();
            int r = rand.Next(0, ListInfo.Count());
            Uri = ListInfo[r];
        }
    }
}
