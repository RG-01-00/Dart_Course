import 'chicken.dart';

void main() {
  mi pers = new mi('fida', 88);
  pers.age = 12;
  pers.name = 'amir';
  print("${pers.age} and ");
  pers.printage();

  mi pers1 = new mi("name", 54);

  pers1.set_age(11);
  pers1.get_age();

  pers1.set_name('alfrado');
  pers1.get_name();

  print(pers1.age);
  print(pers1.name);

  mi pers2 = new mi('sami', 55);

  print(pers2.get_surname());

  pers2
    ..methode1()
    ..methode2();

  chicken ch = new chicken('kaka', 12);

  three tr = new three();
  tr.un();
}

class mi {
  String? name;
  int? age;
  static String surname = 'alfa'; //can only access it through get

  void printage() {
    print(age);
  }

  mi(name, age) {
    this.name = name;
    this.age = age;
  }

  //getters and setters
  get_name() {
    return this.name;
  }

  set_name(name) {
    this.name = name;
  }

  get_age() {
    return this.age;
  }

  set_age(age) {
    this.age = age;
  }

  get_surname() {
    return surname;
  }

  methode1() {
    print("chicken");
  }

  methode2() {
    print("potato");
  }
}

//multiheritage
//if class 3 inherits from 2 .adn 2 inherites from 1 then ,3 inherites from 1also

class one {
  void un() {
    print("one");
  }
}

class two extends one {
  String? deux;
}

class three extends two {
  String? troi;
}

//cant create instance from it noyl inherite from it
abstract class cc {}

class mika implements mi, chicken {
  //can implement more than 1 class
  //have to rewrite the  vars/fnct from class that it implemenst from

  String? name;
  int? age;
  static String surname = 'alfa';

  @override
  get_age() {
    // TODO: implement get_age
    throw UnimplementedError();
  }

  @override
  get_name() {
    // TODO: implement get_name
    throw UnimplementedError();
  }

  @override
  get_surname() {
    // TODO: implement get_surname
    throw UnimplementedError();
  }

  @override
  methode1() {
    // TODO: implement methode1
    throw UnimplementedError();
  }

  @override
  methode2() {
    // TODO: implement methode2
    throw UnimplementedError();
  }

  @override
  void printage() {
    // TODO: implement printage
  }

  @override
  set_age(age) {
    // TODO: implement set_age
    throw UnimplementedError();
  }

  @override
  set_name(name) {
    // TODO: implement set_name
    throw UnimplementedError();
  }
}
