import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'pants',
          ),
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'shoes',
          ),
          Category(
            image_location: 'assets/images/jpg/AAIPESM.jpeg',
            image_caption: 'shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
