import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Center(child: Text('Settings', textAlign: TextAlign.center,)),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            _AvatarWidget(),
            SizedBox(height: 10,),
            _UserName(),
             SizedBox(height: 5,),
            _UserPhone(),
             SizedBox(height: 5,),
            _UserNickName()
          ],
        ),
      ),
    );
  }
}

class _UserNickName extends StatelessWidget {
  const _UserNickName();

  @override
  Widget build(BuildContext context) {
    return const Text('@Sidi', style: TextStyle(color: Colors.blue),);
  }
}

class _UserPhone extends StatelessWidget {
  const _UserPhone();

  @override
  Widget build(BuildContext context) {
    return const Text('+38-093-777-77-33');
  }
}

class _UserName extends StatelessWidget {
  const _UserName();

  @override
  Widget build(BuildContext context) {
    return const Text('Izotova Yeva', style: TextStyle(fontSize: 20, letterSpacing: 5, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 245, 67, 127)),);
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(10),
      color: Colors.cyan,
      child: const Placeholder(),
    );
  }
}
