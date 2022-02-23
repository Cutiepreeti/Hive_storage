import 'package:api/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginviewWidget extends StatelessWidget {
  const LoginviewWidget({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context)
  => GetBuilder<Controller>(
        builder: (_controller)
        => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/50/f8/29/50f829006ddab7a1f1616bc7483ccbbf.jpg'),
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.indigo,
                              offset: Offset(5, 5),
                            ),
                          ]
                      ),
                      child: TextFormField(
                        controller: _controller.email,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          //labelText: 'Email',
                          hintText: 'abc@gmail.com',
                          icon: Icon(Icons.email, color: Colors.indigo),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.indigo,
                              offset: Offset(5, 5),
                            ),
                          ]
                      ),
                      child: TextFormField(
                        controller: _controller.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          //labelText: 'Password',
                          hintText: 'password',
                          icon: Icon(Icons.lock, color: Colors.indigo),
                          //suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 50),
                        //maximumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.indigo,
                      ),
                      onPressed: () {
                        _controller.saveLoginvalue();
                        _controller.getLoginvalue('email');
                        _controller.getLoginvalue('pass');
                        RouteManagement.goToUsers();
                      },
                      child: const Text('Log In'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     minimumSize: const Size(350, 50),
                    //     //maximumSize: Size(300, 50),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     primary: Colors.indigo,
                    //   ),
                    //   onPressed: ()
                    //   {
                    //    _controller.deleteLoginvalue('email');
                    //    _controller.deleteLoginvalue('pass');
                    //    _controller.getLoginvalue('email');
                    //    _controller.getLoginvalue('pass');
                    //
                    //   },
                    //   child: const Text('Delete'),
                    // ),
                  ],
                ),
              ),
            ),
          )
    );
}