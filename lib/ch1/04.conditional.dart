class Conditional{

  /// if문
  /// switch문
  /// 삼항연산자
  ///
  Conditional(){

    int r = conditionalIF(50);
    print('r : $r');
    String result = testGrade(85);
    print('등급 : $result');

  }

  int conditionalIF(int value){
    int result = 0;
    // do something

    if(value > 90){
      ///value가 90보다 클 경우 진입
      ///조건에 부합한 경우
      result = -10;
    } else{
      ///value가 90보다 크지 않은 경우
      ///조건에 부합하지 않는 경우
      result = 10;
    }
    return result;

  }

  String testGrade(int score){
    String grade = "F";

    if(score>=90){
      grade = "A";
    }else if(score>=80){
      grade = "B";
    }else if(score>=70) {
      grade = "C";
    }else if(score>=60) {
      grade = "D";
    }else{

    }
    return grade;

  }

}