import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:newocean/page/store/storeHomepage.dart';

import '../../constants/consts.dart';
import '../../firebase/store_service.dart';
import '../../model/store_model/cart_model.dart';
import '../../model/store_model/temp_model.dart';

class DetailsPage extends StatefulWidget {
  final ShoesModel item;

  const DetailsPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int value = 0;
  int money = -2;

  void initState() {
    this.setState(() => boughtitems = getAllCartModel());
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    DatabaseReference Ref =
        FirebaseDatabase.instance.ref('Money/' + currentUser + '/');
    Ref.onChildAdded.listen((event) async {
      this.setState(() => money = (event.snapshot.value as int));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenheight = MediaQuery.of(context).size.height;
    var _screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.0),
              ],
              begin: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              _buildupperpart(
                  screenwidth: _screenwidth, screenheight: _screenheight),
              _buildbottompart(_screenheight)
            ],
          )),
    );
  }

  Expanded _buildbottompart(double _screenheight) {
    return Expanded(
        child: Container(
      color: white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.item.name,
              style: style.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   '!!!!',
            //   style: style.copyWith(
            //       fontWeight: FontWeight.w100,
            //       fontSize: 20,
            //       color: Colors.black),
            // ),
            const SizedBox(
              height: 20,
            ),
            _buildsizes(),
            const SizedBox(
              height: 30,
            ),
            _buildbutton(_screenheight)
          ],
        ),
      ),
    ));
  }

  Flexible _buildbutton(double _screenheight) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: _screenheight * .08,
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: widget.item.color),
        child: MaterialButton(
          onPressed: () {
            var num = 1;
            if (boughtitems
                .map((item) => item.name)
                .contains(widget.item.name)) {
              var a = boughtitems.map((item) {
                print(item.name);
                print(item.items);
                if (widget.item.name == item.name) {
                  num = item.items + 1;
                }
              });
              print(a);
            }
            this.setState(() => boughtitems = getAllCartModel());
            Navigator.pop(context);
            show("已$num個擁有道具");
            CartModel cartModel = new CartModel(
              name: widget.item.name,
              price: widget.item.price,
              img: widget.item.img,
              color: widget.item.color,
              items: num,
              size: sizes[value],
            );
            if (money - widget.item.price >= 0) {
              int newMoney = (money - widget.item.price).toInt();
              setMoney(newMoney);
              createApi(cartModel);
              addCartModels(cartModel);
              initState();
            } else {
              show("餘額不足");
            }
            total = total + widget.item.price;
            //

            this.setState(() => boughtitems = getAllCartModel());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.backpack,
                color: white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '購買',
                style: style.copyWith(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildupperpart(
      {required var screenwidth, required var screenheight}) {
    return Container(
      width: screenwidth,
      height: screenheight * .6,
      decoration: BoxDecoration(
          color: widget.item.color,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    color: white,
                    size: 40,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.item.isselected = !widget.item.isselected;

                      widget.item.isselected
                          ? favouriteitems.add(widget.item)
                          : favouriteitems.remove(widget.item);
                    });
                  },
                  child: Icon(
                    Icons.favorite_sharp,
                    color: widget.item.isselected ? Colors.red : white,
                    size: 30,
                  ),
                )
              ],
            ),
            Center(
              child: Image.asset(
                widget.item.img,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildsizes() {
    return SizedBox(
        height: 40,
        width: 500,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          // children: [
          //   _buildsizesitem(index: 0, title: sizes[0]),
          //   _buildsizesitem(index: 1, title: sizes[1]),
          //   _buildsizesitem(index: 2, title: sizes[2]),
          //   _buildsizesitem(index: 3, title: sizes[3]),
          //   _buildsizesitem(index: 4, title: sizes[4]),
          // ],
        ));
  }

  Widget _buildsizesitem({required int index, required int title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            value = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: value == index ? widget.item.color : Colors.transparent,
          ),
          child: Center(
              child: Text(
            title.toString(),
            style: style.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: value == index ? Colors.white : Colors.black,
            ),
          )),
        ),
      ),
    );
  }
}
