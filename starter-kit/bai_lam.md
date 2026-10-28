# BÀI LÀM – HACKATHON 01

- **Mã đề:** 15
- **Họ tên:Nguyễn Thế Huy** 
- **Lớp:CNTT3** 
- **Link repository:https://github.com/mrwe08/CNTT3_Nhap-mon-CNTT_Hackathon01** 
- **Hệ điều hành (Windows/macOS):macOS** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -a
mv bang_gia_goi.txt docs
mv logo_studio_anh.png media
cp media/logo_studio_anh.png backup
rm temp_238.tmp
cd logs
ls -a 
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
admin@209 studio-anh-website % ls -aR
.			Bản sao bai_lam.md	logs
..			backup			media
.DS_Store		data
.env			docs

./backup:
.			..			logo_studio_anh.png

./data:
.			..			lich_chup_thang_5.xlsx

./docs:
.			..			bang_gia_goi.txt

./logs:
.		..		studio.log

./media:
.		

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
cat logs/studio.log|grep "ERROR"
cat logs/studio.log|grep "ERROR" > logs/daily_report.txt
head -2 logs/daily_report.txt


```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:44:30 [ERROR] Tai anh len may chu that bai

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
cat logs/studio.log|grep "ERROR" >> logs/auto_report.txt
chmod +x auto_report.sh
./auto_report.sh

```

### Kết quả hiển thị

```text
admin@209 studio-anh-website % chmod +x auto_report.sh      
admin@209 studio-anh-website % ./auto_report.sh
Dang loc log...
Hoan thanh!

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
cat logs/studio.log|grep -wc "ERROR"

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "=== TONG HOP LOG ===" >> logs/tong_hop.txt
echo "2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:44:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:47:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 07:50:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:11:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:14:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 08:17:30 [ERROR] Tai anh len may chu that bai" >> logs/tong_hop.txt
echo "7" >>logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===
2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:44:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:47:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 07:50:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:11:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:14:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 08:17:30 [ERROR] Tai anh len may chu that bai
7


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/lich_chup_thang_5.xlsx`, không cần ghi vào đây.
