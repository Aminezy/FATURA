
import 'package:fatura/Cpar.dart';
import 'package:fatura/Cpro.dart';
import 'package:fatura/F_achat.dart';
import 'package:fatura/Produit.dart';
import 'package:fatura/test.dart';
import 'package:flutter/material.dart';



Future<void> main(List<String> args) 
async {  
 runApp(Myapp());
}
class Myapp extends StatelessWidget { 
   @override
   Widget build(BuildContext context){
     return MaterialApp(
         title: 'Fatura',
         theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
       home: Cpar(),
       routes:{ 
        'Cpar' : (context) => Cpar(),
        'Cpro' : (context) => Cpro(),
        // 'F_achat' : (context) => F_achat(),
      //  'prod' : (context) => Produit(),

        
       }                 
        
     );
   }
}




