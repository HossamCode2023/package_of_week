// ignore_for_file: avoid_unnecessary_containers, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:package_of_week/services/settingServices.dart';




class HiveHome extends StatefulWidget {
  const HiveHome({super.key});

  @override
  State<HiveHome> createState() => _HiveHomeState();
}

class _HiveHomeState extends State<HiveHome> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Hive Home',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                onPressed: (){
                  myBox!.put('name', 'hossam');
                  print('==================================== Put name ====================');
                  myBox!.put('job', 'flutter development');
                  print('==================================== Put job ====================');

                },
                child: const Text('Put Data')),
            ),
             Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  var name = myBox!.get('name');
                  print('==================================== Name:   $name  ====================');
                  var job = myBox!.get('job');
                  print('==================================== job:   $job  ====================');
                },
                child: const Text('Get Data')),
            ),
             Center(
              child: MaterialButton(
                color: Colors.amber,
                onPressed: (){
                  // myBox!.delete('name');
                  // myBox!.deleteAll({'name','job'});
                  myBox!.clear();
                  print('====================================   Delete all ====================');
                },
                child: const Text('Delete Data')),
            ),
          ],
        ),
      ),
      
    );
  }
}