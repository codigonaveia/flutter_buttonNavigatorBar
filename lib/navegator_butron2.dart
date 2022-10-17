import 'package:flutter/material.dart';

class MeuSegundoNavegator extends StatefulWidget {
  const MeuSegundoNavegator({super.key});

  @override
  State<MeuSegundoNavegator> createState() => _MeuSegundoNavegator();
}

class _MeuSegundoNavegator extends State<MeuSegundoNavegator> {
  var _currentPage = 0;
  var _pages = [Text("Pagina 1"), Text("Pagina 2"), Text("Pagina 3")];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegator 2",
      home: Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.cake),
                label: "Meus Dados",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud),
                label: "Login",
                backgroundColor: Colors.green),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.green,
          onTap: (int intIndex) {
            setState(() {
              _currentPage = intIndex;
            });
          },
        ),
      ),
    );
  }
}
