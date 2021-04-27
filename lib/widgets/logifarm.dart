import 'package:flutter/material.dart';
import 'package:jhoss_cardenas_movil/utils/responsive.dart';
import 'package:jhoss_cardenas_movil/widgets/imputext.dart';


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  GlobalKey<FormState> _formKey = GlobalKey();
   String _email ='', _password = '';
  _submit(){
    final isOk = _formKey.currentState.validate();
    print ("form isOk $isOk");
    if (isOk){
      
    }

  }


  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              children: [
                InputText(
                  keyboardType: TextInputType.number,
                  label: "Correo electrónico",
                  fontSize: responsive.dp(1.7),
                  onChanged: (text){
                    _email = text;
                  },
                  validator: (text){
                         if(text.length != 8 ){
                           return "Correo inválido";
                         }
                         return null;
                       },
                  ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.blueAccent[200])
                )
              ),
              child:Row(
                children: [
                Expanded(child: 
                InputText(            
                        label: "Contraseña",
                        obscureText: true,
                        borderEnabled: false,
                        fontSize: responsive.dp(1.7),
                        onChanged: (text){
                        _password = text;                    
                   },
                        validator: (text){
                          if(text.length == 6 ){
                            return "Contraseña incorrecto";
                          }
                          return null;
                        },
                 ),
                 ),
                  
                 ],
              ),
            ),
            SizedBox(height: responsive.dp(4)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(70,70,240,94), // background
                       // foreground
                      ),
                child: Text("Ingresar",style: TextStyle(color: Colors.white,
                fontSize: responsive.dp(2.3)),),
                onPressed: (){
                  //mensaje DNI
                  //Navigator.of(context).push(MaterialPageRoute(builder:(context)=> DniPage()));

                 //Navigator.of(context).push(MaterialPageRoute(builder:(context)=> CodigoPage()));
                 //mensaje
                },
                //
              ),
            ),
            SizedBox(height: responsive.dp(4)),
            /*  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Eres nuevo por aquí?',style: TextStyle(fontSize: responsive.dp(1.8)),),
              TextButton(
                child: Text('Registrate', 
                style: TextStyle(color: Color.fromRGBO(70,70,240,94),fontWeight: FontWeight.w900,
                fontSize: responsive.dp(1.8)),
                
                ),
                onPressed:(){}
              )
            ],
            ),  */
            SizedBox(height:responsive.dp(10),)
          ],
          
        ),
      ),
    );
  }
}