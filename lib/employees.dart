import 'package:flutter/material.dart';

class Employees extends StatelessWidget {
  final List<String> employees;

  Employees(this.employees) {
    print ('[Employees Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print ('[Employees Widget] build()');
    return  Column(
          children: employees
            .map((element) => Card(
                child: Column(children: <Widget>[
                        Image.asset('assets/'+element+'.jpg'),
                        Text(element)
                      ]
                      ),
              ),
            ).toList(),
      );
  }
}