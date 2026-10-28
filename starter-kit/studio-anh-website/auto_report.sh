# Script: auto_report.sh
# Tac gia: Nguyễn Thế Huy
# Ngay tao: 28/10/2026
 
echo "Dang loc log..."
 
echo "=== BAO CAO LOI ===" > logs/auto_report.txt
cat logs/studio.log|grep "ERROR" >> logs/auto_report.txt
echo "Hoan thanh!"