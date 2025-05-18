import 'questoin.dart';

class AppBrain {
  int _q_num = 0 ;

  final List<Questoin> _questoinGroup =[
    Questoin(
      questionText: 'عدد الكواكب في المجموعة الشمسية هو ثمانيه كواكب',
      questionImage: 'images/image-1.jpg',
      questionAnswer:true ,
    ),
    Questoin(
      questionText: 'القطط هي حيوانات لاحمه',
      questionImage: 'images/image-2.jpg',
      questionAnswer:true ,
    ),
    Questoin(
      questionText: 'الصين موجودة في قارة افريقيا',
      questionImage: 'images/image-3.jpg',
      questionAnswer:false, 
    ),
    Questoin(
      questionText: 'الارض مسطحه وليست كرويه',
      questionImage: 'images/image-4.jpg',
      questionAnswer:false, 
    ),
    Questoin(
      questionText: 'باستطاعه الانسان البقاء على قيد بدون لحوم',
      questionImage: 'images/image-5.jpg',
      questionAnswer:true, 
    ),
    Questoin(
      questionText: 'الشمس تدور حول الارض و الارض تدور حول القمر',
      questionImage: 'images/image-6.jpg',
      questionAnswer:false, 
    ),
    Questoin(
      questionText: 'الحيوانات لا تشعر بالالم',
      questionImage: 'images/image-7.jpg',
      questionAnswer:false, 
    ),
  ];
  void nextQuestoin(){
    if(_q_num < _questoinGroup.length -1){
      _q_num++;
    }
  }
  String getQuestoinText(){
    return _questoinGroup[_q_num].questionText;
  }
  String getQuestoinImage(){
    return _questoinGroup[_q_num].questionImage;
  }
  bool getQuestoinAnswer(){
    return _questoinGroup[_q_num].questionAnswer;
  }
}
