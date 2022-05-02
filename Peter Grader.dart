import 'dart:io';
void main()
{

  print("Hello!");
  print("Enter Subject: ");
  String? subject = stdin.readLineSync();
  print("Enter Score: ");
  bool isValidScore = false;
  String grade = "";
  var unparsedGradeScore;
  int gradeScore = 0;

  //Loop if score is not valid (i.e between 0 and 100)
  while(!isValidScore){
    //Read a non-int score from standard input
    unparsedGradeScore = stdin.readLineSync();

    //Parse read score to int provided it's not null
    if (unparsedGradeScore != null) {
      gradeScore = int.parse(unparsedGradeScore);
    }

    //Allocate grade based on score
    if (gradeScore <= 100 && gradeScore > 80){
      isValidScore = true;
      grade = "A";
    }
    else if (gradeScore < 80 && gradeScore >= 60 ){
      isValidScore = true;
      grade = "B";
    }
    else if (gradeScore < 60 && gradeScore >= 50 ){
      isValidScore = true;
      grade = "C";
    }
    else if (gradeScore < 50 && gradeScore >= 40 ){
      isValidScore = true;
      grade = "D";
    }
    else if (gradeScore < 40 && gradeScore >= 0){
      isValidScore = true;
      grade = "F";
    }
    if(!isValidScore)
      print("Invalid Score. Please enter a number between 0 and 100");
  }

  print("Your grade for $subject is $grade");


}





