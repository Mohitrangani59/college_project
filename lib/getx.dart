import 'package:get/get.dart';

class controler extends GetxController{

  //dashbord

  RxString rval="".obs;
  rediobtn(String value){
    rval.value = value;
  }

  RxInt cnt=RxInt(0);
  fun_cnt() {
    cnt.value++;
    print(cnt.value);
  }
}