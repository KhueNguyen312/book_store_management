using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class UserControlBarAlterViewModel:BaseViewModel
    {
        public ICommand BackPreviousWindownCommand { get; set; }
        public ICommand DragAndMoveWindowCommand { get; set; }
        public UserControlBarAlterViewModel()
        {
            DragAndMoveWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindow(p);
                var w = window as Window;
                if (w != null)
                {
                    w.DragMove();
                }
            });
            BackPreviousWindownCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) => {
                CloseCurrentWindow(p); });
        }

        public void CloseCurrentWindow(UserControl p)
        {
            FrameworkElement window = GetWindow(p);
            var w = window as Window;
            if(w!=null)
            {
                w.Close();
            }
        }

        FrameworkElement GetWindow(UserControl p)
        {
            FrameworkElement w = p;
            while (w.Parent != null)
            {
                w = w.Parent as FrameworkElement;
            }
            return w;
        }
    }
}
