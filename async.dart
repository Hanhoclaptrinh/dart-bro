import 'dart:async';

// hàm bất đồng bộ - trả về kết quả trong tương lai
// dùng trong việc gọi API để lấy dữ liệu trước khi render lên UI
Future<int> loadData() {
  // trả về "data loaded successfully" sau 3 giây delay
  return Future.delayed(Duration(seconds: 3), () => 952749);
}

// void otherTask() {
//   print('start other task'); // dòng này in thứ 2
//   Future<String> f = loadData();
//   // sau khi dữ liệu đã được lấy đủ thì in ra
//   f.then((data) {
//     print('data: $data'); // dòng này in cuối cùng
//   });
//   print('working other task'); // dòng này in thứ 3
// }

// từ khóa async đánh dâu có code bất đồng bộ bên trong hàm
// phải thực thi đồng bộ theo code tuần tự
void otherTask() async {
  print('start other task'); // dòng này in thứ 2
  int result = await loadData(); // đợi dữ liệu load về trong 3 giây
  print('data: $result'); // dòng này in thứ 3
  print('working other task'); // dòng nây in cuối cùng
}

void main() {
  // các câu lệnh không thuộc hàm bất đồng bộ sẽ được chạy trước 
  print('start load data'); // dòng này in trước tiên
  otherTask();
}
