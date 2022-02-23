import 'package:api/app/navigators/navigators.dart';

import 'home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
 // HomeController _controller = Get.put(HomeController(
 //     Get.put(HomePresenter(Get.put(AuthUseCase(Get.put(Repository())))))));

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_control) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Text('Welcome!!!'),
                SizedBox(
                  height: 20,
                ),

                 //Text($_control.),
                // Text('Id:${_control.data?.data?.id.toString() ?? ''}'),
                // Text('First Name:${_control.data?.data?.firstName.toString() ?? ''}'),
                // Text('Last Name:${_control.data?.data?.lastName.toString() ?? ''}'),
                // Text('Email::${_control.data?.data?.email.toString() ?? ''}'),
                // ElevatedButton(
                //     onPressed:()
                //     {
                //        RouteManagement.goToUsers();
                //     },
                //     child: Text('Show'),),
              ]
            ),
          ),
        );
      }
    );
  }
}
