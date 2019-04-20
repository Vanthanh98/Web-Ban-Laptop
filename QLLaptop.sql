

CREATE TABLE KHACHHANG
(
	MaKH INT IDENTITY(1,1) Primary key,
	HoTen nVarchar(50) NOT NULL,
	Taikhoan Varchar(50) NOT NULL,
	Matkhau Varchar(50) NOT NULL,
	Email Varchar(100),
	DiachiKH nVarchar(200),
	DienthoaiKH Varchar(50)
)

CREATE TABLE THUONGHIEU
(
	MaTH INT IDENTITY(1,1) Primary key,
	TenTH nVarchar(50) NOT NULL
)

CREATE TABLE LAPTOP
(
	MaLT INT IDENTITY(1,1) NOT NULL,
	TenLT nVarchar(100) NOT NULL,
	Giaban Decimal(18,0) CHECK (Giaban>=0),
	Mota nVarchar(Max),
	Anhbia Varchar(50),
	Soluongton INT,
	MaTH INT NOT NULL,
	Primary key(MaLT,MaTH)
)

CREATE TABLE DONDATHANG
(
	MaDonHang INT IDENTITY(1,1) NOT NULL,
	Dathanhtoan bit,
	Tinhtranggiaohang  bit,
	Ngaydat DATETIME,
	Ngaygiao DATETIME,
	MaKH INT NOT NULL,
	Primary key(MaDonHang,MaKH)
)

CREATE TABLE CHITIETDONHANG
(
	MaDonHang INT NOT NULL,
	MaLT INT NOT NULL,
	Soluong INT CHECK(Soluong>0),
	Dongia Decimal(18,0) CHECK(Dongia>=0),
	Primary key(MaDonHang,MaLT)
)

CREATE TABLE ADMIN
(
	UserAdmin Varchar(30) Primary key,
	PassAdmin Varchar(30) NOT NULL,
	Hoten nVarchar(50)
)

DBCC CHECKIDENT('LAPTOP', RESEED, 10)