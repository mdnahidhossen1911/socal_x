import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static String name = '/sign_in_screen';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 80,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text('Socal X',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                ),

                SizedBox(height: 35,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        borderSide: BorderSide(color: Colors.white,width:1)
                    ),
                    hintText: 'Enter your mail',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon: Icon(Icons.vpn_key_outlined,color: Colors.grey.shade400,),
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      borderSide: BorderSide(color: Colors.white,width:1)
                    ),
                    hintText: 'Enter your password',
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon: Icon(Icons.vpn_key_outlined,color: Colors.grey.shade400,),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                        onPressed: () {},
                      child: Text('Sign in',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 45),
                        backgroundColor: Colors.teal
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
