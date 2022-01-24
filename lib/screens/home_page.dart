import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const Drawer(),
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
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/my_photo.jpeg"),
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
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
          const SizedBox(
            height: 20,
          ),
          getInfoLayout(
            context,
            title: "Contact Me",
            icon: Icons.mail_outlined,
            text: "binitkoirala17@gmail.com",
          ),
          getInfoLayout(
            context,
            icon: Icons.call_outlined,
            text: "977980214214214",
          ),
          getInfoLayout(
            context,
            title: "Follow Me",
            icon: Icons.language_outlined,
            text: "https://www.binitkoirala.com.np",
          ),
        ],
      ),
    );
  }

  Widget getInfoLayout(context,
      {String? title, required IconData icon, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Container(
            width: 120,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        if (title != null)
          const SizedBox(
            height: 10,
          ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
