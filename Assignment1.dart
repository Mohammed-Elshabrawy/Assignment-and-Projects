main(){

///Three ways to declarat a variable in Dart

//1st way : initialization
int x = 0;
//2nd way : Null value
int ?y ;
//3rd way : using Late
late int z ;

/// using Null value 
int ?k ;

///by using a data type can change like "dynamic" or "var" without initialization / or using .toString() method

dynamic n = 0;
n = "mohammed";

var o ;
o = 21;
o = "mohammed";

int L = 2023;
L.toString();
print(L.toString().runtimeType);

/// Creating Map 

Map <String,Map<String,int>> Data = {
    "user1":{
     "English"   :80,
     "Math"      :100,
     "Physics"   :100,
     "Chemistry" :89,
     "Biology"   :60,
    },
     "user2":{
     "English"   :30,
     "Math"      :42,
     "Physics"   :87,
     "Chemistry" :71,
     "Biology"   :73,
    },
     "user3":{
     "English"   :57,
     "Math"      :24,
     "Physics"   :68,
     "Chemistry" :87,
     "Biology"   :39,
    },
     "user4":{
     "English"   :12,
     "Math"      :57,
     "Physics"   :12,
     "Chemistry" :58,
     "Biology"   :23,
    },
};

Data.forEach((key, value) {print(value);});
}