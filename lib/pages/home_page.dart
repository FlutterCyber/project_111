import 'package:flutter/material.dart';
import 'package:project_11/pages/second_page.dart';
import 'package:project_11/view/my_drawer.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String login = "";
  String password = "";
  bool passwordVisibility = true;

  void showLogin() {
    setState(() {
      login = loginController.text.trim();
      password = passwordController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("STF page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.id);
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: loginController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "login",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  //suffixIcon: Icon(Icons.account_circle,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                obscureText: passwordVisibility,
                controller: passwordController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    icon: passwordVisibility
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    color: Colors.grey,
                  ),
                  //suffixIcon: Icon(Icons.account_circle,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                showLogin();
              },
              child: Text("Show login"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              login,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              password,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
