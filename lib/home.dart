// importation des packages

//import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_vetements_miage/app_styles.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:projet_vetements_miage/size_config.dart';
import 'package:projet_vetements_miage/model.dart';


// ...............................................................................................................

// creation du widget HomeScreen Statfull

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// creons notre liste des categories de vetements

final List<String> categories = [
  'T-Shirts',
  'Chemises',
  'Maillots',
  'Chaussettes',
  'Valises',
  'Lunettes',
  'Robes',
];

// creons notre liste des icons de vetements

final List<IconData> icons = [
  FontAwesomeIcons.tshirt,
  FontAwesomeIcons.hatCowboy,
  FontAwesomeIcons.umbrellaBeach,
  FontAwesomeIcons.socks,
  FontAwesomeIcons.suitcase,
  FontAwesomeIcons.glasses,
  FontAwesomeIcons.female,
];

// creons notre listes des images de vetements a afficher


  final List<Robes> robes = Robes.robes();


// ajouter current index pour le bottom navigation bar

int currentIndex = 0;


class _HomeScreenState extends State<HomeScreen> {


  List<String> favorites = []; // Ajout de la variable favorites ici
  List<bool> isFavoriteList = List.generate(robes.length, (_) => false);



  @override
  Widget build(BuildContext context) {

      

    SizeConfig().init(context);
    return SafeArea(
  
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(

              // space between pour que les deux widget soit a gauche et a droite

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children:[
               Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Bienvenue sur ',
                          style: kEncodeSansRagular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                            color: kDarkBrown,
                          ),
                          children: [

                            TextSpan(
                            
                              text: ' MIAGED ',
                              style: kEncodeSansRagular.copyWith(
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                            const TextSpan(text: ' 👋'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Othman MEKOUAR',
                        style: kEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          color: kDarkBrown,
                        ),
                      ),
                    ],
                  ),
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: kGrey,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                ),
              ]
            ),
          ),
          const SizedBox(height: 25),
         
          Row(children: [
            Expanded(child: TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher une robe',
                hintStyle: kEncodeSansRagular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kDarkGrey,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                prefixIcon: const Icon(Icons.search, color: kGrey),
                filled: true,
                fillColor: kLightGrey,
                enabledBorder: kInputBorder,
                focusedBorder: kInputBorder,
              ),
            ),
            ),
            const SizedBox(width: 10), // margin entre les deux widget  de la row barre de recherche et le bouton filtre
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                //color: kLightGrey,
                color: kYellow,

                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list, color: kDarkBrown),
              ),
            ),
          ],),


          const SizedBox(height: 25),

           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories', style: kEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBrown,
                ),
                ),
                Text('Voir tout', style: kEncodeSansRagular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kGrey,
                ),
                ),
                
              ],
            ),
          ),
          const SizedBox(height: 25),

          SizedBox(
            
            height: SizeConfig.blockSizeVertical! * 15,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {

                return GestureDetector(
                  onTap: (

                  ) {
                    setState(() {
                      currentIndex = index; // pour changer la couleur du conteneur quand on clique sur une categorie
                    });

                  },
                  child: Padding(

                  padding: const EdgeInsets.only(left: 20),


                  child: Column(
                    children: [

                      // conteneur contenant les images des filtres categories

                      Container(
                        margin:  EdgeInsets.only(
                          
                          right: index == categories.length - 1 ? 20 : 0,
                        ),
                        height: SizeConfig.blockSizeVertical! * 7.5,
                        width: SizeConfig.blockSizeHorizontal! * 15,
                        decoration: BoxDecoration(
                          color: currentIndex == index ? kYellow : kLightGrey,
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          
                        ),
                      
                        child: Icon(icons[index], color: kDarkBrown),

                        
                      ),

                      // sizebox pour creer un espace entre categories et les noms des categories

                      const SizedBox(height: 10),
                      
                      // Nom des categories

                      Container(
                        margin:  EdgeInsets.only(
                          
                          right: index == categories.length - 1 ? 20 : 0,
                        ),
                        child: Text(categories[index], style: kEncodeSansRagular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          color: kDarkGrey,
                          
                        ),

                        ),
                      ),
                    ],
                  ),
                ),
                );
              },
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nouveautes', style: kEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBrown,
                ),
                ),
                Text('Voir tout', style: kEncodeSansRagular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kGrey,
                ),
                ),
                
              ],
            ),
          ),

          const SizedBox(height: 25),




                  MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 23,

                    // parcourir toutes les images

                    itemCount: robes.length,

                    padding: const EdgeInsets.symmetric(
                      horizontal: kPaddingHorizontal,
                    ),
                    
                  
                  
                   itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductDetailPage(),
                              ),
                            );
                          },



                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Stack(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 3 / 4,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(kBorderRadius),
                                          child: Image.asset(robes[index].image),
                                        ),
                                      ),
                                      
                                      Positioned(
                                        right: 12,
                                        top: 12,
                                        child: GestureDetector(
                                          onTap: () {
                                           setState(() {
                                              isFavoriteList[index] = !isFavoriteList[index];
                                             debugPrint(isFavoriteList[index].toString());
                                           });
                                          },
                                          child: SvgPicture.asset(
                                            isFavoriteList[index]
                                                ? 'assets/favorite_cloth_icon_selected.svg'
                                                : 'assets/favorite_cloth_icon_unselected.svg',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                            
                            const SizedBox(
                              height: 8,
                            ),

                            // nom du produit
                            
                            Text(
                              robes[index].nom,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansRagular.copyWith(
                                color: kBlack,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                     '\$${robes[index].prix}',
                                    style: kEncodeSansSemibold.copyWith(
                                      color: kDarkBrown,
                                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: kYellow,
                                        size: 16,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '5.0',
                                        style: kEncodeSansRagular.copyWith(
                                          color: kDarkBrown,
                                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),


                            const SizedBox(
                              height: 45,
                            ),


                            const SizedBox(height: 45),


                          ]
                        ),
                      );

                    }}