abstract class Car{

  double price;
  String carName;
  String owner;

  Car(this.price, this.carName, this.owner);

  void go(){
    print("$carName가 달리고 있다");
  }

  void stop(){
    print("$carName가 정지했습니다.");

  }
}