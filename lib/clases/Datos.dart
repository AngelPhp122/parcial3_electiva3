import 'package:flutter/material.dart';

class Datos{

 /* String name = "";
  String height = "";
  String mass = "";
  String hair_color = "";
  String skin_color = "";
  String eye_color = "";
  String birth_year = "";
  String gender = "";*/
  //String films = "";

 /* Datos(name, estatura, mass, hair_color, skin_color, eye_color, birth_year, gender/*, films*/){

      this.name = name;
      this.height = height;
      this.mass = mass;
      this.skin_color = skin_color;
      this.eye_color  = eye_color;
      this.birth_year = birth_year;
      this.gender = gender;
      //this.films = films;

  } */

int id = 0;
    String title ="";
    String url = "" ;
    String thumbnailUrl = "";
  

  Datos(id, title, url, thumbnailUrl){
    
    this.id = id;
    this.title = title;
    this.url = url;
    this.thumbnailUrl = thumbnailUrl;

}
}