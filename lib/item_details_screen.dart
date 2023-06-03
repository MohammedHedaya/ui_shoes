import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proooojects/cart_screen.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 25,
        ),
        title: Center(
          child: Text(
            "Hedaya Store",
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
            ),
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20, top: 17),
            child: FaIcon(FontAwesomeIcons.heart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                child: Image.asset("assets/images/item.png"),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Nike Men\ 's Shoes",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike Air Shoes",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.pink
                      ),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "    Size",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    _makeSizeButton("S 37", true),
                    SizedBox(width: 8),
                    _makeSizeButton("S 38", true),
                    SizedBox(width: 8),
                    _makeSizeButton("S 39", false),
                    SizedBox(width: 8),
                    _makeSizeButton("S 40", true),
                    SizedBox(width: 8),
                    _makeSizeButton("S 41", false),
                    SizedBox(width: 8),
                    _makeSizeButton("S 42", true),
                    SizedBox(width: 8),
                    _makeSizeButton("S 43", true),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Faster Shopping options may be available",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    //color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "تشمل أحذية نايكي للرجال أحذية الجري التي يتم تصنيعها بدقة وبها مواد شبكية تسمح بتحريك الهواء والنعل المطاطي يعطي المرأة الدعم والقبضة المناسبة. في جوميا مصر، مهما كانت أحذية نايك التي تبحث عنها سواء كانت أحذية نايك بيضاء أو أحذية نايك سوداء، فإننا نضمن لك أن تجدها هنا بأقل اسعار احذية Nike في مصر.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen(),));
          },
        backgroundColor: Colors.pink,
        child: Icon(CupertinoIcons.cart),
      ),
    );
  }

  Widget _makeSizeButton(String size, bool available) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: available ? Border.all(color: Colors.grey, width: 0.3) : Border
            .all(color: Colors.transparent, width: 0),
        color: available ? Colors.white : Colors.grey[300],
      ),
      child: Center(
        child: Text(size,
          style: available
              ? TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Colors.black)
              : TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w500,
              color: Colors.grey[50]),),
      ),
    );
  }
}
