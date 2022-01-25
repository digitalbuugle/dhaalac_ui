import 'package:flutter/material.dart';
import '../assets.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: Material(
          color: Colors.black54,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: MySliverAppBar(expandedHeight: 200),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      color: Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.notifications,
                                color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'App Notifications',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                        color: Colors.grey),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.done, color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'My List',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                        color: Colors.grey),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.settings,
                                color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'App Settings',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.monetization_on,
                                color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Furo Adeegan',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.call, color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Call Us',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: <Widget>[
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Assets.chat),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 20.0,
                                width: 20.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                'WhatsApp',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    const Divider(
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                        color: Colors.grey),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actionsPadding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 0.1),
                                title: const Text("Your Account ID"),
                                content: const Text("VJKBSHUVKBFG45248"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Ok")),
                                ],
                              );
                            });
                      },
                      child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: const <Widget>[
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(Icons.account_circle,
                                  color: Colors.white, size: 20.0),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Account ID : ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text("KJFNIBGFRB6G5B5BFDFBVGKDB"),
                            ],
                          )),
                    ),
                    const Divider(
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                        color: Colors.grey),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actionsPadding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 0.1),
                                title: const Text("Log Out ? "),
                                content: const Text(
                                    "Ma hubta inad Rabto In aad Iska Xirto Ciwaankadan"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Maya")),
                                  const SizedBox(
                                    width: 40.0,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text("Haa"))
                                ],
                              );
                            });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.logout, color: Colors.white, size: 20.0),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sign Out',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Version: 1.0.0-beta',
                            style: TextStyle(
                                fontFamily: 'Montserrat', color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.background,
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: const Text("Mohamed Osman Abdulle"),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  Assets.avatar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
