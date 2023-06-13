import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_of_week/hive_test/hive_home.dart';
import 'package:package_of_week/services/settingServices.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}


//============= Services =================
Future initialServices() async {
  await Get.putAsync(() => SettingServices().openHiveBox('hossam'),);
     myBox = await SettingServices().openHiveBox('hossam');

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
      ),
      home:  const HiveHome(),
    );
  }
}


