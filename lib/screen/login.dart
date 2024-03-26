import 'package:flutter/material.dart';
import 'package:self_billing/customeWidget/textfield.dart';
import 'package:self_billing/screen/sample.dart';


class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
          actions: [const Icon(Icons.person), const Icon(Icons.person)],
          iconTheme: const IconThemeData(color: Colors.black),
          // backgroundColor: Color.fromARGB(255, 54, 203, 244),
          
        //   centerTitle: true,
          leading: const Icon(Icons.person),
        ),
        body:  Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomeTextfield(
                validator: (value){
                  if (value.toString().isEmpty) {
                    return 'invalid';
                  }
                  return null;
                },
                username: 'Username',
                prifix: Icon(Icons.person),
                controller: usernameController,
              ),
              SizedBox(
                height: 5,
              ),
              CustomeTextfield(
                username: 'password',
                prifix: Icon(Icons.lock),
                controller: passwordController,
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
if (formKey.currentState!.validate()) {
   Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavScreen(),
                    ));
                    print(usernameController.text);
                    print(passwordController.text);
}

                   
                  },
                  child: Text('Login'))
            ],
          ),
        ));
  }
}
