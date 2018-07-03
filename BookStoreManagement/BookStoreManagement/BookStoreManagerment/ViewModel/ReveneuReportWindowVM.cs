using DevExpress.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Collections.ObjectModel;
using BookStoreManagerment.Model;
using SAPBusinessObjects.WPF.Viewer;

namespace BookStoreManagerment.ViewModel
{ 
    class ReveneuReportWindowVM:BaseViewModel
    {
        public ICommand LoadedWindowCommand { get; set; }
        public ReveneuReportWindowVM()
        {

        }
        public ReveneuReportWindowVM(ObservableCollection<USP_BAOCAODOANHTHU_Result> reveneuList,string date)
        {
            LoadedWindowCommand = new RelayCommand<CrystalReportsViewer>((p) => { return true; }, (p) =>
            {
                ReportDocument report = new ReportDocument();
                report.Load("../../ReveneuReport.rpt");
                report.SetDataSource(reveneuList);
                report.SetParameterValue("month", date);
                p.ViewerCore.ReportSource = report;
            });
        }
    }
}
