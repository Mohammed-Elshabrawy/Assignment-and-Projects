import 'dart:io';
main() {
  List names = [];
  makelist(names);
  
  tuple("3,5,7,23");
}


makelist(List names){
  bool flage = true;
  while (flage) {
    print("please enter a name or enter 0 to stop");
    var name = stdin.readLineSync().toString();
    if (name == "0") {
      flage = false;
      break;
    } else {
      names.add(name);
    }
  }
  printlist(names);
}
 printlist(List names) {
  for (int count = 0; count <= names.length - 1; count++) {
    print(names[count]);
  }
}

tuple(String word) {
  List<String> list = word.split(",");
  print("List : $list");
  var tuple = "(" + list.join(',') + ")";
  print("Tuple : $tuple");
}
