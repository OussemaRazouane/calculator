import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n1 = 0, n2 = 0;
  String op = "";
  num? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: Center(
        child: Column(children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(10),
              margin:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green.shade700,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment:Alignment.center,
                      width:70,
                      height:85,
                      margin:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Text("$n1",style:const TextStyle(color:Colors.black,fontSize: 45,fontWeight: FontWeight.bold,),),
                    ),
                    Text("$op",style:const TextStyle(color:Colors.white,fontSize: 45,fontWeight: FontWeight.bold,),),
                    Container(
                      alignment:Alignment.center,
                      width:70,
                      height: 85,
                      margin:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Text("$n2",style:const TextStyle(color:Colors.black,fontSize: 45,fontWeight: FontWeight.bold,),),
                    ),
                    const Text("=",style:TextStyle(color:Colors.white,fontSize: 45,fontWeight: FontWeight.bold,),),
                    Container(
                      alignment:Alignment.center,
                      width:70,
                      height: 85,
                      margin:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Text("$result",style:const TextStyle(color:Colors.black,fontSize: 45,fontWeight: FontWeight.bold,),),
                    ),
                ],),
              ),
            )
        ],)
      ),
    );
  }
}
