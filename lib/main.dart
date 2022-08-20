import 'package:flutter/material.dart';

void main(){
  runApp(const LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Stack(

              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Login', style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 15,),
                      Center(
                      child:ClipOval(
                        child: Image.asset('images/thor.jpg', height: 200,width: 200,fit: BoxFit.fill),
                      )),
                      SizedBox(height: 15,),
                      TextFormField(keyboardType: TextInputType.phone,validator: (value){
                        print(value);
                       // if(value != null)
                          if(value!.length != 10){
                            return 'Please enter 10 digits only';
                          }
                        else
                          return null;
                      },
                        maxLength: 10,
                        decoration: InputDecoration(
                            hintText: 'Number',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),

                            )
                        ),),
                      ElevatedButton(onPressed: ()=>{
                        if(formkey.currentState!.validate()){
                          print('Hurrah')
                        }
                        else{
                          print('Something is wrong')
                        }
                      }, child: Text('Submit')),
                      GestureDetector(
                        onTap: (){
                          print('click');
                        },
                        child: new Text('Sign Up',style: TextStyle(fontSize: 25),),
                      )
                    ],
                  ),
                )
              ],
        ),
            ),
          ),
      ),
    ));
  }
}
