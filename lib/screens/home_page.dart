import 'package:first_project/urls.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.menu_outlined),
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(
                  25,
                ),
              ),
              color: Theme.of(context).primaryColor,
            ),
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png",
                  ),
                  radius: 50,
                  backgroundColor: Colors.white,
                ),
                const Text(
                  "Binit Koirala",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "25",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Text(
                      "18028891",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 120,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(15),
            child: const Text(
              "Contact Me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.mail_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "binitkoirala17@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.call_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "+977-9804350997",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        tooltip: 'Increment',
        child: const Icon(
          Icons.remove_circle_outline,
          color: Colors.black,
        ),
      ),
    );
  }
}
