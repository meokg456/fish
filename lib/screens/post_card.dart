
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  PostModel model = PostModel(
    username: "Money D. Luffy",
    avatar: "https://wallpapers.com/images/hd/one-piece-bruised-luffy-fpf-after-fight-k3l17o4moedwwjgo.jpg",
    createTime: DateTime.now().second - 12837,
    content: "The journey go to around the world. To find the treasure best. One Piece !!!",
    image: "https://wallpapers.com/images/hd/one-piece-pictures-bjm9tdff9yzguoup.jpg",
    numOfLike: 120
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(model.avatar),
                  backgroundColor: Colors.blue,
                  radius: 50,
                ),
              ),
              SizedBox.fromSize(size: Size(10, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Row(
                    children: [
                      Text(model.timeSpendFromCreated()),
                      SizedBox.fromSize(size: Size(10, 10)),
                      Icon(Icons.public, size: 20)
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(model.content, style: TextStyle(fontSize: 15)),
          ),
          Image.network(model.image),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.favorite, color: Colors.red),
                Text(model.numOfLike.toString())
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.favorite_border, size: 24),
                label: const Text('Like', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.transparent),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.mode_comment_outlined, size: 24),
                label: const Text('Comment', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.transparent),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
                OutlinedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.share_outlined, size: 24),
                label: const Text('Share', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.transparent),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}

class PostModel {
    String username;
    String avatar;
    int createTime;  // seconds
    String content;
    String image;
    int numOfLike;

    PostModel({
      this.username = "No Name",
      this.avatar = "",
      this.createTime = 0,
      this.content = "",
      this.image = "",
      this.numOfLike = 0
    });

    String timeSpendFromCreated() {
      int timeSpendSeconds = DateTime.now().second - createTime;

      int day = (timeSpendSeconds ~/ (24 * 60 * 60));
      if (day > 0) {
        return "${day}d ago";
      }

      timeSpendSeconds = timeSpendSeconds - day * (24 * 60 * 60);
      int hour = timeSpendSeconds ~/ (60 * 60);
      if (hour > 0) {
        return "${hour}h ago";
      }

      timeSpendSeconds = timeSpendSeconds - hour * (60 * 60);
      int minute = timeSpendSeconds ~/ 60;
      if (minute > 0) {
        return "${minute}m ago";
      }

      return "now";
    }
}