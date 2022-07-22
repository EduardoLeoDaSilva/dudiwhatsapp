import 'package:flutter/cupertino.dart';

class MessageContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
   
     Path path = Path();
        
path.addPolygon([
      Offset(size.width *0.30, size.height * 0),Offset(size.width *70, size.height * 0),Offset(size.width, size.height * 0),Offset(size.width * 0.87, size.height * 0.08), Offset(size.width * 0.81, size.height * 0.20),Offset(size.width * 0.28 , size.height * 0.20),Offset(size.width * 0, size.height * 0.20),Offset(size.width * 0, size.height * 0) ], false
    );
 
 
     
       return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
  
}