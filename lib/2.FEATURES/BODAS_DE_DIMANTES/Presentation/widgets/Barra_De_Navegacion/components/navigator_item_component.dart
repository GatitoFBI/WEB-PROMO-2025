import 'package:flutter/material.dart';

import '../../../../../../1.CONFIG/Core/utils/enum_router.dart';

class NavItem extends StatelessWidget {
  final String text;
  final bool isActivo;

  const NavItem({
    super.key,
    required this.text,
    this.isActivo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: TextButton(
        onPressed: () {
          if (!isActivo) {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => enumRouterMap[text]!(),
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );
            // Navigator.pushReplacement(

            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => enumRouterMap[text]!(),
            //   ),
            // );
          }
        },
        style: TextButton.styleFrom(
          // padding: EdgeInsets.zero,
          splashFactory: NoSplash.splashFactory,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: isActivo
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
