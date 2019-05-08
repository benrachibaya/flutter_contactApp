import 'package:flutter/material.dart';
import './employees.dart';

class EmployeeManager extends StatefulWidget {
  final String startingEmployee;

  EmployeeManager(this.startingEmployee){
    print ('[EmployeeManager Widget] Constructor');
  }

   @override
   State<StatefulWidget> createState() {
     print ('[EmployeeManager Widget] createState()');
     return _EmployeeManagerState();
   }
}

class _EmployeeManagerState extends State<EmployeeManager> {
    List<String> _employees = [];

  @override
  void initState() {
    print ('[EmployeeManager State] initState()');
    _employees.add(widget.startingEmployee);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print ('[EmployeeManager State] build()');
    return Column(children: [Container(
              margin: EdgeInsets.all(10.0),
              child:  RaisedButton(
                color: Theme.of(context).primaryColor,
                        onPressed: () {
                          setState(() {
                            _employees.add('Andy_Bernard'); 
                          });
                        }, 
                        child: Text('Add Employee')
                  ),
            ),
            Employees(_employees)
    ],
    );
  }
}