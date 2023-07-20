import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget{
  String? foodName, price, discount,imagePath;
  DescriptionCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, 
      ),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              children: [
                Text(
                  "$foodName",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontFamily: "Helvetica",
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 0),
                  child: Row(
                    children:[
                      Text(
                        "\$$discount",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontFamily: "Helvetica",
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("70% off",style: TextStyle(
                        color: Colors.green,
                      ),)
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('$imagePath'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
