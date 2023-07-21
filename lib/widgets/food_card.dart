import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  String? _image, _foodName, _price;

  DescriptionCard(
    String image,
    foodname,
    price,
  ) {
    _image = image;
    _foodName = foodname;
    _price = price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Column(
              children: [
                Text(
                  "$_foodName",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontFamily: "Helvetica",
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.star,color: Color.fromARGB(255, 214, 196, 33)),
                    Text(
                      "4.6",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {},
                  child: Text(
                    '\$$_price',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(
              '$_image',
              width: 120,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
