import 'package:flutter/material.dart';

class Custom_Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final Color colorNew;

  const Custom_Appbar({
    super.key,
    required this.titulo,
    required this.colorNew,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      backgroundColor: colorNew,
      centerTitle: false,
      elevation: 30,
      shadowColor: Color.fromARGB(255, 143, 143, 143),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
