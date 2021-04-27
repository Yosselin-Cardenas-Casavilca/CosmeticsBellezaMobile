import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class Responsive{
  double _width, _heigh, _diagonal;

  double get width => _width;
  double get height => _heigh;
  double get diagonal => _diagonal;

  static Responsive of(BuildContext context)=> Responsive(context );

  Responsive(BuildContext context) {
    final size = MediaQuery.of(context).size;
    this._width = size.width;
    this._heigh = size.height;



    //c2+a2+b2=> c = srt(a2+b2)
    this._diagonal = math.sqrt(math.pow(_width,2)+math.pow(_heigh,2));

  }
 
  double wp(double porcent) => _width* porcent/100;
  double hp(double porcent) => _heigh* porcent/100;
  double dp(double porcent) => _diagonal* porcent/100;


}