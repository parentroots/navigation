import 'package:flutter/material.dart';

void  main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(

     home: Home(),

   );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: Text('App bar title'),),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));

            }, child: Text("Go To Signup Page",
            style: TextStyle(

              fontSize: 30,
              color: Colors.white

            ),
            ),
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.blue

              )
              ),


            ElevatedButton(onPressed: (){
               
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              
            }, child: Text("Go To Login Page",
              style: TextStyle(

                  fontSize: 30,
                  color: Colors.white

              ),
            ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                )
            ),

          ],

        ),
      ),


    );

  }
}



class LoginPage extends StatelessWidget {
  const LoginPage({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue.shade100,
    );
  }
}





class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(


        child: Column(
             mainAxisAlignment: MainAxisAlignment.center,

          children: [


            ElevatedButton(onPressed: (){

              Navigator.pop(context);
            }, child: Text("Go Back",style: TextStyle(fontSize: 60),),
              style: ElevatedButton.styleFrom(

              ),
            )
          ],


        ),
      ),



    );
  }
}



