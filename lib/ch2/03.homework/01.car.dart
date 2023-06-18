abstract class Car{

  double price;
  String carName;
  String owner;

  Car(this.price, this.carName, this.owner);

  void go(){
    print("$carName 가 달리고 있다");
  }

  void stop(){
    print("$carName 가 정지했습니다.");

  }
}