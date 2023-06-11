class collections {
  /// list, map, set
  /// list/배욜 : 인간의 시작번호는 1부터 시작하지만  소프트웨어 개발은 0부터 시작
  collections() {
    // listAdd();
    // listRemove();
    // listController();
    // collctionMap();
    collectionSet();
  }

    /// List

    /// listAdd , 특정 집합체에 더하기
    /// 변수 : String int bool
    /// List = 동일한 형태의 여러개의 변수를 처리하기 위한 것

    void listAdd() {
      int age = 35;

      /// list<int> : 변수의 타입은 int로 여러개 가짐
      List<int> listInt = [3, 5, 7, 9];
      print("listInt raw : $listInt");

      /// 하나의 값을 추가하는 방법
      listInt.add(age);
      print("listInt add: $listInt");

      /// 여러개의 값을 추가하는 방법
      listInt.addAll([1, 2, 3, 4]);
      print("listInt addAll: $listInt");

      /// 특정 위치에 값을 입력하고, 그 위치에 기존 값을 뒤로 밀어냄
      /// index : 위치(값이 들어가는 위치), element : 값
      listInt.insert(0, 100);
      print("listInt insert: $listInt");
    }

    void listRemove() {
      List<String> nameList = [];
      nameList.add("김진환");
      nameList.add("홍길동");
      nameList.add("이순신");
      nameList.add("오바마");
      print("nameList raw : $nameList");

      //리스트 중 원하는 값 인덱스로 지우기
      nameList.removeAt(1);
      print("nameList removeAt : $nameList");

      //리스트의 마지막 값 지우기
      nameList.removeLast();
      print("nameList removeLast : $nameList");

      //원하는 값을 지우기
      nameList.remove("김진환");
      print("nameList remove(value) : $nameList");

      //항목 추가
      nameList.add("기린");
      nameList.add("호랑이");
      nameList.add("사자");
      print("nameList add : $nameList");

      //리스트의 모든 값을 지우기
      nameList.clear();
      print("nameList remove(value) : $nameList");
    }

    void listController() {
      List<int> ageList = [4, 5, 2, 6, 7, 4, 8];

      /// 배열의 크기를 알려줌, 배열안에 값이 몇개인지
      int size = ageList.length;
      print("ageList size : $size");

      /// 배열의 특정 값을 가져오기
      /// ageList[index], index는 0 부터 시작
      int first = ageList[0];
      int second = ageList[1];
      print("ageList index[0] : $first");
      print("ageList index[1] : $second");

      /// isEmpty는 리스트가 비어있는지
      /// bool 값을 리턴
      /// agelist가 비어있으면 true
      /// agelist에 값이 하나라도 있으면 false
      bool isEmpty = ageList.isEmpty;
      print("ageList isEmpty : $isEmpty");
      print("ageList check : $ageList");

      /// isnotEmpty : isEmpty반대로 리스트에 데이타가 있는지 확인
      /// bool 값을 리턴
      /// agelist가 비어있으면 false
      /// agelist에 값이 하나라도 있으면 true
      bool isNotEmpty = ageList.isNotEmpty;
      print("ageList isNotEmpty : $isNotEmpty");
    }

    /// Map
    /// May = key, value
    /// key = 주소, 인덱스와 같은 개념
    /// value = 값
    /// 리스트는 순서가 있으나 맵은 순서가 없음
    void collectionMap() {
      Map m = {"key": "value", "a": "알파벳"};

      print('m : $m');
      String mValue = m["a"];
      print('mValue : $mValue');

      ///Map 추가
      ///키가 중복되지 않았을 때 추가 하는 방법
      m.putIfAbsent("b", () => "두번째");
      print('mValue putIfAbsent: $m');

      m.putIfAbsent("b", () => "세번째");
      print('mValue putIfAbsent again: $m');

      /// 이미 키에 "b"가 있어서 추가 되지 않음

      ///키가 이미 있는 경우에 값 바꾸기
      m["b"] = "네번째";

      ///키의 존재 여부와 상관없이 입력하게 됨
      ///키가 이미 있는 경우 값을 변경하게 됨
      m["c"] = "다섯 번째";
      print('m : $m');

      ///특정 키 지우기
      m.remove("a");
      print('m remove: $m');

      ///Map<a,b>
      ///a:key 타입
      ///b:value 타입
      ///<String, dynamic> => key는 String, value는 모든 타입
      Map<String, dynamic> typeMap = {
        "a": "aaaaa",
        "b": 100,
        "c": true,
        "d": 50.5,
      };

      print('typeMap: $typeMap');
    }

    void collectionSet() {
      // list, map,set에서 순서가 있는 것은 [], 순서가 없으면 {}
      Set sSet = {"a", "b", "c"};
      sSet.add("d");
      print("sSet : $sSet");
      sSet.addAll((["a", 3, 4, 5, 6]));
      print("sSet addAll : $sSet");

      sSet.remove("b");
      print("sSet remove : $sSet");

      sSet.removeWhere((element) {
        return element == 3 || element == 4;
      });
      print("sSet removeWhere 3 on 4: $sSet");

      ///index 입력, 0번 부터 시작
      var result = sSet.elementAt(1);
      print("result : $result");

      Set<int> intSet = {};
      intSet.add(45);
      intSet.add(6555555);
      print("intSet : $intSet");

    }
  }

