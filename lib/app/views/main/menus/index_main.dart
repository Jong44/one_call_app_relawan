import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:one_call_login_register/app/config/ColorConfig.dart';
import 'package:one_call_login_register/app/views/main/details/home_page.dart';
import 'package:one_call_login_register/app/widgets/IndexMain/notification_icon.dart';

class IndexMain extends StatefulWidget {
  const IndexMain({super.key});

  static const String route = '/home';

  @override
  State<IndexMain> createState() => _IndexMainState();
}

class _IndexMainState extends State<IndexMain> {
  final List _menuItems = [
    {'icon': Iconsax.home, 'iconActive': Iconsax.home5, 'title': 'Beranda'},
    {
      'icon': Iconsax.keyboard,
      'iconActive': Iconsax.keyboard5,
      'title': 'Kontak',
    },
    {
      'size': 80.0,
    },
    {
      'icon': Iconsax.element_3,
      'iconActive': Iconsax.element_35,
      'title': 'Informasi',
    },
    {
      'icon': Icons.person_2_outlined,
      'iconActive': Icons.person_2,
      'title': 'Profil',
    },
  ];

  final List _dummyPage = [
    const HomePage(),
    'Ini Halaman Kontak',
    '',
    'ini Halaman Informasi',
    'Ini Halaman Profil',
  ];

  int currentPage = 0;
  final String _location = 'Mijen, Prambanan Kidul, Kec. Kaliwungu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.shade600,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // location title
            const Row(
              children: [
                Icon(
                  Iconsax.location,
                  size: 10,
                ),
                SizedBox(width: 5),
                Text(
                  'Current Location',
                  style: TextStyle(fontSize: 10, fontFamily: 'Inter'),
                )
              ],
            ),
            // current location
            Text(
              _location,
              style: const TextStyle(fontSize: 12, fontFamily: 'Inter'),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: NotificationIcon(),
          )
        ],
      ),
      body: const SafeArea(
        child: HomePage(),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Color(0xfff6f6f6)),
        child: Row(
          children: List.generate(_menuItems.length, (index) {
            if (_menuItems[index]['size'] != null) {
              return Container(
                width: _menuItems[index]['size'],
              );
            }
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentPage = index;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      currentPage == index
                          ? _menuItems[index]['iconActive']
                          : _menuItems[index]['icon'],
                      color: currentPage == index
                          ? ColorConfig.primaryColor
                          : Colors.grey.shade600,
                      size: 28,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _menuItems[index]['title'],
                      style: TextStyle(
                          color: currentPage == index
                              ? ColorConfig.primaryColor
                              : Colors.grey.shade600),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: -0.8,
              child: Container(
                height: 72,
                width: 76,
                decoration: BoxDecoration(
                    color: ColorConfig.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ]),
              ),
            ),
            const Text(
              '505',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
