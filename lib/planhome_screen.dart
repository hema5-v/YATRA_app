import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'plantask_list_provider.dart';
import 'new_taskplan.dart';
import 'task_listplan.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28114A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.assignment,
                    color: Color(0xff37D3B6),
                    size: 35,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "My Plan",
                  style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${Provider.of<Data>(context).taskList.length} tasks",
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xff37D3B6),
              ),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: TasksList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* show modalbottomsheet and add items */
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return NewTask();
              });
        },
        backgroundColor: Color(0xff28114A),
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
