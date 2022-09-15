import 'dart:ui';

import 'package:flutter/material.dart';

import 'utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      //mobile
      mobile: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: link.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              height: 100.0,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${link[index]}'), fit: BoxFit.cover),
                color: prim,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.black.withOpacity(0.5),
                    child: Text('${daftar[index]}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      //Tablet
      tablet: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: link.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              height: 100.0,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${link[index]}'), fit: BoxFit.cover),
                color: prim,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.black.withOpacity(0.5),
                    child: Text('${daftar[index]}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      //Desktop
      desktop: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
          ),
          itemCount: link.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              height: 100.0,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${link[index]}'), fit: BoxFit.cover),
                color: prim,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: Colors.black.withOpacity(0.5),
                    child: Text('${daftar[index]}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
