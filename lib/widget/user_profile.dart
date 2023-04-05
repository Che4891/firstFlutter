import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Center(
            child: Text(
          'Settings',
          textAlign: TextAlign.center,
        )),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[350],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            _UserInfo(),
            SizedBox(
              height: 20,
            ),
            _MenuBlock(),
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _AvatarWidget(),
          SizedBox(
            height: 10,
          ),
          _UserName(),
          SizedBox(
            height: 5,
          ),
          _UserPhone(),
          SizedBox(
            height: 5,
          ),
          _UserNickName()
        ],
      ),
    );
  }
}

class _MenuBlock extends StatelessWidget {
  const _MenuBlock();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _RowWidget(myIcon: Icons.favorite, text: 'Favorite',),
        _RowWidget(myIcon: Icons.computer, text: 'Document',),
        _RowWidget(myIcon: Icons.house_sharp, text: 'House',)
      ],
    );
  }
}

class _RowWidget extends StatelessWidget {
  final IconData myIcon;
  final String text;
  const _RowWidget({
    Key? key, required this.myIcon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
        ]
      ),
      child: Row(
        children: [
          Icon(
            myIcon,
            size: 30,
            color: Color.fromARGB(255, 236, 80, 176),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 236, 80, 176),
                  ))),
          const Icon(
            Icons.chevron_right,
            size: 30,
            color: Color.fromARGB(255, 236, 80, 176),
          ),
        ],
      ),
    );
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

class _UserName extends StatelessWidget {
  const _UserName();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Izotova Yeva',
      style: TextStyle(
          fontSize: 20,
          letterSpacing: 5,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 245, 67, 127)),
    );
  }
}

class _UserPhone extends StatelessWidget {
  const _UserPhone();

  @override
  Widget build(BuildContext context) {
    return const Text('+38-093-777-77-33');
  }
}

class _UserNickName extends StatelessWidget {
  const _UserNickName();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@Sidi',
      style: TextStyle(color: Colors.blue),
    );
  }
}
