import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.info_outlined,
        ),
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
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
            width: double.infinity,
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/my_photo.jpeg"),
                  radius: 50,
                  backgroundColor: Colors.white,
                ),
                Text(
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Age",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "25",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Id",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("18028891",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
          // Padding(
          //   // width: ,
          //   padding: EdgeInsets.all(16),
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Text(
          //       "Text Button",
          //       style: TextStyle(
          //           // color: Colors.white,
          //           ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print("Successfully printed");
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "My name is Binit Koirala",
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            child: const Text("Elevated Button"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              // ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).hideCurrentSnackBar();

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Successfully Cleared",
                    textAlign: TextAlign.center,
                  ),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: const Text("Clear Snackbar"),
          ),

          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go Home"),
          ),
        ],
      ),
    );
  }
}
