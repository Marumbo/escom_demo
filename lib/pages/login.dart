
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  final String id ="loginpage";

  @override
  _LoginPageState createState() => _LoginPageState();
   
}

class _LoginPageState extends State<LoginPage> {
final _formKey = GlobalKey<FormState>();
final _scaffoldKey = new GlobalKey<ScaffoldState>(); 

 String _email = "";
 String _password = "";


 _submit(){

   if(_formKey.currentState.validate()){
     _formKey.currentState.save();   
     print("email:$_email");
     print("password: $_password");
     if(_email.trim() == "test@escom.com"  && _password.trim()=="password")
      return Navigator.pushNamed(context, 'home');
    else
      return _scaffoldKey.currentState.showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text("Wrong login details",
                  style: TextStyle(
                    fontSize: 18
                  ),)
        ));

   }
 }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: _scaffoldKey,
     backgroundColor: Colors.white,
      body: 
       SingleChildScrollView(
         child:
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Padding(
          child:
              Container(
              height: 125,
              width: 125,
                child:
                  Image.asset('assets/images/index.jpg',
                  fit: BoxFit.contain)
        ),
        padding: 
          EdgeInsets.symmetric(vertical:50),
        ),

         Text(   "Welcome to the Escom app(Demo)",
                    style: TextStyle
                        (
                          fontSize: 20
                        )
                ),      
          Form(
           
          key: _formKey,
            
              child: Column(
           
              children: 
              [
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                child: TextFormField(
                 onSaved: (val) => _email = val,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email address",
                  ), 
                  keyboardType: TextInputType.emailAddress, 
                  validator: (val) {
                    if(!val.contains('@'))
                      return 'Please enter a valid email';
                    else
                      return null;
                  }//todo add regex for validation
                ), 
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                child: TextFormField(
                  onSaved: (input) => _password = input,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),  
                  obscureText: true,
                 validator: (input){
                   if(input.length < 6)
                    return 'Please enter a valid password';
                    else
                    return null;
                 } //todo add regex for validation
                ),
              ),

              RaisedButton(

              onPressed: () => _submit(),
              child:
              Text("Login", 
              style: TextStyle(
              color:Colors.black,
              fontSize: 14)
              )
           
              )

              ]  
            ) 
        ),
       
          
        ],

       )
        
    ) 
      
    );
  }
}


