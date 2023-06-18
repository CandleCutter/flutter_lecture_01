/// Animal 클래스를 상속 받는 클래스들에게
/// 동일한 정보와 역할을 부여할 수 있음

abstract class Animal{

  String name;
  int age;
  Animal(this.name, this.age);

  void eat();
  void sleep();

}