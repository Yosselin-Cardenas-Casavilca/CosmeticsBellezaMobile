import 'package:flutter/material.dart';
import 'package:jhoss_cardenas_movil/utils/responsive.dart';
import 'package:jhoss_cardenas_movil/widgets/circle.dart';
import 'package:jhoss_cardenas_movil/widgets/logifarm.dart';


class LoginPage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
          width: double.infinity,
          height: responsive.height,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top:-(responsive.wp(75))*0.2,
                right: -50,
                child: Circle(
                size: responsive.wp(80),
                colors: [
                   Colors.pink[100],
                   Colors.pinkAccent
                ]
                ,),
                
              ),
              Positioned(
                bottom:-(responsive.wp(75))*0.2,
                left: -50,
                child: Circle(
                size: responsive.wp(80),
                colors: [
                   Colors.pink[100],
                   Colors.pinkAccent
                ]
                ,),
                
              ),
              Positioned(
                bottom:-(responsive.wp(75))*0.2,
                right: -50,
                child: Circle(
                size: responsive.wp(100),
                colors: [
                   Colors.pink[200],
                   Colors.pinkAccent
                ]
                ,),
                
              ),
              
          Positioned(
            top: 130,
            child: Column(
              
              children: [
                SizedBox(
                  height: responsive.dp(4),
                ),
                Image.asset('assets/image.jpg', height: responsive.wp(40), width: responsive.dp(45),),
                Text("Hola \nBienvenido a belleza.com \nEspacio dedicado a la belleza ", 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: responsive.dp(2)),)
              ],
            ),
          ),
          LoginForm()
          
        ]),
    ),
        ),
      ));
  }
}