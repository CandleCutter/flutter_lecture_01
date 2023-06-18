import 'package:flutter/scheduler.dart';

class Conditional {
  /// if문
  /// switch문
  /// 삼항연산자
  ///
  Conditional() {
    int r = conditionalIF(50);
    print('r : $r');

    String result = testGrade(85);
    print('등급 : $result');

    String switchResult = testSwitch(50);
    print('SwitchResult : $switchResult');


  }

  int conditionalIF(int value) {
    int result = 0;
    // do something

    if (value > 90) {
      ///value가 90보다 클 경우 진입
      ///조건에 부합한 경우
      result = -10;
    } else {
      ///value가 90보다 크지 않은 경우
      ///조건에 부합하지 않는 경우
      result = 10;
    }
    return result;
  }


  ///if 믄은 범위 체크 가능
  ///switch 문은 값으로 진행
  ///
  String testGrade(int score) {
    String grade = "F";

    if (score >= 90) {
      grade = "A";
    } else if (score >= 80) {
      grade = "B";
    } else if (score >= 70) {
      grade = "C";
    } else if (score >= 60) {
      grade = "D";
    } else {}
    return grade;
  }

  String testSwitch(int score){

    String grade = "F";

    switch(score){
      case 90:
      // 어떤 경우에도 해당되지 않는 경우

        grade = "A";
        break;

      case 80:
        grade = "B";
        break;

      case 70:
        grade = "C";
        break;

      case 60:
        grade = "D";
        break;

      default:
        grade = "No data";
        // 어떤 경우에도 해당되지 않는 경우
        break;

    }
    return grade;

  }

}
