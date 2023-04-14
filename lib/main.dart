import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.purpleAccent,
                Colors.pinkAccent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  minRadius: 60.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/red-beans.png'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Vendra Sekar",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "TE IT Student",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                        // Icon for Follow
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Edit",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                        ),
                        // Icon for Unfollow
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Save",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      "Email ID",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_circle_right),
                    subtitle: Text(
                      "venven@gmail.com",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
                Divider(),
                ListTile(
                    leading: Icon(Icons.cloud),
                    title: Text(
                      "Github ID",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_circle_right),
                    subtitle: Text(
                      "https://github.com/PurpleVen",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
                Divider(),
                ListTile(
                    leading: Icon(Icons.link),
                    title: Text(
                      "LinkedIn ID",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_circle_right),
                    subtitle: Text(
                      "www.linkedin.com/in/vendra-sekar-9999",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
