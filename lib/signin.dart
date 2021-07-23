import 'package:flutter/material.dart';
import 'package:simplymakedemo/home.dart';
import 'package:simplymakedemo/signup.dart';

class openAccount extends StatefulWidget {
  const openAccount({ Key? key }) : super(key: key);

  @override
  _openAccountState createState() => _openAccountState();
}

class _openAccountState extends State<openAccount> {
    String displayedText=" ";

  void home(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
    setState(() {
      displayedText=" ";
    });
  }

 void signup(){
   Navigator.push(context, MaterialPageRoute(builder: (content)=> createAccount()));
   setState(() {
     displayedText=" ";
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            Container(
              alignment: FractionalOffset(0.1, 0.6),
              child: Text(
                "Username",
                style: TextStyle(fontSize: 18.0),
                ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder()
                  ),
                  style: TextStyle(fontSize: 18.0),
                  onChanged: (text){
                    displayedText = text;
                  },
                ),
              ),
            Container(
              alignment: FractionalOffset(0.1,0.6),
              child: Text(
                "Password",
                style: TextStyle(fontSize:18.0),
              ),
              padding: const EdgeInsets.only(top:20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder()
                  ),
                  style: TextStyle(fontSize: 18.0),
                  onChanged: (text){
                    displayedText = text;
                  },  
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your account details?"),
                Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: () => signup(),
                    child: const Text('Sign Up'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ElevatedButton(
                  onPressed: () => home(),
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen.shade200,
                    onPrimary: Colors.white, 
                  ),
                ),
                width: 100,
              ),
            ),

          ],
        ),
      ),
    );      
  }
}