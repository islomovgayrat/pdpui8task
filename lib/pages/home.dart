import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 26,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
              size: 26,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          //search
          Container(
            color: Colors.black,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.grey.shade800),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              hintText: "What's on your mind?",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Live',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 17),
                        height: 30,
                        width: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Photo',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 17),
                        height: 30,
                        width: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Check in',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //stories
          Container(
            height: 200,
            color: Colors.black,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                makeStories(
                  userImage: 'assets/images/user_1.jpeg',
                  storyImage: 'assets/images/story_1.jpeg',
                  userName: 'User One',
                ),
                makeStories(
                  userImage: 'assets/images/user_2.jpeg',
                  storyImage: 'assets/images/story_2.jpeg',
                  userName: 'User Two',
                ),
                makeStories(
                  userImage: 'assets/images/user_3.jpeg',
                  storyImage: 'assets/images/story_3.jpeg',
                  userName: 'User Three',
                ),
                makeStories(
                  userImage: 'assets/images/user_4.jpeg',
                  storyImage: 'assets/images/story_4.jpeg',
                  userName: 'User Four',
                ),
                makeStories(
                  userImage: 'assets/images/user_5.jpeg',
                  storyImage: 'assets/images/story_5.jpeg',
                  userName: 'User Five',
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //post feed
          makePost(
            userImage: 'assets/images/user_1.jpeg',
            userName: 'User One',
            feedTime: '1 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            photo1: 'assets/images/feed_1.jpeg',
            photo2: 'assets/images/feed_2.jpeg',
          ),

          makePost(
            userImage: 'assets/images/user_2.jpeg',
            userName: 'User Two',
            feedTime: '2 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            photo1: 'assets/images/feed_3.jpeg',
            photo2: 'assets/images/feed_4.jpeg',
          ),

          makePost(
            userImage: 'assets/images/user_3.jpeg',
            userName: 'User Three',
            feedTime: '3 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            photo1: 'assets/images/feed_5.jpeg',
            photo2: 'assets/images/story_1.jpeg',
          ),

          makePost(
            userImage: 'assets/images/user_4.jpeg',
            userName: 'User Four',
            feedTime: '4 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            photo1: 'assets/images/story_2.jpeg',
            photo2: 'assets/images/story_3.jpeg',
          ),

          makePost(
            userImage: 'assets/images/user_5.jpeg',
            userName: 'User Five',
            feedTime: '5 hr ago',
            feedText:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            photo1: 'assets/images/story_4.jpeg',
            photo2: 'assets/images/story_5.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeStories({userImage, storyImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makePost({userImage, userName, feedTime, feedText, photo1, photo2}) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        feedTime,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 26,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            feedText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          //photo
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 250,
                  child: Image(
                    image: AssetImage(photo1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 250,
                  child: Image(
                    image: AssetImage(photo2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //like,love and comment
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(
                    offset: const Offset(-5, 0),
                    child: makeLove(),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '2.5K',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //like,share,comment - buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: const Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Row(
      children: [
        Icon(
          Icons.thumb_up,
          color: isActive ? Colors.blue : Colors.grey.shade500,
        ),
        const SizedBox(width: 5),
        Text(
          'Like',
          style: TextStyle(
            color: isActive ? Colors.blue : Colors.grey.shade500,
          ),
        ),
      ],
    );
  }

  Widget makeCommentButton({isActive}) {
    return Row(
      children: [
        Icon(
          Icons.comment,
          color: Colors.grey.shade500,
        ),
        const SizedBox(width: 5),
        Text(
          'Comment',
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }

  Widget makeShareButton({isActive}) {
    return Row(
      children: [
        Icon(
          Icons.share,
          color: Colors.grey.shade500,
        ),
        const SizedBox(width: 5),
        Text(
          'Share',
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
