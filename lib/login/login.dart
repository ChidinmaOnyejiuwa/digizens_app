import 'package:flutter/material.dart';

import 'signup.dart';
import 'widget/custom_scaffold.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/Sign in.png"), // Change path to your background image
    fit: BoxFit.cover,
    ),
    ),
    child:
      ListView(
        padding: EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back!',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Fill your details or continue \nwith social media',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45),),
              SizedBox(height: 26,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text('Email Address'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8,)
                    )
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text('Password'),
                    suffixIcon:Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8,)
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child:Text('forgot password?',
                      style: TextStyle(
                          color: Colors.black45
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16,)
                    )
                ).copyWith(
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(55)),
                  fixedSize: MaterialStateProperty.all(Size
                    (MediaQuery.of(context).size.width * 0.9, 55)),
                ),
              )
            ],
          ),
          SizedBox(height: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 6,
                    child: Divider(),
                  ),
                  Text('or Continue with'),
                  SizedBox(
                    width: 6,
                    child: Divider(),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {  },
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.blue.shade50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16,)
                          )
                      ),
                      icon: Image.asset('assets/images/google.png',
                        width:30,
                        height: 30,)),
                  SizedBox(width: 6,),
                  Image.asset('assets/images/facebook.png',
                    height: 40,
                    width: 40,)
                ],
              ),
              SizedBox(height:20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New user?'),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:(context){
                                return SignupPage();
                              }
                          )
                      );
                    },
                    child: Text('Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    )
    );
  }
}
