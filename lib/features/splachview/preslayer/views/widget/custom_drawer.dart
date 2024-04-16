import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        dragStartBehavior: DragStartBehavior.start,
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height * .32,
              // width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/be563d7bfaefe67696fab70f7524d5b1.gif',
                fit: BoxFit.fill,
                width: double.infinity,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildDrawerItem(
                icon: Icons.language,
                text: 'Language',
                // onTap: () {
                //   // Add functionality to rate the app
                // },
              ),
              _buildDrawerItem(
                icon: Icons.share,
                text: 'Share with Friends',
                // onTap: () {
                //   // Add functionality to share the app
                // },
              ),
              _buildDrawerItem(
                icon: Icons.star,
                text: 'Rate this App',
                // onTap: () {
                //   // Add functionality to share the app
                // },
              ),
              _buildDrawerItem(
                icon: Icons.phone,
                text: 'Contact Us',
                // onTap: () {
                //   // Add functionality to share the app
                // },
              ),
            ],
          )

          // Add more options as needed
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    // You can customize this header according to your design
    return Column(
      children: [Image.asset('assets/be563d7bfaefe67696fab70f7524d5b1.gif')],
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    /* Function onTap*/
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color.fromARGB(255, 116, 35, 6),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          color: Color.fromARGB(255, 116, 35, 6),
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
        ),
      ),
      // onTap: onTap,
    );
  }
}
