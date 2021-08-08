import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Drawer(
        child: Container(
          color: Color.fromRGBO(12, 12, 77, 25),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
                title: Text('Tarefas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                onTap: () => true,
              ),
              ListTile(
                leading: Icon(
                  Icons.filter_1,
                  color: Colors.white,
                ),
                title: Text('ANO 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                onTap: () => true,
              ),
              ListTile(
                leading: Icon(
                  Icons.filter_2,
                  color: Colors.white,
                ),
                title: Text('ANO 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                onTap: () => true,
              ),
              ListTile(
                leading: Icon(
                  Icons.filter_3,
                  color: Colors.white,
                ),
                title: Text('ANO 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                onTap: () => true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
