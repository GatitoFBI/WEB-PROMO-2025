import 'package:flutter/material.dart';

import '../../../views/6.Search_View/search_view.dart';

class SearchBoxButton extends StatelessWidget {
  const SearchBoxButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const SearchView(),
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      },
      child: Container(
        width: 250,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: const Row(
          children: [
            SizedBox(width: 5),
            Text(
              'Buscar estudiante...',
              style: TextStyle(color: Colors.grey),
            ),
            Spacer(),
            Icon(Icons.search, color: Colors.orangeAccent),
          ],
        ),
      ),
    );
  }
}
