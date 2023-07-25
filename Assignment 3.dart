main(){
Animal Animal1 =Animal(LegsNum1: 4, Name1: "koko", Kind1: "monkey", CanFly1: false, CanSwim1: false, CanWalk1: true);
Animal1.Display();
}
class Animal{
  int ? LegsNum;
  String ? Name;
  String ? Kind;
  bool ? CanFly;
  bool ? CanSwim;
  bool ? CanWalk;

  Animal({ required int ? LegsNum1,required String ? Name1,required String ? Kind1,required bool ? CanFly1,required bool ? CanSwim1,required bool ? CanWalk1}){
    this.LegsNum=LegsNum1;
    this.Name=Name1;
    this.Kind=Kind1;
    this.CanFly=CanFly1;
    this.CanSwim=CanSwim1;
    this.CanWalk=CanWalk1;

  }
  Display(){
    print("$Name $LegsNum $Kind $CanFly $CanSwim $CanWalk" );
  }
}