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
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.indigo),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(_control.listUser[_control.index!].avatar.toString()),
                    ),
                  ),
                ),
                Text('Id:${_control.listUser[_control.index!].id}'),
                Text('Full Name:${_control.listUser[_control.index!].firstName} ${_control.listUser[_control.index!].lastName}'),
                Text('Email Id:${_control.listUser[_control.index!].email}')
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
