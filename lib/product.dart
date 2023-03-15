import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projet_vetements_miage/PanierPage.dart';
import 'package:projet_vetements_miage/app_styles.dart';
import 'package:projet_vetements_miage/counter.dart';
import 'package:projet_vetements_miage/paiement.dart';
import 'package:projet_vetements_miage/size_config.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

import 'package:projet_vetements_miage/model.dart';




class ProductDetailPage extends StatefulWidget {


  const ProductDetailPage(this.robe , {super.key});
  final Robe robe;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class Panier extends ChangeNotifier {
  List<Robe> articles = [];

  void ajouterArticle(Robe robe) {
    articles.add(robe);
    notifyListeners(); // Notifie les écouteurs de tout changement dans le panier
  }

  void supprimerArticle(Robe robe) {
    articles.remove(robe);
    notifyListeners(); // Notifie les écouteurs de tout changement dans le panier
  }
}


class _ProductDetailPageState extends State<ProductDetailPage> {

  


// declaration de Is pressed pour choisir la taille

List<bool> isButtonPressed = [false, false, false, false];

final List<String> size = ['S', 'M', 'L', 'XL'];

final List<String> color = ['Black', 'White', 'Red', 'Blue'];


final Counter _counter = Counter();

void selectSize(int index) {
  
  setState(() {
    for (int i = 0; i < isButtonPressed.length; i++) {
      if (i == index) {
        isButtonPressed[i] = true;
        widget.robe.tailleChoisie = widget.robe.tailles[i];
      } else {
        isButtonPressed[i] = false;
      }
    }
  });
}
 void _incrementCounter() {
  setState(() {
    _counter.value++;
    widget.robe.quantiteChoisie = _counter.value;
  });
}

void _decrementCounter() {
  setState(() {
    if (_counter.value > 1) {
      _counter.value--;
      widget.robe.quantiteChoisie = _counter.value;
    }
  });
}

  



  @override
  Widget build(BuildContext context) {




    // You have to call it on your starting screen
    SizeConfig().init(context);
return  Scaffold(
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
              
              onTap: () {
                final panier = Provider.of<Panier>(context, listen: false);
                panier.ajouterArticle(widget.robe);
                debugPrint('Element ajouté avec succès dans le panier');
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PanierPage()));
              },

        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: kYellow,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/shopping_cart_icon.svg',
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal! * 2,
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: RichText(
                  text: TextSpan(
                    text: 'Add to Cart   ${widget.robe.prix.toString()} €',
                    style: kEncodeSansBold.copyWith(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),


    
      body: SafeArea(

        child:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: kPaddingHorizontal,
          ),
        child: 
        
        Column(
  children: [
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(widget.robe.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

           Align(
                      alignment: Alignment.topCenter,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                           Container(
  height: SizeConfig.blockSizeVertical! * 4,
  width: SizeConfig.blockSizeVertical! * 4,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: kWhite,
    boxShadow: [
      BoxShadow(
        color: kBrown.withOpacity(0.11),
        spreadRadius: 0.0,
        blurRadius: 12,
        offset: const Offset(0, 5),
      )
    ],
  ),
  padding: const EdgeInsets.all(8),
  child: GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: SvgPicture.asset(
      'assets/arrow_back_icon.svg',
    ),
  ),
),
                            
                            
                            
                          ],
                        ),
                      ),
                    ),

         
        

        ],
      ),


    ),
    const SizedBox(height: 24),

     Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:  Text(widget.robe.nom,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodeSansSemibold.copyWith(
                        color: kDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 5,
                      ),

                    ),
                    
                  ),
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _decrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kBorderColor,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                            color: kWhite,
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: kGrey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      Text(
                        _counter.value.toString(),
                        style: kEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          color: kDarkBrown,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      GestureDetector(
                        onTap: _incrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kBorderColor,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                            color: kWhite,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: kDarkGrey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),

              // icons star and reviews 
              
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.all(2),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: kYellow,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                    unratedColor: kYellow.withOpacity(0.3),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '5.0 ',
                      style: kEncodeSansRagular.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ( 72 reviews )',
                          style: kEncodeSansRagular.copyWith(
                            color: kYellow,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),


              
              const SizedBox(
                height: 28,
              ),


              ReadMoreText(
                widget.robe.description,
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: ' ',
                trimCollapsedText: 'Read More...',
                trimExpandedText: 'Show Less',
                style: kEncodeSansRagular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  color: kDarkGrey,
                ),
                moreStyle: kEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBrown,
                ),
                lessStyle: kEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBrown,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 1,
                color: kLightGrey,
              ),
              const SizedBox(
                height: 16,
              ),












              // Size vetements

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Size',
                        style: kEncodeSansBold.copyWith(
                          color: kDarkBrown,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [



                                          // S


                         
                      GestureDetector(


                        onTap: () {
                          setState(() {

      selectSize(0);

                          });
                        },
                        child: Container(
                          height: SizeConfig.blockSizeHorizontal! * 9.5,
                          width: SizeConfig.blockSizeHorizontal! * 9.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightGrey,
                              width: 1,
                            ),
                            shape: BoxShape.circle,

                            color: isButtonPressed[0] ? kYellow : kWhite,
                          ),
                          child: Center(
                            child: Text(
                                  widget.robe.tailles[0],
                              style: kEncodeSansRagular.copyWith(
                                color: kDarkBrown,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.7,
                              ),
                            ),
                          ),
                        ),
                      ),






                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),




                                      // M


                         GestureDetector(
                        onTap: () {
                          setState(() {
      selectSize(1);

                          });
                        },
                        child: Container(
                          height: SizeConfig.blockSizeHorizontal! * 9.5,
                          width: SizeConfig.blockSizeHorizontal! * 9.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightGrey,
                              width: 1,
                            ),
                            shape: BoxShape.circle,

                            color: isButtonPressed[1] ? kYellow : kWhite,
                          ),
                          child: Center(
                            child: Text(
                                  widget.robe.tailles[1],
                              style: kEncodeSansRagular.copyWith(
                                color: kDarkBrown,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.7,
                              ),
                            ),
                          ),
                        ),
                      ),




                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),



                                        // L


                         GestureDetector(
                        onTap: () {
                          setState(() {

                              selectSize(2);


                          });
                        },
                        child: Container(
                          height: SizeConfig.blockSizeHorizontal! * 9.5,
                          width: SizeConfig.blockSizeHorizontal! * 9.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightGrey,
                              width: 1,
                            ),
                            shape: BoxShape.circle,

                            color: isButtonPressed[2] ? kYellow : kWhite,
                          ),
                          child: Center(
                            child: Text(
                                  widget.robe.tailles[2]

                              ,
                              style: kEncodeSansRagular.copyWith(
                                color: kDarkBrown,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.7,
                              ),
                            ),
                          ),
                        ),
                      ),






                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),

                                          
                                          
                                          
                                          // XL       

                           GestureDetector(
                        onTap: () {
                          setState(() {
      selectSize(3);

                          });
                        },
                        child: Container(
                          height: SizeConfig.blockSizeHorizontal! * 9.5,
                          width: SizeConfig.blockSizeHorizontal! * 9.5,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightGrey,
                              width: 1,
                            ),
                            shape: BoxShape.circle,

                            color: isButtonPressed[3] ? kYellow : kWhite,
                          ),
                          child: Center(
                            child: Text(
                                  widget.robe.tailles[3],
                              style: kEncodeSansRagular.copyWith(
                                color: kDarkBrown,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.7,
                              ),
                            ),
                          ),
                        ),
                      ),
                          
                        ],
                      )
                    ],
                  ),
                  
                ],
              ),









              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

