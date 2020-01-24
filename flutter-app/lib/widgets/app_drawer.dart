import 'package:flutter/material.dart';
import 'package:flutter_shop/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        AppDrawerHeader(),
        DrawerItem(
          iconData: Icons.tv,
          text: 'Eletrodomésticos',
          routeName: Routes.electro,
        ),
        DrawerItem(
          iconData: Icons.perm_device_information,
          text: 'Celulares',
          routeName: Routes.cellphones,
        )
      ],
    ));
  }
}

class AppDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blue[100]])),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            ),
            Text(
              'Matheus Henrique Raymundo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            )
          ]),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final iconData;
  final text;
  final routeName;

  DrawerItem({this.iconData, this.text, this.routeName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(text),
      onTap: () {
        Navigator.of(context).pop();
        var screen = routes[routeName](context);
        Navigator.push(
            context,
            PageRouteBuilder(
                opaque: false,
                pageBuilder: (context, _, __) {
                  return screen;
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                }));
      },
    );
  }
}
