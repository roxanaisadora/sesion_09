import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';
import 'package:sesion_09/widgets/index.dart';

class SubCategory extends StatelessWidget {
  final List data2;
  const SubCategory({super.key, required this.data2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView.builder(
        itemCount: data2.length,
        itemBuilder: (BuildContext context, int index) {  
          final dato = data2[index];
            return CategoryWidge(
              image1: dato['image1'],
              image2: dato['image2'],
              title: dato['title'],
              onTap: (){
                log('entro');
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ListCategory(
                    data: dato['data3'],
                  ),
                ),
              );
            },
          );
        },
      )
    );
  }
}