import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.black,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Your story",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                        CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                        CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                      ],),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amir Mohammed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
