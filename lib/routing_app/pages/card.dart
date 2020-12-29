import 'package:flutter/material.dart';

class CardModel {
  String imageAssetPath;
  String title;
  String trainer;
  int min;
  double stars;

  CardModel(
      {this.imageAssetPath, this.title, this.trainer, this.min, this.stars});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setTrainer(String getTrainer) {
    trainer = getTrainer;
  }

  void setMin(int getMin) {
    min = getMin;
  }

  void setStars(double getStars) {
    stars = getStars;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getTrainer() {
    return trainer;
  }

  int getMin() {
    return min;
  }

  double getStars() {
    return stars;
  }
}

List<CardModel> getSlides() {
  List<CardModel> cards = new List<CardModel>();
  CardModel cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  //1
  cardModel.setTitle("SMWU Physical lesson");
  cardModel.setTrainer("Kim Suok");
  cardModel.setImageAssetPath(
      "https://mblogthumb-phinf.pstatic.net/20160926_162/lv1000000_1474849890197QoIIE_PNG/19.png?type=w2");
  cardModel.setMin(60);
  cardModel.setStars(4.2);
  cards.add(cardModel);

  cardModel = new CardModel();

  return cards;
}

class _BuildCardView extends StatelessWidget {
  String imagePath, title, desc, min, stars;

  _BuildCardView({this.imagePath, this.title, this.desc, this.min, this.stars});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(5.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 12.0,
      ),
      itemCount: 12,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/ble_test');
          },
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              "START",
              style: TextStyle(
                  color: Color(0xff00cad9), fontWeight: FontWeight.w600),
            ),
          ),
        );
      },
    );
  }
}
