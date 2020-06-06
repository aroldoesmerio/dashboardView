import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        color: Colors.blueGrey[200],
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: [
            makeDashboardItem("Book", Icons.book),
            makeDashboardItem("Music", Icons.music_note),
            makeDashboardItem("Food", Icons.fastfood),
            makeDashboardItem("Videos", Icons.video_library),
            makeDashboardItem("Photos", Icons.photo),
            makeDashboardItem("Call", Icons.call)
          ],
        ),
      ),
    );
  }
}

Card makeDashboardItem(String title, IconData icon){

  return Card(
    elevation: 1.0,
    margin: EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(220, 220, 220, 1.0)
      ),
      child: InkWell(
        onTap: (){

        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          children: [
            SizedBox(height: 50.0,),
            Center(
              child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0,),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
                ),
              ),
            ) 
          ],
        ),
      ),
    ),
  );
}