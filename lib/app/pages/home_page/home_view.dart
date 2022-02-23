
import 'package:api/app/app.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
 // HomeController _controller = Get.put(HomeController(
 //     Get.put(HomePresenter(Get.put(AuthUseCase(Get.put(Repository())))))));

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.indigo,
        ),
        body:const HomeWidget(),
      );
}
