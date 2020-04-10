import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Inicio extends StatelessWidget{
  final titulo= TextStyle(fontWeight: FontWeight.bold );
  final subtitulo= TextStyle(color: Colors.grey );

  
  @override
   

Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[200],
       body: SingleChildScrollView (//hacer que la pantalla pueda deslizar
       
           child: Container(        
           child: Column(

             
            
              children: <Widget>[
                 _barra(),
                _ubication(),
                _img(),
               //Image.network("https://http2.mlstatic.com/portatil-gamer-acer-nitro-5-fhd-256gb-ssd-an515-51-55wl-D_NQ_NP_859469-MCO31623718200_072019-O.webp"),             
                _seccion1(),
                _acciones(),
                _boton(),
               _final(),
                 
              ],

           ),
         ),
       ),
      );


  }


Widget _ubication(){
return Container(

  color: Colors.yellow[600],
  child: Row(
      children: <Widget>[

        _est(Icons.location_on,20,Colors.black54),
        Text("  Enviar a  Santy S. franklin M. , jesus N. Direccion: Mocoa ",style: TextStyle(color: Colors.black54) ,),
         _est(Icons.arrow_forward_ios , 15, Colors.black12),


      ],

  ),

);

}

Container _myimagne(String imagen){
  return Container(
            height: 398,
            width: 395.0,
            padding: EdgeInsets.fromLTRB(1, 1, 1,1),
            child: Card(
              child: Wrap(
                children: <Widget>[
                 Image.network(imagen),             
                ],
              ),
            ),
  );
}

Widget _img(){
  return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
    //color: Colors.black,
      height: 280,
      //width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _myimagne("https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_818285-MCO40918067629_022020-F.webp"),
          _myimagne("https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_804492-MCO40918067632_022020-F.webp"),
          _myimagne("https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_696150-MCO40918067628_022020-F.webp", ),
          _myimagne("https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_989972-MCO40918067631_022020-F.webp", ),
          _myimagne("https://http2.mlstatic.com/portatil-acer-59kv-core-i5-8va-12gb-gtx-1050ti-4gb-win-10-D_NQ_NP_652107-MCO40918067630_022020-F.webp",),
          _myimagne("https://http2.mlstatic.com/mouse-acer-nitro-nmw810-optico-4000-dpi-led-20g-D_NQ_NP_938406-MCO32557311364_102019-F.webp",),
          
        ],
      ),
  
  );
}


Widget _seccion1(){
return Container(
                padding: EdgeInsets.fromLTRB(25,0, 2, 20),
                //padding: EdgeInsets.symmetric(horizontal: 20.0,vertical:30.0),
                //color: Colors.blue,
                child: Row(
                children: <Widget>[
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        
                        Text("Nuevo",style: subtitulo ,),
                        SizedBox(height: 12.0,),
                        Text("Portatil Gamer Acer Nitro 5 Fhd 256gb Ssd An515-51-55wl",style: TextStyle( fontSize: 24,fontWeight: FontWeight.w300,color: Colors.black54),),
                        SizedBox(height: 15.0,),
                        
                        Text(" 5.007.990",style: TextStyle( fontSize: 30,fontWeight: FontWeight.w300,color: Colors.black54),),
                        SizedBox(height: 5.0,),
                        Text("Stock disponible", style: TextStyle(height: 1, fontSize: 15),),
                      //  _crearAccion(Icons.star, "", ""),

                      // _recom(Icons.star_half),
                        Container(
                            child: Row(
                            children: <Widget>[
                            _estar(),  
                            ],
                          ) ,
                        ),
                      
                         _lista(),
                         _sep(),
                         _listas(),
                     
                      
                    ],
                    
                  ),),
                ],

              ),
              );

}


Widget _estar(){
  return Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
   _est(Icons.star,25,Colors.yellow[600]),
   _est(Icons.star,25,Colors.yellow[600]),
   _est(Icons.star,25,Colors.yellow[600]),
   _est(Icons.star,25,Colors.yellow[600]),
   _est(Icons.star,25,Colors.yellow[600]),

    Text("    15 Opinión")
    ],

  ) ,

  );
}


Widget _est(IconData ico, double d,Color color){
      return Icon(
      ico,
      color: color ,
      size: d,

    );
}


Widget _lista(){

  return Container(
     //color: Colors.blue,
        child: Row(
          children: <Widget>[
          Container(
             // color: Colors.white,
              padding: EdgeInsets.all(2),
              height: 40,
              width: 40,
               
              child: Row(
                  children: <Widget>[
                    Container(
                        height: 35,
                        width: 35,
                        padding: EdgeInsets.all(5),
                        decoration:  new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                        children: <Widget>[
                          _est(Icons.credit_card , 25, Colors.black ),
                        ],
                    ) ,
                    ),
                  ],
              ),
            ),
          Container(
             width: 288.0,
             child: Row(
                children: <Widget>[
                  Container(
                      child: Text("  32 x 31413123123     ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),   
                  ),
                ],
              ),
            ),

          Container(
               width: 30.0,
              height: 30,
              child: Row(
                children: <Widget>[
                  _est(Icons.arrow_forward_ios , 20, Colors.black12 ),
                ],
              ),
            ),
          ],   
      ),           
  );

}

Widget _sep(){
  return Container(
   // color: Colors.green,
 
    height: 20,
      child: Row(
        children: <Widget>[

          Container(
            
           // color: Colors.black,
            padding: EdgeInsets.all(7),
            width: 28,
            height: 2,
          ),
          Container(
            color: Colors.grey[400],
            padding: EdgeInsets.all(7),
            width: 310,
           height: 1.5,
          ),
        ],

     

      ),

  );
}

