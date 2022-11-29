import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      appBar: AppBar(
   centerTitle: false, 
        title:  Text('متابعة حية' 
        ),
        backgroundColor: kBurgundyColor,
        elevation: 0,
       actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          ),
        ],

 
       
      ),
      body: Column(
        

        children: [
          
          Stack(
            children:[ Container(
              margin: const EdgeInsets.only(left: 40 , top: 15),
              height: 165,
              width: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: kOrangeColor
              ),
              child: Column(
                children: [
                  
                  Container(
                    margin: const EdgeInsets.only(top: 20 , left: 220),
                    height: 30,
                    decoration:BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(30),
                      color: kWhiteColor,
                    ),
                    
                    child: const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text("فرنسا" , style: TextStyle(
          
                        color: kBurgundyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 70,
                    margin: const EdgeInsets.only(top: 20 , left: 110),
              child: Text("فرنسا أبطال كأس العالم روسيا 2018" , style: TextStyle(
                color: kWhiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
                  ),
                  
                 
                ],
              ),
            ),
            Positioned(
              
              left: 20,
              child:  Container(
                  margin: const EdgeInsets.only(left: 2),
                  width: 196,
                  height: 200,
                  child: Image.asset("assets/images/mam.png"),
                  )
            )
            ]
          ),
          
         SizedBox(height: 30,),
         // scrollable Row
         SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Container(
                width: 108,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kWhite20Color
                ),
                
                ),
                SizedBox(width: 30,),
                 Container(
                width: 108,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kWhite20Color
                ),
                ),
                SizedBox(width: 30,),
                 Container(
                width: 108,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kWhite20Color
                ),
                ),
                SizedBox(width: 30,),
                 Container(
                width: 108,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kWhite20Color
                ),
                ),
            ],
            ),
         )

         
        ],
      )
    
    );
  }
}