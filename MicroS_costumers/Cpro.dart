import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:material_tag_editor/tag_editor.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flip_card/flip_card.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class Cpro extends StatefulWidget {
  @override
  _CproState createState() => _CproState();
}

class _CproState extends State<Cpro> {
  bool isBottunactive = true;

  /*@@@---------Les controlleur de l'adresse Modal----------@*/
  TextEditingController etiqette_controller = TextEditingController();

  TextEditingController numero_controller = TextEditingController();
  TextEditingController rue_controller = TextEditingController();
  TextEditingController complement_controller = TextEditingController();
  TextEditingController cod_pos_controller = TextEditingController();
  TextEditingController ville_controller = TextEditingController();
  TextEditingController pays_controller = TextEditingController();
  TextEditingController type_controller = TextEditingController();
  TextEditingController latitude_controller = TextEditingController();
  TextEditingController longitude_controller = TextEditingController();
  TextEditingController Defaut_controller = TextEditingController();
  TextEditingController Defaut_control = TextEditingController();
  TextEditingController travail_control = TextEditingController();
  TextEditingController principale_control = TextEditingController();
  TextEditingController numero_control = TextEditingController();
  TextEditingController prenom_control = TextEditingController();
  TextEditingController autre_pre_control = TextEditingController();
  TextEditingController email_control = TextEditingController();
  TextEditingController nom_control = TextEditingController();
  TextEditingController noma_control = TextEditingController();
  TextEditingController titre_control = TextEditingController();

  /*Declaration des variables*/
// var adresse
  var defaut_p;
  var travail_p;
  var principale_p;
  var numero_p;
  var prenom_p;
  var autre_p;
  var email_p;
  var nom_p;
  var noma_p;
  var titre_p;

  var etiquete_pro;
  var numero_pro;
  var rue_pro;
  var complement_pro;
  var cod_pos_pro;
  var ville_pro;
  var pays_pro;
  var type_pro;
  var latitude_pro;
  var longitude_pro;
  var defaut_pr;

  

  // var agents
  String defaut_pro = 'Defaut';
  var defaut = ['Defaut', 'Faux', 'Vrai'];
  String titre_pro = 'Mr';
  var titre = ['Mr', 'Mlle', 'Mme'];

