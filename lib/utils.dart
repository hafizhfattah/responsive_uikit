import 'package:flutter/material.dart';

const Color prim = Color.fromRGBO(60, 41, 144, 1);

final List daftar = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20",
];

final List link = [
  'https://picsum.photos/1000',
  'https://picsum.photos/1100',
  'https://picsum.photos/1200',
  'https://picsum.photos/1300',
  'https://picsum.photos/1400',
  'https://picsum.photos/1500',
  'https://picsum.photos/1600',
  'https://picsum.photos/1700',
  'https://picsum.photos/1800',
  'https://picsum.photos/1900',
  'https://picsum.photos/2000',
  'https://picsum.photos/2100',
  'https://picsum.photos/2200',
  'https://picsum.photos/2300',
  'https://picsum.photos/2400',
  'https://picsum.photos/2500',
  'https://picsum.photos/2600',
  'https://picsum.photos/2700',
  'https://picsum.photos/2800',
  'https://picsum.photos/2900',
];

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop!;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile!;
    }
  }
}
