import 'package:first_project/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  goToProfilePage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ProfileScreen()
          // {
          //   return const ProfileScreen();
          // },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Dashboard"),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Binit Koirala"),
              accountEmail: const Text("binitkoirala17@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/my_photo.jpeg"),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            getListTile(
              context,
              title: "Home",
              icon: Icons.home_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            getListTile(
              context,
              title: "Profile",
              icon: Icons.info_outlined,
              function: () {
                goToProfilePage(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            getListTile(
              context,
              title: "Logout",
              icon: Icons.logout_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  const SizedBox(
                    height: 10,
                  ),
                  Table(
                    children: const [
                      TableRow(
                        children: [
                          Text(
                            "25",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "18028891",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: const [
                  //     Text(
                  //       "25",
                  //       style: TextStyle(fontSize: 14, color: Colors.white),
                  //     ),
                  //     Text(
                  //       "18028891",
                  //       style: TextStyle(fontSize: 14, color: Colors.white),
                  //     ),
                  //   ],
                  // ),
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
            getInfoLayout(
              context,
              icon: Icons.call_outlined,
              text: "977980214214214",
            ),
            getInfoLayout(
              context,
              icon: Icons.call_outlined,
              text: "977980214214214",
            ),
          ],
        ),
      ),
    );
  }

  Widget getListTile(
    context, {
    required String title,
    required IconData icon,
    Function? function,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      elevation: 5,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        onTap: () {
          if (function != null) {
            function();
          }
        },
        leading: Icon(
          icon,
        ),
        tileColor: Colors.grey.shade200,
        title: Text(title),
        trailing: const Icon(Icons.arrow_right_outlined),
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
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            elevation: 10,
            child: Padding(
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
          ),
        ),
        if (title == null)
          const SizedBox(
            height: 10,
          ),
      ],
    );
  }
}
