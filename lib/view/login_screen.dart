import 'package:air_soft/view_model/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthProvider>(context);

    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Your Profile', style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(88, 62, 242, 1),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double avatarRadius = constraints.maxWidth * 0.20;
          double iconSize = constraints.maxWidth * 0.25;

          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.15,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(88, 62, 242, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: constraints.maxHeight * 0.05),
                        Center(
                          child: CircleAvatar(
                            radius: avatarRadius,
                            child: Icon(Icons.person, size: iconSize),
                            // Replace with your image asset or network image
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              labelText: 'Your name',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Phone number',
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'Change password',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 32.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              final user = User(
                                username: nameController.text,
                                userphone: phoneController.text,
                                password: passwordController.text,
                                useremail: emailController.text,
                              );
                              loginProvider.postData(user);
                              Navigator.of(context).pushNamed('/onboarding');
                            },
                            child: Text(
                              'Confirm',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(88, 62, 242, 1)),
                            ),
                          ),
                          if (loginProvider.loading)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          if (loginProvider.isBack)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(child: Text("Login Successful", style: TextStyle(color: Colors.green))),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save button press
                    },
                    child: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromRGBO(88, 62, 242, 1),
                      minimumSize: Size(double.infinity, 50), // Make button full width
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
