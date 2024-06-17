import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              /* child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ), */
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(206, 231, 65, 255),
                ),
                child: Stack(
                  children: [
                   /*  Positioned.fill(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ), */
                    Positioned.fill(
                      child: Container(
                        color: Colors.black54,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Gestión de Inventarios Online',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_rounded),
              title: Text('Dashboard'),
              onTap: () {
                Get.toNamed('/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
