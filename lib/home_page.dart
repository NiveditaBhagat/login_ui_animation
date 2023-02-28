
import 'package:flutter/material.dart';
import 'package:login_ui/Animation/FadeAnimation.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Container(
            child: Column(
              children: <Widget>[
                 Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background_login.png'),
                        fit: BoxFit.fill
                        ),
                    ),
                    child: Stack(
                    
                      children: [
                        Positioned(
                          left: 30,
                          width:80,
                          height: 200,
                          child: FadeAnimation(
                            1, Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/light-1.png')),
                              ),
                            ),
                          ),
                          ),
                          Positioned(
                          left: 140,
                          width:80,
                          height: 150,
                          child: FadeAnimation(
                            1.3, Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/light-2.png')),
                              ),
                            ),
                          ),
                          ),
                          Positioned(
                         
                          top: 40,
                          left: 250,
                          right:40,
                          height: 150,
                          child: FadeAnimation(
                            1.5, Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/clock.png')),
                              ),
                            ),
                          ),
                          ),
                          Positioned(
                            child: FadeAnimation(
                              1.6, Container(
                                margin: EdgeInsets.only(top:50),
                                child: Center(
                                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                            ),
                      ],
                    ),
                  ),
               
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      FadeAnimation(
                        1.8,Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, 0.2),
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                 border: Border(bottom: BorderSide(color: Colors.grey[100]!)),
                                ),
                                child:TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email or Phone number',
                                    hintStyle: TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                              ),
                         
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 0.2),
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                            
                              child:TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                            ),
                       
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ],
                            ),
                        ),
                        child: Center(
                          child:Text('Login',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      FadeAnimation(1.5,Text('Forgot password?',style:TextStyle(color: Color.fromRGBO(143, 148, 251, 1)))),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
      
    );
  }
}