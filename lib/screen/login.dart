import 'package:flutter/material.dart';
import 'package:repositorio_inventario/constant/custom_appbar.dart';
import 'package:repositorio_inventario/constant/custom_drawer.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_Appbar(
        titulo: 'Iniciar Sesión',
        colorNew: Color(0x8FD04EFF),
      ),
      drawer: Custom_Drawer(),
    );
  }
}
