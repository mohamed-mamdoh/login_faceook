import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_faceook/shared/components/components.dart';

class Login extends StatelessWidget {
var emailController=TextEditingController();
var passwordController=TextEditingController();
final formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(),
body:
Padding(
  padding: const EdgeInsets.all(20.0),

  child:Center(
    child: SingleChildScrollView(
      child: Form(
        key:  formKey,
        child: Column(
        children: [
          Text(
            'Facebook',
                style:TextStyle(
                  fontSize: 50.0,
                  fontWeight:FontWeight.bold,
                  color: Colors.white,

                ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
controller: emailController,
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "Email can't be empty";
                }

                return null;
              },
              decoration: InputDecoration(

                hintText: 'Email or phone number ',
                border: OutlineInputBorder(),

                prefixIcon: Icon(
                  Icons.email,
                ),

              ),
keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value){
                print(value);
              },
              onChanged: (value){
                print(value);
              },
            ),
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
              controller:passwordController ,
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "Password can't be empty";
                }

                return null;
              },
              decoration:
              InputDecoration(

                hintText: 'Password ',
                border: OutlineInputBorder(),

                prefixIcon: Icon(
                  Icons.lock,
                ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  )
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value){
                print(value);
              },
              onChanged: (value){
                print(value);
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          defaultButton(
            function: (){
              if(formKey.currentState!.validate()){
                print(emailController.text);
                print(passwordController.text);
              }

            },
            text:'login',

          ),
          SizedBox(
            height: 60.0,
          ),
          TextButton(

                  onPressed:(){},
                    child: Text(
                      'Sin Up For Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,

                      ),
                    ),
              ),
          SizedBox(
            height: 20.0,
          ),
              TextButton(

                onPressed:(){},
                child: Text(
                  'Help Center',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,

                  ),
                ),
              ),
            ],
          ),
      )


      ),
    ),
  ),
);



  }

}
