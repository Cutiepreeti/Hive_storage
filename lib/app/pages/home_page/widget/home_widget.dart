import 'package:api/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
      builder: (_control)
      =>  Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Text('Welcome!!!'),
                const SizedBox(
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
