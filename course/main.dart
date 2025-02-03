//import methodes

//import 'folder_imoprt/w.dart';
//import'../w.dart' ; example of import whn the file is in a directory inside a directory
import 'w.dart';
import 'lib/function.dart';

import 'dart:math';

void main() {
  String name = "wale";
  String lstname = "alfrado";

  int k = 9;
  int b = 4;
  //int c = k + b;
  //double c = k / b;
  int c = k ~/ b; //only the
  c++;
  c--;

  print(c);
  print("$name $lstname");
  print(name + " $c" + lstname + "${c + b}");

  int r = 10;
  int g = 11;
  print(r == g);
  print(r != g);
  print(r > g);
  print(r <= g);

// checks if r is not int
  print(r is! int);

  int? l;
  l ??= 20; // if l in null give it 20
  l += 1; //l -= 1; , l *= 1, l /= 1;
  print(l);

  //logical operators
  int s = 1;
  int t = 2;
  print(s < t && s == t);
  print(s < t || s == t);

//use case
  int price = 1300;

  switch (price) {
    case 1000:
      {
        print("price is suitable");
      }
      break;

    case 1300:
      {
        print("price nt suitable");
      }
      break;

    default:
      {
        print("none");
      }
      break;
  }

  for (int i = 0; i <= 10; i++) {
    print(i++);
  }

  //loop while
  int m = 10;
  while (m < 14) {
    //verify condition then apply changes
    m++;
    print(m);
  }
  int n = 1;

  //loop do while

  do {
    //apply changes then verify condition
    print(n);
    //break; //to exit
    n++;
  } while (n < 8);
  //loop for
  //if (condition){
  //      code
  //   }

  for (int run = 0; run < 10; run++) {
    if (run == 7) continue; //wont print 7
    print(run);
  }

  double x = 43.04; // int x = 43;

  print(x.isFinite);
  print(x.isNegative);
  print(x.sign);
  print(x.ceil()); //gives the next number excpt fot .0 is stills the smae

  print(x.floor());
  print(x.round()); //gives the closest numer to it
  print(x.compareTo(b));
  int z = -21;
  print(z.isEven);
  print(z.isOdd);
  print(z.abs());
  print(z.abs());
  print(z.toDouble());

  String nom = "elsa ";

  print(nom.isEmpty);
  print(nom.toUpperCase());
  print(nom.toLowerCase());
  print(nom.length);
  print(nom.trim()); //removes spaces
  print(nom.trim().length);
  print(nom.compareTo("anna"));

  String ph = "how old are you";
  print(ph.replaceAll("old", "tihi"));
  print(ph.replaceAll("o", "iii"));

// can have multiple values diff types

  List ages = [
    14,
    15,
    [12, 43, 76],
    "16",
    "17"
  ];

  print(ages[2][1]);

  for (int i = 0; i < ages.length; i++) {
    print(ages[i]);
  }

  ages.add("wale");
  print(ages);
  print("l");

  ages.forEach((element) {
    print(element);
  });

  print(ages);
  print(ages.first);
  print(ages.last);
  print(ages.isEmpty);
  print(ages.isNotEmpty);
  print(ages.reversed.toList());
  ages.add([12, 34, 22]); //adds a list to the list
  ages.addAll([78, 22]); //adds thme as elements in th elist
  ages.insert(0, "new value");
  ages.insertAll(3, ["amir", "adybug"]);
  print(ages);

  //print(ages.single); //list should only have one element to use this
  ages.replaceRange(0, 2, ['1', '2', '3', '4', '5']);
  print(ages);
  print(ages.remove(15));
  print(ages);
  ages.removeAt(1);
  ages.removeRange(1, 4);
// or we can choose the type we want to be included

  List<String> noms = ['mikey', 'eren', 'hasba']; //or <Map<int ,int >> ,<>

  //map :has key+value
  Map info = {
    "name": "lisa",
    "age": 12,
    "school": "adbelkaader school"
  }; //map <String,String>
  print(info);
  print(info["name"]);
  info.forEach((key, value) {
    print(key);
  });
  print(info.keys);
  print(info.values);
  print(info.length);
  info.clear();

  info.addAll({"lastname": "mikassa"});
  print(info);
//i can put a map inside a list inside a map

//dynamic variables
  var lmd = "mika"; // 12,true accepts any value
  const int ld = 12; //cant change its value
  final int age = 33; // cant modify it too

  //set

  Set cli = {"alfrado", "jacob"}; //set<String>
  cli.add('kaka');
  cli.addAll({'mika', 'lisa'});
  cli.addAll({'1', '12'});
  print(cli);

  cli.toList(); //or we can do the opposite .toset() : it removr repetition

//takes the value/key  from map to a list /set

  Set a = {};
  Map h = {'name': 'ghanem', 'age': 12};

  h.forEach((key, value) {
    a.add(value);
  });
  print(a);

  print(calculages(1977, 2025));
  print(legal_or_no(15));

  //assign a function to a variable
  //calculnum is dynamic thats why its easy to assigne it to a var
  //its better to give the funct a type
  int gher = calculnum();
  print(gher);

  print(cacul_name(
      "islam slimani")); //print(w.cacul_name("islam slimani")); if use as in the beggining u have to do this

  List abcd = [12, 4, 65.8, 76, 98, 66.3, 4, 5.21, 6, 7, 22];
  print(calcul_sum(abcd));

  users.forEach((element) {
    print(element);
    print('name :${element['name']}');
    print(element['age']);
    print(element['job']);
  });

  cacul_of_a_dala();

  String word = 'wislam slimani';
  print(word.codeUnits);
  print(word.runes); //makes it coded + to list

  word.runes.forEach((element) {
    print(String.fromCharCode(element));
  });

  for (int i = 0; i < word.length; i++) {
    print(word[i]);
  }

  String emoji =
      "\u{1f601} 🙃"; //u can eitehr use the emoji code or the emoji itself
  print(emoji);

  //assert(condition ."message")
  int? sgb = 8;
  assert(sgb != null, 'a is null choose anotehr value');
  print(sgb);

  int cbf = 89;
  int d = 9;
  print('${min(c, d)} and ${max(cbf, d)}');

  List wd = [1, 2, 3, 4];
  List gk = wd.sublist(1); //or (1,3) we can specify a range
  print(gk);
  wd.shuffle();
  print(wd);

  //to convert from a list to a map
  List nom_1 = [9, 67, 9];
  var f_where =
      nom_1.firstWhere((e) => e > 9); //returns onyl 1 value  or e,lenght
  print(f_where);

  List nom_2 = ['asil', 'jamil', 9, 67, 9];
  Map mp = nom_2.asMap();
  print(mp);

  //take onyl the typ especified from the list

  var namesmap = nom_2.whereType<int>().toList();
  print(namesmap);
}

//functions
//we can have  diff types of funct:string ,var ,void,int ,bool,double...  similar to c++

int calculages(int year_birth, int year_today) {
  int a = year_today - year_birth;
  return a;
}

bool legal_or_no(int age) {
  return (age >= 18);
}

//type based on the inside of the fnct
//dynamic fnct
//its better to specify the type
calculnum() {
  int jk = 0;
  jk = jk++;
  return jk;
}
