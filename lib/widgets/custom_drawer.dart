import 'package:flutter/material.dart';
import 'package:flutter_social_ui/screens/home_screen.dart';
import 'package:flutter_social_ui/screens/login_screen.dart';
import 'package:flutter_social_ui/screens/profile_screen.dart';
import '../data/data.dart';
import '../data/data.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3, color: Theme.of(context).primaryColor),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
              Icon(Icons.dashboard),
              'Home',
              () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen()))),
          _buildDrawerOption(Icon(Icons.chat), "Chat", () {}),
          _buildDrawerOption(Icon(Icons.location_on), "Locations", () {}),
          _buildDrawerOption(
              Icon(Icons.account_box),
              "Profile",
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) => ProfileScreen(
                        user: currentUser,
                      )))),
          _buildDrawerOption(Icon(Icons.settings), "Settings", () {}),
//          Spacer(),
//          _buildDrawerOption(
//              Icon(Icons.exit_to_app),
//              'Logout',
//              () => Navigator.of(context).pushReplacement(
//                  MaterialPageRoute(builder: (_) => LoginScreen()))),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                  Icon(Icons.exit_to_app),
                  'Logout',
                  () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => LoginScreen()))),
            ),
          ),
        ],
      ),
    );
  }
}
