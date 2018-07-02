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
    public class ControlBarViewModel:BaseViewModel
    {
        public ICommand CloseWindowCommand { get; set; }
        public ICommand MaximizeWindowCommand { get; set; }
        public ICommand MinimizeWindowCommand { get; set; }
        public ICommand DragAndMoveWindowCommand { get; set; }

        public ControlBarViewModel()
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

            CloseWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
                 {
                     FrameworkElement window = GetWindow(p);
                     var w = window as Window;
                     if(w  != null)
                     {
                         w.Close();
                     }
                 });
            MaximizeWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindow(p);
                var w = window as Window;
                if(w!=null)
                {
                    if (w.WindowState != WindowState.Maximized)
                    {
                        w.Top = 0;
                        w.Left = 0;
                        w.Width = SystemParameters.WorkArea.Width;
                        w.Height = SystemParameters.WorkArea.Height;
                    }
                    else
                        w.WindowState = WindowState.Normal;
                }
            });
            MinimizeWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; }, (p) =>
            {
                FrameworkElement window = GetWindow(p);
                var w = window as Window;
                if(w!=null)
                {
                    w.WindowState = WindowState.Minimized;
                }
            });
        }

        FrameworkElement GetWindow(UserControl p)
        {
            FrameworkElement w = p;
            while(w.Parent != null)
            {
                w = w.Parent as FrameworkElement;
            }
            return w;
        }
    }
}