Widget _listas(){
 return Container(
        child: Row(
          children: <Widget>[
          Container(
             // color: Colors.white,
              padding: EdgeInsets.all(2),
              height: 40,
              width: 40,

              child: Row(
                
                  children: <Widget>[
                    Container(
                      
                        height: 35,
                        width: 35,
                        padding: EdgeInsets.all(5),
                        decoration:  new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                        children: <Widget>[
                          _est(Icons.local_shipping , 25, Colors.green[400] ),
                        ],
                    ) ,
                    ),
                  ],
              ),
            ),
            
              
          Column(
              
              children: <Widget>[
                Container(
                  width: 289,
                  height: 50,
                 // color: Colors.white,
                  
                  child: Column(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[

                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Envío gratis ",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green[300])),
                                Text("14.000 ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black26),),
                              ],
                            ),
                          ),
                          Text("Llegara entre el 20 y 27 de mayo",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black26,),),
                          Text("Beneficio Mercado Puntos",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black26,),),

                      ],       
                  ),
                ),
              ],
          ),
          Container(
               width: 30.0,
              height: 30,
              
              child: Row(
                children: <Widget>[
                  _est(Icons.arrow_forward_ios , 20, Colors.black12 ),
                ],
              ),
            ),
          ], 
      ),
      
                   
  );
}


Widget _boton(){
  return Container(
    //color: Colors.black87,
   child: Container(
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        constraints: BoxConstraints.tightForFinite(width: 900),
        padding: EdgeInsets.all(15),
        child: Text("Comprar",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white ,fontSize: 20) ,),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10.0),
                    ),

    ),
       
  );

}


Widget _acciones(){

  return Container(
    //color: Colors.blue,
    //alignment: Alignment.bottomCenter,
     child: Container(

       color: Colors.white,
       width: 360,
       height: 45,
      
        padding: EdgeInsets.fromLTRB(13,4,5,2),
        child: Row(
          children: <Widget>[
            Container(
              //color: Colors.green,
              child: Row(
                children: <Widget>[
                  Text("Cantidad :", style: TextStyle(fontWeight: FontWeight.w400,height: 1, fontSize: 15,color: Colors.grey[600]),),
                  Text(" 1 ", style: TextStyle(fontWeight: FontWeight.w400,height: 1, fontSize: 15,color: Colors.grey[400]),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(227,4,5,2),
              child: Row(
                children: <Widget>[
                  _est(Icons.arrow_forward_ios , 20, Colors.black12 )
                ],
              ),
            ),

          ],
        ),
     )  , 
  );
}


Widget _barra(){
  return AppBar(
     
            
          title: const Text('Producto', style: TextStyle(color: Colors.black)),
         backgroundColor: Colors.yellow[600],

  leading: GestureDetector(
      onTap: () { /* Write listener code here */ },
      child: Icon(  
      Icons.menu,color: Colors.black,// add custom icons also
      ),
  ),
  actions: <Widget>[  
   
    Container(
      //color: Colors.red,
     //padding: EdgeInsets.fromLTRB(8, 2, 9, 2),

      child: Row(
          children: <Widget>[
              
             Container
             (
               // color: Colors.black12,
               child: Row(
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.fromLTRB(20, 2, 2, 2),
                     child: Row(
                       children: <Widget>[
                        _est(Icons.favorite_border,30,Colors.black),
                       ],
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.fromLTRB(20, 2, 2, 2),
                     
                     child: Row(
                       children: <Widget>[
                         _est(Icons.share,30,Colors.black),
                       ],
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                     
                     child: Row(
                       children: <Widget>[
                         _est(Icons.search,30,Colors.black),
                       ],
                     ),
                   ),
                   
                  
                 ],
               ),
              
             
             ),
          
          ],
      ),
    ),
    
  ],   
  );
}


Widget _final(){
  return Container(
    width: 380,
    height: 130,
    padding: EdgeInsets.fromLTRB(2,2,2,2),
    //color: Colors.yellow,
    child: Column(
      children: <Widget>[
        Container(
          //color: Colors.deepOrange,
          child: Row(
         children: <Widget>[
          Container(
           // color: Colors.black,
              child: Column(
                children: <Widget>[
                  Container(
                   // color: Colors.red,
                    padding: EdgeInsets.fromLTRB(9,8,9,7),
                    child: Row(
                    children: <Widget>[
                        _est(Icons.verified_user, 25, Colors.black45),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(9,8,9,7),
                    // color: Colors.red,
                    child: Row(
                    children: <Widget>[
                        _est(Icons.redeem, 25, Colors.black45),
                      ],
                    ),
                  ),
                ],
              ),
          ),
          Container(
            //color: Colors.green,
              child: Column(
                verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 5, 45, 5),
                    child: Text("Compra protegida  ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),  
                  ),
                  
                  Container(
                     padding: EdgeInsets.fromLTRB(2, 20, 47, 3),
                    child: Text("Sumas 1499 Mercado Puntos",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),  
                  ),
                ],
              ),
          ),

          Container(
            //color: Colors.indigoAccent,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(29, 5, 20, 3),
                  child: Row(
                    children: <Widget>[
                      _est(Icons.question_answer,40, Colors.black45),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ) ,
      ),
        Container(
          //color: Colors.black45,
          child: Row(
            children: <Widget>[
              Container(
               // color: Colors.orange,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(65, 14, 2, 2),
                      child: Row(
                        children: <Widget>[
                           _est(Icons.favorite_border, 25, Colors.blue),
                          Text("Agregar a favoritos ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blue),), 
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 14, 2, 2),
                      child: Row(
                        children: <Widget>[
                           _est(Icons.share, 25, Colors.blue),
                           Text("Compartir ",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blue),), 
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),

            ],
          ),
        ),
      ],

    ),

      
  );

}




}

