import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sesion_09/pages/slider.dart';
import 'package:sesion_09/route/route.dart';
import 'package:sesion_09/screens/index.dart';
import 'package:quickalert/quickalert.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/screens/data.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  List<Widget> builCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Colors.black : Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(e.id == 1
                        ? const Color.fromARGB(255, 240, 242, 247)
                        : const Color.fromARGB(255, 248, 248, 248)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Container(
                          color: Color.fromARGB(255, 225, 48, 205),
                          child: Image.asset(e.image),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        e.title,
                        style: const TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (Preferences.genero != 1)
              ? Color.fromARGB(95, 214, 145, 218)
              : Color.fromARGB(255, 251, 249, 250),
          title: const Text(
            'Shine Clothes',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> SearchList(),
                          ),);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFF5624d0),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const CestaScreen(),
                          ),);
              },
            )
          ],
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        
      drawer: const CustomWidgetHome(),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/fondo2.webp"), fit: BoxFit.cover),
        // ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset("assets/banner1.3.png"),

                    // borderRadius: BorderRadius.circular(10),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            // SizedBox(
            //   height: 100,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: builCategories(),
            //   ),

            // ),
            ClipRRect(
              child: Image.asset("assets/banner1.2.png"),

              // borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              child: Image.asset("assets/banner8.png"),

              // borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 5),
            ClipRRect(
              child: Image.asset("assets/banner1.4.png"),

              // borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 15),
            //  SizedBox(
            //   height: 100,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: builCategories(),
            //   ),

            // ),

            const SizedBox(
              height: 10,
            ),
            
          
             const SizedBox(
              height: 10,
            ),
            ClipRRect(
              // ignore: sort_child_properties_last
              child: Image.asset("assets/banner.6.png"),
              // borderRadius: BorderRadius.circular(10),
              ),
    
            const SizedBox(height: 30),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: builCategories(),
              ),
            ),
               const SizedBox(height: 30),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: "¡Ofertas impedibles!",
                    style: TextStyle(

                        color: Color.fromARGB(255, 231, 128, 49),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(0),
                children: Data.generateProducts()
                    .map(
                      (e) => SizedBox(
                        // shape: BeveledRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),
                        //     ),
                        //     elevation: 0,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Banner (
                                  message: 'Offerta 20%',
                                  location: BannerLocation.topStart,
                                  color: Colors.red,
                                child: SizedBox(
                                   height: 200, 
                                   width: 280,
                                  child: Image.asset(e.image,fit:BoxFit.fill,height: 200,))
                                ),

                               
                                //  const SizedBox(height: 2,),
                                // RichText(textAlign: TextAlign.start,
                                // text: TextSpan(text: e.type,
                                // style: const TextStyle(
                                //   color: Color.fromARGB(215, 132, 75, 75), fontWeight: FontWeight.bold,
                                //   fontSize: 13,
                                // )

                                // ),

                                // ),

                                Container(
                                  color: Color.fromARGB(255, 202, 236, 118),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                              text: "\$ ${e.price}",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(255, 11, 10, 10),
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.success,
                                            text: 'Se ha agregado a lista de deseo',
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.favorite_border_outlined,
                                            color: Color.fromARGB(
                                                255, 235, 27, 31),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.success,
                                            text: 'Se ha agregado al carrito de compra',
                                            );
                                          },
                                          child: const Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                )

                                //     ElevatedButton(onPressed: (){

                                // //     // },
                                //     // //  style: ButtonStyle(
                                //     // //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                //     // //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                                //     // //  ),
                                //     //  child: const Icon(Icons.shopping_cart_outlined,color:Colors.black),

                                //     //  )
                                //   ],
                                // )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),

            ),
            const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 188, 175, 175),),
             SizedBox(height: 10), 
             



            ClipRRect(
              child: Image.asset("assets/tarjeta.png"),

              // borderRadius: BorderRadius.circular(10),
            ),
            
          ],
        ),
        
      ),
    );
  }
}
