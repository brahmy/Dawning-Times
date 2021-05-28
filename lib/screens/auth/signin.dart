import 'package:dawning_times/screens/HomeMainTabs.dart';
import 'package:dawning_times/screens/auth/signup.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],

      body: Center(
        child:SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 75,1.0,75),
                    child: Center(
                      child: Text('Company LOGO'),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,1.0,1.0,1.0),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.mail_outline),
                        ),
                        hintText: 'Enter Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.lock_outline),
                        ),
                        hintText: 'Enter PIN',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:200),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320,height: 45),
                  child: ElevatedButton(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeMainTabs()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()));
                  },
                  child: Text(
                    "Don't have an account? SignUp",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320,height: 47),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'Continue With Google',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320,height: 47),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'Continue With Facebook',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}