  final _advancedDrawerController = AdvancedDrawerController();
  @override
  @override
  bool isButtonActive = false;
  void initState() {
    super.initState();
     autre_pre_control.addListener(() {
      final isButtonActive =  autre_pre_control.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  void dispose() {
     autre_pre_control.dispose();
  }

  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.purple,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            ],
            title: const Text('FATURA',style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontFamily: "Rubik Medium"
                        
                      ),),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              color: Colors.blue,
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.menu,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
          ),
          /*  bottomNavigationBar: CurvedNavigationBar(     
          index: 0,
          height: 60.0,
          items: <Widget>[

         IconButton(onPressed: (){ Navigator.pushNamed(context, 'Cpro');}, icon: Icon(Icons.info, size: 30)),
         IconButton(onPressed: (){ Navigator.pushNamed(context, 'Cpar');}, icon: Icon(Icons.contacts, size: 30),),
   
          ],
          color: Colors.purple,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600), 
          letIndexChange: (index) => true,
        ),*/

          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    
                    FlipCard(
                      fill: Fill
                          .fillBack, // Fill the back side of the card to make in the same size as the front.
                      direction: FlipDirection.HORIZONTAL, // default

// frooooooont

                      front: Container(
                        child: Card(
                          elevation: 20,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[SizedBox(
                                          height: 30,
                                        ),
                                        Align(
                                          alignment: Alignment(0.0, 0.0),
                                          child: Text(
                                            "infos",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              
                                              fontFamily: "Rubik Medium",
                                            ),
                                          ),
                                        ),
                             
                              Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        
                                        
                                        TextFormField(
                                          keyboardType: TextInputType.number,

                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "identifiant national",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          keyboardType: TextInputType.number,

                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "Autre identifiant",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "nom",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "site web",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      
                                        
                                        SizedBox(
                                          height: 15,
                                        ),
                                        /*
                DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0xFFF2F3F9),
                              width: 2.0,
                            ),
                          ),
                          fillColor: Color(0xFFF2F3F9), filled: true,
                          focusColor: Color(0xFFF2F3F9),
                          //add prefix icon

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF2F3F9), width: 1.0),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFF2F3F9), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // fillColor: Colors.grey,

                          hintText: "Nom et prénom",

                          //make hint text
                          hintStyle: TextStyle(
                            // color: Colors.grey,
                            fontSize: 16,
                            fontFamily: "Rubik Medium",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Initial Value
                        value: type,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: type.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            type = newValue!;
                          });
                        },
                     ),*/
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down_rounded,
                                          size: 70,
                                        )
                                      ])),
                            ],
                          ),
                        ),
                      ),

                      // backkkkkkkkkkkkkkkkkk

                      back: Container(
                        child: Card(
                          elevation: 20,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment(0.0, 0.0),
                                          child: Text(
                                            "Activité",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: "Rubik Medium",
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "Code",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "étiquette",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "étiquette 165",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          style: GoogleFonts.rubik(
                                            fontSize: 16,
                                            color: Color(0xff56545D),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          onChanged: (value) {
                                            //_submit();
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color: Color(0xFFF2F3F9),
                                                width: 2.0,
                                              ),
                                            ),
                                            fillColor: Color(0xFFF2F3F9),
                                            filled: true,
                                            focusColor: Color(0xFFF2F3F9),
                                            //add prefix icon

                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                            ),

                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFFF2F3F9),
                                                  width: 1.0),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            // fillColor: Colors.grey,

                                            hintText: "étiquette 140",

                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Rubik Medium",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          // validator: (value) {
                                          // if (value == null || value.isEmpty) {
                                          // return "Ce champs est obligatoire";
                                          // } else {
                                          // return null;
                                          // }
                                          // },
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down_rounded,
                                          size: 70,
                                        )
                                      ])),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GFCard(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      // stocké les données
                      content: etiquete_pro == null
                          ? Text(
                              "Ajouter l'adresse",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 200,
                                        right: 0,
                                        top: 15,
                                        bottom: 15),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.pending_outlined)),
                                  ),
                                  Text(
                                    " indos d'adresse",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  GFListTile(
                                    titleText: 'etiquette :',
                                    subTitleText: etiquete_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'numero :',
                                    subTitleText: numero_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'Rue :',
                                    subTitleText: rue_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'code postale',
                                    subTitleText: cod_pos_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'pays :',
                                    subTitleText: pays_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'latitude :',
                                    subTitleText: latitude_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'longitude :',
                                    subTitleText: longitude_pro.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'Defaut :',
                                    subTitleText: defaut_pr.toString(),
                                  ),
                                ])),

                      buttonBar: GFButtonBar(
                        children: <Widget>[
                          AnimatedIconButton(
                            size: 70,
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                context: context,
                                builder: (context) => SingleChildScrollView(
                                  controller: ModalScrollController.of(context),
                                  child: Card(
                                    elevation: 20,
                                    margin: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.all(40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0.0),
                                                    child: Text(
                                                      "Adresse",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        etiqette_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "étiquette",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                      controller:
                                                          numero_controller,
                                                      style: GoogleFonts.rubik(
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xff56545D),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      onChanged: (value) {
                                                        //_submit();
                                                      },
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        fillColor:
                                                            Color(0xFFF2F3F9),
                                                        filled: true,
                                                        focusColor:
                                                            Color(0xFFF2F3F9),
                                                        //add prefix icon

                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFF2F3F9),
                                                              width: 1.0),
                                                        ),

                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFF2F3F9),
                                                              width: 1.0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        // fillColor: Colors.grey,

                                                        hintText: "numero",

                                                        hintStyle: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily:
                                                              "Rubik Medium",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      keyboardType:
                                                          TextInputType.number),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: rue_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "Rue",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        complement_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "complement",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        cod_pos_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "code postale ",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        ville_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "ville",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: pays_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "pays",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: type_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "type",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        latitude_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "latitude",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        longitude_controller,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "longitude",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "defaut",

                                                      //make hint text
                                                      hintStyle: TextStyle(
                                                        // color: Colors.grey,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    // Initial Value
                                                    value: defaut_pro,
                                                    items: defaut
                                                        .map((String item) {
                                                      return DropdownMenuItem(
                                                        value: item,
                                                        child: Text(item),
                                                      );
                                                    }).toList(),
                                                    // Down Arrow Icon
                                                    icon: const Icon(Icons
                                                        .keyboard_arrow_down),

                                                    // After selecting the desired option,it will
                                                    // change button value to selected value
                                                    onChanged:
                                                        (String? newValue) {
                                                      controller:
                                                      Defaut_controller;
                                                      setState(() {
                                                        defaut_pro = newValue!;
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(children: [
                                                    RaisedButton(
                                                      padding: EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 15,
                                                          bottom: 15),
                                                      color: Colors.green,
                                                      child: Text(
                                                        'Valider',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 0.6),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      10.0))),
                                                      onPressed: () {
                                                        AwesomeDialog(
                                                          context: context,
                                                          dialogType:
                                                              DialogType.INFO,
                                                          animType: AnimType
                                                              .BOTTOMSLIDE,
                                                          title: 'Infos',
                                                          desc: "confirmation",
                                                          btnCancelOnPress: () {
                                                            {
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          },
                                                          btnOkOnPress: () {
                                                            //affectation adresse
                                                            setState(() {
                                                              etiquete_pro =
                                                                  etiqette_controller
                                                                      .text;
                                                              numero_pro =
                                                                  numero_controller
                                                                      .text;
                                                              rue_pro =
                                                                  rue_controller
                                                                      .text;
                                                              complement_pro =
                                                                  complement_controller
                                                                      .text;
                                                              cod_pos_pro =
                                                                  cod_pos_controller
                                                                      .text;
                                                              ville_pro =
                                                                  ville_controller
                                                                      .text;
                                                              pays_pro =
                                                                  pays_controller
                                                                      .text;
                                                              type_pro =
                                                                  type_controller
                                                                      .text;
                                                              latitude_pro =
                                                                  latitude_controller
                                                                      .text;
                                                              longitude_pro =
                                                                  longitude_controller
                                                                      .text;
                                                              defaut_pr =
                                                                  Defaut_controller
                                                                      .text;
                                                              //
                                                            });
                                                          },
                                                        )..show();
                                                      },
                                                      //
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    RaisedButton(
                                                      padding: EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 15,
                                                          bottom: 15),
                                                      color: Colors.red,
                                                      child: Text(
                                                        'Fermer',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 0.6),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      10.0))),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ]),
                                                ])),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            duration: const Duration(milliseconds: 500),
                            splashColor: Colors.transparent,
                            icons: const <AnimatedIconItem>[
                              AnimatedIconItem(
                                icon: Icon(Icons.add, color: Colors.purple),
                              ),
                              AnimatedIconItem(
                                icon: Icon(Icons.close, color: Colors.purple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    GFCard(
                      elevation: 20,
                      margin: EdgeInsets.all(20),
                      //
                      content: travail_p == null &&
                              principale_p == null &&
                              numero_p == null &&
                              defaut_p == null &&
                              nom_p == null &&
                              email_p == null
                          ? Text(
                              "Ajouter l'agent",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 200,
                                        right: 0,
                                        top: 15,
                                        bottom: 15),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.pending_outlined)),
                                  ),
                                  Text(
                                    "infos d'agent",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  GFListTile(
                                    titleText: 'Travail :',
                                    subTitleText: travail_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'Principale :',
                                    subTitleText: travail_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'numero :',
                                    subTitleText: numero_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'nom agent :',
                                    subTitleText: noma_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'prenom :',
                                    subTitleText: prenom_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'autre prenom :',
                                    subTitleText: autre_p.toString(),
                                  ),
                                  GFListTile(
                                    titleText: 'defaut numero:',
                                    subTitleText: defaut_p.toString(),
                                  ),
                                ])),

                      buttonBar: GFButtonBar(
                        children: <Widget>[
                          AnimatedIconButton(
                            size: 70,
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                context: context,
                                builder: (context) => SingleChildScrollView(
                                  controller: ModalScrollController.of(context),
                                  child:

                                      ///card_chip
                                      Card(
                                    elevation: 20,
                                    margin: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.all(40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0.0),
                                                    child: Text(
                                                      "Agents",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: travail_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "Travail",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        principale_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "principale",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: numero_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText:
                                                          "numéro de télephone ",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "titre",

                                                      //make hint text
                                                      hintStyle: TextStyle(
                                                        // color: Colors.grey,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    // Initial Value
                                                    value: titre_pro,
                                                    items: titre
                                                        .map((String item) {
                                                      return DropdownMenuItem(
                                                        value: item,
                                                        child: Text(item),
                                                      );
                                                    }).toList(),
                                                    // Down Arrow Icon
                                                    icon: const Icon(Icons
                                                        .keyboard_arrow_down),

                                                    // After selecting the desired option,it will
                                                    // change button value to selected value
                                                    onChanged:
                                                        (String? newValue) {
                                                      controller:
                                                      titre_control;
                                                      setState(() {
                                                        titre_pro = newValue!;
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: noma_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "nom agent",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: prenom_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "prenom",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        autre_pre_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "autre prénom",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: email_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "email",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  TextFormField(
                                                    controller: nom_control,
                                                    style: GoogleFonts.rubik(
                                                      fontSize: 16,
                                                      color: Color(0xff56545D),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    onChanged: (value) {
                                                      //_submit();
                                                    },
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText: "nom",

                                                      hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFF2F3F9),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      fillColor:
                                                          Color(0xFFF2F3F9),
                                                      filled: true,
                                                      focusColor:
                                                          Color(0xFFF2F3F9),
                                                      //add prefix icon

                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                      ),

                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFF2F3F9),
                                                            width: 1.0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      // fillColor: Colors.grey,

                                                      hintText:
                                                          "defaut numbers phone",

                                                      //make hint text
                                                      hintStyle: TextStyle(
                                                        // color: Colors.grey,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "Rubik Medium",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    // Initial Value
                                                    value: defaut_pro,
                                                    items: defaut
                                                        .map((String item) {
                                                      return DropdownMenuItem(
                                                        value: item,
                                                        child: Text(item),
                                                      );
                                                    }).toList(),
                                                    // Down Arrow Icon
                                                    icon: const Icon(Icons
                                                        .keyboard_arrow_down),

                                                    // After selecting the desired option,it will
                                                    // change button value to selected value
                                                    onChanged:
                                                        (String? newValue) {
                                                      controller:
                                                      Defaut_control;
                                                      setState(() {
                                                        defaut_pro = newValue!;
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(children: [
                                                    RaisedButton(
                                                      padding: EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 15,
                                                          bottom: 15),
                                                      color: Colors.green,
                                                      child: Text(
                                                        'Valider',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 0.6),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      10.0))),
                                                      onPressed: () {
                                                        AwesomeDialog(
                                                          context: context,
                                                          dialogType:
                                                              DialogType.INFO,
                                                          animType: AnimType
                                                              .BOTTOMSLIDE,
                                                          title: 'Infos',
                                                          desc: "confirmation",
                                                          btnCancelOnPress: () {
                                                            {
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          },
                                                          btnOkOnPress: () {
                                                            //affectation adresse
                                                            setState(() {
                                                              titre_p =
                                                                  titre_control
                                                                      .text;
                                                              noma_p =
                                                                  noma_control
                                                                      .text;
                                                              nom_p =
                                                                  nom_control
                                                                      .text;
                                                              autre_p =
                                                                  autre_pre_control
                                                                      .text;
                                                              prenom_p =
                                                                  prenom_control
                                                                      .text;
                                                              email_p =
                                                                  email_control
                                                                      .text;
                                                              numero_p =
                                                                  numero_control
                                                                      .text;
                                                              travail_p =
                                                                  travail_control
                                                                      .text;
                                                              principale_p =
                                                                  principale_control
                                                                      .text;
                                                              defaut_p =
                                                                  Defaut_control
                                                                      .text;

                                                              //
                                                            });
                                                          },
                                                        )..show();
                                                      },
                                                      //
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    RaisedButton(
                                                      padding: EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 15,
                                                          bottom: 15),
                                                      color: Colors.red,
                                                      child: Text(
                                                        'Fermer',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 0.6),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      10.0))),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ]),
                                                ])),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            duration: const Duration(milliseconds: 500),
                            splashColor: Colors.transparent,
                            icons: const <AnimatedIconItem>[
                              AnimatedIconItem(
                                icon: Icon(Icons.add, color: Colors.purple),
                              ),
                              AnimatedIconItem(
                                icon: Icon(Icons.close, color: Colors.purple),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
// validation
                    Container(
                      child: ElevatedButton(
                        onPressed: isButtonActive
                            ? () {
                                setState(() => isButtonActive = false);
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 120,
                            vertical: 20,
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        child: Text(
                          "Enregister",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 30),
                Align(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "FATURA",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Rubik Medium",
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.dashboard),
                  title: Text('Tableau du bord'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Cpar');
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Client particulier'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Cpro');
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Client Professionel'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'Prod');
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Produit'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'F_achat');
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text("Facture d'achat"),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child:
                        Text('Groupe de service Fatura | Tous les droits 2022'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.label,
    required this.onDeleted,
    required this.index,
  });

  final String label;
  final ValueChanged<int> onDeleted;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}
