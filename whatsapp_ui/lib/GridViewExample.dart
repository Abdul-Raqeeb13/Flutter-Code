// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GridViewList extends StatefulWidget {
  const GridViewList({super.key});

  @override
  State<GridViewList> createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  final List<String> storeImages = [
    'https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg',
    'https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg',
    'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1',
    'https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg',
    'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1',
    'https://images.pexels.com/photos/18105/pexels-photo.jpg',
    'https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg',
    'https://images.pexels.com/photos/1181675/pexels-photo-1181675.jpeg',
    'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1',
    'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1',
    'https://images.pexels.com/photos/34950/pexels-photo.jpg',
    'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg',
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          // Use shrinkWrap for grids within columns
          shrinkWrap: true,
          physics: ScrollPhysics(), // Allow scrolling within Column
          itemCount: storeImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.red,
                  style: BorderStyle.solid,
                ),
                image: DecorationImage(
                  image: NetworkImage(storeImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
