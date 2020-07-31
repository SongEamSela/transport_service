import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30,right: 30),
        child: Column(
          children: <Widget>[
            _header(),
            _formInput(),
            _footer(),
          ],
        ),
      ),
    );
  }


  Widget _header(){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Container(
              width: 290,
              height: 200,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("images/Image_icon.png")),
              ),
              child: Center(
                child: Text('Agency Services', style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 25,
                  color: Colors.blue,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 1.0,
                      color: Color.fromARGB(145, 145, 145, 145),
                    )
                  ]
                ),),
              ),
            ),
          ],
        ),
        Text('Welcome!',
          style: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 40,
            color: const Color (0xf5296af4),
          ),
        ),
        SizedBox(height: 10,),
        Text('Log in with your Email and Password',
          style: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 12,
            color: const Color(0xff524949),
          ),
        )
      ],
    );
  }

  Widget _formInput(){
    return Column(
      children: <Widget>[
        SizedBox(height: 25,),
        _email(),
        SizedBox(height: 20,),
        _password(),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text('Forgot Password?',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 14,
                color: const Color (0xf5296af4),
              ),)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 186,
              height: 43,
              child: FlatButton(
                color: const Color (0xf5296af4),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                child:Text('Sign In ',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );

  }

  Widget _email(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        prefixIcon: Icon(Icons.email, size: 20, color: Colors.black45,),
        hintText:'Enter email address',
        hintStyle: TextStyle(fontFamily: 'Helvetica Neue',fontSize: 14,),
      ),
    );
  }

  Widget _password(){
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        prefixIcon: Icon(Icons.lock, size: 20, color: Colors.black45,),
        hintText: 'Enter password',
        hintStyle: TextStyle(fontFamily: 'Helvetica Neue',fontSize: 14,),
      ),
    );
  }

  Widget _footer(){
    return Column(
      children: <Widget>[
//        SizedBox(height: 20,),
//        Text('Or log in with ',
//          style: TextStyle(
//            fontFamily: 'Helvetica Neue',
//            fontSize: 14,
//            color: const Color(0xff524949),
//          ),
//        ),
//        SizedBox(height: 20,),
//        Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Container(
//              height: 50,
//              width: 50,
//              decoration: new BoxDecoration(
//                image: new DecorationImage(image: new AssetImage("images/facebook.png")),
//              ),
//            ),
//            SizedBox(width: 15,),
//            Container(
//              height: 50,
//              width: 50,
//              decoration: new BoxDecoration(
//                image: new DecorationImage(image: new AssetImage("images/google.png")),
//              ),
//            ),
//          ],
//        ),
        SizedBox(height: 20,),
        RichText(
          text: TextSpan(
              text: 'Dont have an account? ',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 14,
                color: const Color(0xff524949),
              ),
              children: <TextSpan>[
                TextSpan(text: 'Sign up',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 14,
                    color: const Color (0xf5296af4),
                  ),
                ),
              ]
          ),
        ),
      ],
    );

  }

}
