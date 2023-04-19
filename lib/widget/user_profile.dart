import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List <MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, 'Favorite'),
    MenuRowData(Icons.facebook_sharp, 'Facebook'),
    MenuRowData(Icons.house_sharp, 'House'),
    MenuRowData(Icons.contact_page, 'Contact')
  ];
  List <MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Notification'),
    MenuRowData(Icons.privacy_tip, 'Privacy'),
    MenuRowData(Icons.apple, 'Apple'),
    MenuRowData(Icons.android, 'Android')
  ];
   List <MenuRowData> thirdMenuRow = [
    MenuRowData(Icons.image, 'Icon'),
    MenuRowData(Icons.insert_emoticon_sharp, 'Imogen'),
    MenuRowData(Icons.sticky_note_2, 'Stickers')
  ];
  UserProfile({super.key});

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
      body: Stack(
        children: [
           Container(
          width: double.infinity,
          color: Colors.grey[350],
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                _UserInfo(),
                const SizedBox(
                  height: 20,
                ),
                _MenuBlock(menuRow: firstMenuRow),
                 const SizedBox(
                  height: 20,
                ),
               _MenuBlock(menuRow: secondMenuRow),
                const SizedBox(
                  height: 20,
                ),
               _MenuBlock(menuRow: thirdMenuRow),
              ],
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Row(
            children: [
              Icon(Icons.edit, color: Colors.blue[700], size: 19,),
              Text('Edit', style: TextStyle( color: Colors.blue[700], fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ))
        ]
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
   _UserInfo();

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

class MenuRowData {
  final IconData myIcon;
  final String text;

  MenuRowData(this.myIcon, this.text);
}

class _MenuBlock extends StatelessWidget {
 final List <MenuRowData> menuRow;
  const _MenuBlock({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: menuRow.map((data) => _RowWidget(data: data)).toList()
    );
  }
}

class _RowWidget extends StatelessWidget {
  final MenuRowData data;
   _RowWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Row(
        children: [
          Icon(
            data.myIcon,
            size: 30,
            color: Color.fromARGB(255, 236, 80, 176),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(data.text,
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
