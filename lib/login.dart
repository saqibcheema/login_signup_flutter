import 'package:flutter/material.dart';
import 'package:untitled1/signup.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 50,
                        width: 50,
                        image: AssetImage('images/logo.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xff2D3142),
                            ),
                          ),
                          Text(
                            'Box',
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Rubik Medium',
                              color: Color(0xffF9703B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142),
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Follow this for more interactive \ndesign and recent clips.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff4C5980),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xfff8F9FA),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Color(0xff323f4b),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xfff8F9FA),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Color(0xff323f4b),
                      ),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF9703B),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Rubik Medium',
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do you have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Regular',
                          color: Color(0xff4C5980),
                        ),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ScreenTwo.id);

                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xffF9703B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
