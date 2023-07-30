import 'package:get/get.dart';

class MyController extends GetxController {
  ///static 키워드는 생성자 없이 사용가능
  ///힙(heap) 메모리에 사용
  static MyController get to => Get.find<MyController>();

  MyController toto() {
    return Get.find<MyController>();
  }

  //RX 키워드가 붙은 형태는 값을 쓰고 .obs를 써야 함

  RxInt count = 0.obs;

  void countUp() {
    count.value++;
    // update();
  }

  void countDown() {
    count.value--;
    update();
  }

  void countChange(int value) {
    count.value = value;
  }

  void countreset() {
    count.value = 0;
  }
}
