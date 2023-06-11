class ForLoop {
  /// 전통적인 for문
  ForLoop() {
    normalForLoop();
    enhancedForLoop();
    forEachLoop();
    testFor();
  }

  void normalForLoop() {
    /// for문의 형태
    /// 특정 횟수만큼 무엇을 반복
    /// int i =0;; =>값
    /// i<5 => 종료 조건
    /// 종료 조건에 해당하지 않으면, true 상태면 게속 진행
    /// 종료 조건에 맞으면, false 상태면 종료
    /// i++ -> 한번 반복에 1씩 증가
    for (int i = 0; i < 5; i++) {
      print("for i : $i");

      /// 0,
      /// 1,
      /// 2,
      /// 3,
      /// 4
    }

    ///for(int i =0; i<5; i++)

    List<String> list = ["a", "b", "c", "d", "e"];

    /// 데이터를 서버에서 받는 경우
    /// ex) 회원가입 목록 등
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
      if (list[i] == "b" || list[i] == "d") {
        print("찾았다 ${list[i]}");
      }
    }

    ///향상된 for문
  }

  void enhancedForLoop() {
    List<String> list = ["가", "나", "다", "라", "마"];

    ///in list => list 배열에서
    ///String value => list에 있는 값이 차롇로 들어옴

    for (String value in list) {
      print(value);
    }
  }

  void forEachLoop() {
    List<String> list = ["가", "나", "다", "라", "마"];

    list.forEach((element) {
      print("element : $element");
    });
  }

  /// double 값으로 만들어진 배열을 만들고
  /// for 문을 사용해 print
  /// 배열의 갯수는 무관
  /// for 문 3가지 사용
  void testFor() {
    List<double> list = [0.1, 0.2, 0.3, 0.4, 0.5];

    print("전형적인 for문");
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
    }

    print("향상된 for문");
    for (double value in list) {
      print(value);
    }

    print("forEach문");
    list.forEach((element) {
      print("element : $element");
    });

  }
}
//