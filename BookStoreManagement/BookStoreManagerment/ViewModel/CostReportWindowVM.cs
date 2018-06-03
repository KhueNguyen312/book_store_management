using BookStoreManagerment.Model;
using CrystalDecisions.CrystalReports.Engine;
using SAPBusinessObjects.WPF.Viewer;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace BookStoreManagerment.ViewModel
{
    public class CostReportWindowVM:BaseViewModel
    {
        public ICommand LoadedWindowCommand { get; set; }

        public CostReportWindowVM()
        {

        }
        
        public CostReportWindowVM(ObservableCollection<USP_BAOCAOCHIPHI_Result> reveneuList, string date)
        {
            LoadedWindowCommand = new RelayCommand<CrystalReportsViewer>((p) => { return true; }, (p) =>
            {
                ReportDocument report = new ReportDocument();
                report.Load("../../CostReport.rpt");
                report.SetDataSource(reveneuList);
                report.SetParameterValue("month", date);
                p.ViewerCore.ReportSource = report;
            });
        }
    }
}
