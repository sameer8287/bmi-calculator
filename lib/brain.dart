import 'dart:math';
class Brain{

  Brain({required this.height,required this.weight});

  final int height;
  final int weight;

  double bmi =26;
  String calculatebmi()
  {
    double bi = weight/pow(height/ 100,2);
    bmi = bi;
    return  bi.toStringAsFixed(1);
  }
  String getresult()
  {
    if(bmi>= 25)
      {
        return 'overweight';
      }
    else if(bmi>18.5)
      {
        return 'normal';
      }
    else
      {
        return 'under weight';
      }
  }
  String getInter()
  {
    if(bmi>= 25)
    {
      return 'You have a higher than normal body weight. Try to excercise more!! ';
    }
    else if(bmi>18.5)
    {
      return 'You have a normal body weight. Good job!!';
    }
    else
    {
      return 'You have a lower than normal body weight. You should eat more!!';
    }
  }

}