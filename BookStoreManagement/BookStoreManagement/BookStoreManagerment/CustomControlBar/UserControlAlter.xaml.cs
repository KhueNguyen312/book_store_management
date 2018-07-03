using BookStoreManagerment.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BookStoreManagerment.CustomControlBar
{
    /// <summary>
    /// Interaction logic for UserControlAlter.xaml
    /// </summary>
    public partial class UserControlAlter : UserControl
    {
        public UserControlBarAlterViewModel Vm { get; set; }

        
        public UserControlAlter()
        {
            InitializeComponent();
            this.DataContext = Vm = new UserControlBarAlterViewModel();
        }
    }
}
