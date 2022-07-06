
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final String email;
  const EditProfile({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(email),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final String email;
  const EditProfile({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(email),
      ),
    );
  }
}

