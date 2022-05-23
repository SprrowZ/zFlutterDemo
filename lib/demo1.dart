printInteger(int a) {
  print('Hello world, this is $a.');
}

test() {
  int x = 1;
  int hex = 0xEEADBEEF;
  double y = 1.1;
  double exponents = 1.13e4;
  int roundY = y.round();

  bool result = true;

  String name = '二狗';
  String description = "$name 今年几岁呀？";

  var arr1 = <String>["Tom", "Jerry", "Andy"];
  var arr2 = new List<int>.of([1, 2, 3]);
  arr2.add(14);
  arr2.forEach((element) {
    print("value is $element");
  });

  var map1 = <String, String>{"name": "Tom", 'sex:': 'male'};
  var map2 = new Map<String, String>();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((key, value) {
    print("key:$key,value:$value");
  });

  final name2 = "hello";
  const name3 = "kugou";
}

bool isZero(int number) {
  return number == 0;
}

void printInfo(int number, Function check) {
  print("$number is Zero:${check(number)}");
}

testMethod() {
  Function f = isZero;
  int x = 60;
  int y = 0;
  printInfo(x, f);
  printInfo(y, f);
}

//JavaScript写法
bool isZero2(int number) => number == 0;

//可选命名参数和可选参数
void enableFlags({bool bold = true, bool hidden = false}) =>
    print("$bold,$hidden");
//可选命名参数赋默认值
void enableFlags2({bool bold = true, bool hidden = false}) =>
    print("$bold,$hidden");
//可忽略的参数在函数定义时用[]指定
void enableFlag3(bool bold, [bool? hidden]) => print("$bold,$hidden");
//定义可忽略参数时增加默认值
void enableFlag4(bool bold, [bool hidden = false]) => print("$bold,$hidden");

void test2() {
  enableFlags();
  enableFlags(bold: true, hidden: false);

  enableFlags(bold: true);

  enableFlags2(bold: false);

  enableFlag3(true, false);
  enableFlag3(
    true,
  );
  enableFlag4(true, true);
}

class Point {
  late num x, y;
  static num factor = 0;

  Point(this.x, this.y);

  void _printInfo() => print('($x,$y)');
}

main() {
  var number = 2022;
  testMethod();
}
