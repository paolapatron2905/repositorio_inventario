import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repositorio_inventario/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Gestion de Inventario (SGI)',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login()),
        /* GetPage(name: '/dash', page: () => ), */
      ],
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
