import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 44;

  void _toggleFavorite() {
    if (_isFavorite) {
      setState(() {
        _favoriteCount -= 1;
        _isFavorite = false;
      });
    } else {
      setState(() {
        _favoriteCount += 1;
        _isFavorite = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorite
                ? const Icon(Icons.star, color: Colors.yellow)
                : const Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  )),
            onPressed: () {
              _toggleFavorite();
            },
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(child: Text('$_favoriteCount')),
        )
      ],
    );
  }
}
