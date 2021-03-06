﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BookStoreManagerment.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class QUAN_LI_NHA_SACHEntities : DbContext
    {
        public QUAN_LI_NHA_SACHEntities()
            : base("name=QUAN_LI_NHA_SACHEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CTHOADON> CTHOADONs { get; set; }
        public virtual DbSet<CTKHUYENMAI> CTKHUYENMAIs { get; set; }
        public virtual DbSet<CTPHIEUNHAP> CTPHIEUNHAPs { get; set; }
        public virtual DbSet<HOADON> HOADONs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<KHUYENMAI> KHUYENMAIs { get; set; }
        public virtual DbSet<LOAISACH> LOAISACHes { get; set; }
        public virtual DbSet<NHAXUATBAN> NHAXUATBANs { get; set; }
        public virtual DbSet<PHIEUNHAPSACH> PHIEUNHAPSACHes { get; set; }
        public virtual DbSet<PHIEUTHUTIEN> PHIEUTHUTIENs { get; set; }
        public virtual DbSet<QUYDINH> QUYDINHs { get; set; }
        public virtual DbSet<SACH> SACHes { get; set; }
        public virtual DbSet<TAIKHOAN> TAIKHOANs { get; set; }
    
        public virtual ObjectResult<USP_BAOCAODOANHTHU_Result> USP_BAOCAODOANHTHU(Nullable<System.DateTime> date)
        {
            var dateParameter = date.HasValue ?
                new ObjectParameter("Date", date) :
                new ObjectParameter("Date", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_BAOCAODOANHTHU_Result>("USP_BAOCAODOANHTHU", dateParameter);
        }
    
        public virtual ObjectResult<USP_BAOCAOCHIPHI_Result> USP_BAOCAOCHIPHI(Nullable<System.DateTime> date)
        {
            var dateParameter = date.HasValue ?
                new ObjectParameter("Date", date) :
                new ObjectParameter("Date", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_BAOCAOCHIPHI_Result>("USP_BAOCAOCHIPHI", dateParameter);
        }
    
        public virtual ObjectResult<USP_DOANHTHUSACHTRONGTHANG_Result> USP_DOANHTHUSACHTRONGTHANG()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_DOANHTHUSACHTRONGTHANG_Result>("USP_DOANHTHUSACHTRONGTHANG");
        }
    
        public virtual ObjectResult<string> USP_SACHBANCHAYTRONGTHANG()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("USP_SACHBANCHAYTRONGTHANG");
        }
    
        public virtual ObjectResult<USP_TIMKHTHEOTEN_Result> USP_TIMKHTHEOTEN(string tENKH)
        {
            var tENKHParameter = tENKH != null ?
                new ObjectParameter("TENKH", tENKH) :
                new ObjectParameter("TENKH", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_TIMKHTHEOTEN_Result>("USP_TIMKHTHEOTEN", tENKHParameter);
        }
    
        public virtual ObjectResult<USP_TIMSACHTHEOTEN_Result> USP_TIMSACHTHEOTEN(string tENSACH)
        {
            var tENSACHParameter = tENSACH != null ?
                new ObjectParameter("TENSACH", tENSACH) :
                new ObjectParameter("TENSACH", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_TIMSACHTHEOTEN_Result>("USP_TIMSACHTHEOTEN", tENSACHParameter);
        }
    
        public virtual ObjectResult<USP_TIMTKTHEOTEN_Result> USP_TIMTKTHEOTEN(string tENTK)
        {
            var tENTKParameter = tENTK != null ?
                new ObjectParameter("TENTK", tENTK) :
                new ObjectParameter("TENTK", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_TIMTKTHEOTEN_Result>("USP_TIMTKTHEOTEN", tENTKParameter);
        }
    
        public virtual ObjectResult<string> MASACHTIEPTHEO()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("MASACHTIEPTHEO");
        }
    
        public virtual int USP_THEMSACH(string mASACH, string tENSACH, string mALOAISACH, string tACGIA, string mANXB, Nullable<int> sOLUONGHIENTAI, byte[] hINHANH, Nullable<decimal> gIANHAP, Nullable<decimal> gIABAN, string nOIDUNG, Nullable<int> gIAMGIA)
        {
            var mASACHParameter = mASACH != null ?
                new ObjectParameter("MASACH", mASACH) :
                new ObjectParameter("MASACH", typeof(string));
    
            var tENSACHParameter = tENSACH != null ?
                new ObjectParameter("TENSACH", tENSACH) :
                new ObjectParameter("TENSACH", typeof(string));
    
            var mALOAISACHParameter = mALOAISACH != null ?
                new ObjectParameter("MALOAISACH", mALOAISACH) :
                new ObjectParameter("MALOAISACH", typeof(string));
    
            var tACGIAParameter = tACGIA != null ?
                new ObjectParameter("TACGIA", tACGIA) :
                new ObjectParameter("TACGIA", typeof(string));
    
            var mANXBParameter = mANXB != null ?
                new ObjectParameter("MANXB", mANXB) :
                new ObjectParameter("MANXB", typeof(string));
    
            var sOLUONGHIENTAIParameter = sOLUONGHIENTAI.HasValue ?
                new ObjectParameter("SOLUONGHIENTAI", sOLUONGHIENTAI) :
                new ObjectParameter("SOLUONGHIENTAI", typeof(int));
    
            var hINHANHParameter = hINHANH != null ?
                new ObjectParameter("HINHANH", hINHANH) :
                new ObjectParameter("HINHANH", typeof(byte[]));
    
            var gIANHAPParameter = gIANHAP.HasValue ?
                new ObjectParameter("GIANHAP", gIANHAP) :
                new ObjectParameter("GIANHAP", typeof(decimal));
    
            var gIABANParameter = gIABAN.HasValue ?
                new ObjectParameter("GIABAN", gIABAN) :
                new ObjectParameter("GIABAN", typeof(decimal));
    
            var nOIDUNGParameter = nOIDUNG != null ?
                new ObjectParameter("NOIDUNG", nOIDUNG) :
                new ObjectParameter("NOIDUNG", typeof(string));
    
            var gIAMGIAParameter = gIAMGIA.HasValue ?
                new ObjectParameter("GIAMGIA", gIAMGIA) :
                new ObjectParameter("GIAMGIA", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("USP_THEMSACH", mASACHParameter, tENSACHParameter, mALOAISACHParameter, tACGIAParameter, mANXBParameter, sOLUONGHIENTAIParameter, hINHANHParameter, gIANHAPParameter, gIABANParameter, nOIDUNGParameter, gIAMGIAParameter);
        }
    }
}
