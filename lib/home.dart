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
import 'package:projet_vetements_miage/widgets/Custom_navbar.dart';


// ...............................................................................................................

// creation du widget HomeScreen Statfull

class HomeScreen extends StatefulWidget {
   const HomeScreen( {super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// creons notre liste des categories de vetements

final List<String> categories = [
  'T-Shirts',
  'Chapeau',
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

  final List<Robe> robes = Robe.robes();
int currentIndex = 0;


class _HomeScreenState extends State<HomeScreen> {


    List<Robe> itemsFiltres = robes;

  // recuperer les robes favorites

  final List<Robe> favoriteRobes = robes.where((robe) => robe.isFavorite).toList();

  final int _currentIndex = 0;


  final TextEditingController searchController = TextEditingController();


void updateFavorite(Robe robe) {
  setState(() {
    robe.isFavorite = !robe.isFavorite;
  });
}
  

  @override
  Widget build(BuildContext context) {

      

    SizeConfig().init(context);
    
    
    
               return Scaffold(
  bottomNavigationBar: CustomBottomNavigationBar(
    currentIndex: _currentIndex,
  ),
  body: SafeArea(
    child: Material(
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

                      controller: searchController, // assignation du controleur

              decoration: InputDecoration(
                hintText: 'Rechercher une robe',
                hintStyle: kEncodeSansRagular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kDarkGrey,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                prefixIcon: const Icon(Icons.filter_list, color: kBlack, size: 20),
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
        onPressed: () {
          // Rechercher les robes contenant la chaîne de recherche
          final String query = searchController.text.toLowerCase();
          setState(() {
            itemsFiltres = robes
                .where((robe) => robe.nom.toLowerCase().contains(query))
                .toList();
          });
        },
                icon: const Icon(Icons.search, color: kDarkBrown),
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


                      // pour changer la couleur du conteneur quand on clique sur une categorie
                      // filtrage selon la categorie selectionnee
                    
                    itemsFiltres = robes.where((robe) => robe.categorie == categories[index]).toList();

                      currentIndex = index;


                    debugPrint('categorie selectionnee : ${categories[index]}');
                     debugPrint(categories[index]);


                    });

                  },
                  child: Padding(

                  padding: const EdgeInsets.only(left: 20),


                  child: Column(
                    children: [

                      // conteneur contenant les images des filtres categories

                      Container(
  margin: EdgeInsets.only(
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

                    itemCount: itemsFiltres.length,

                    padding: const EdgeInsets.symmetric(
                      horizontal: kPaddingHorizontal,
                    ),
                    
                  
                  
                   itemBuilder: (context, index) {
                        return GestureDetector(
                           onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>  ProductDetailPage(itemsFiltres[index]),
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
                                          child: Image.asset(itemsFiltres[index].image),
                                        ),
                                      ),
                                      
                                      
                                      
                                      
                                      Positioned(
                                        right: 12,
                                        top: 12,
                                        
                                        
                                        
                                        child: GestureDetector(
                                          onTap: () {
                                         setState(() {


                                         // pour changer l'etat du bouton favoris quand on clique dessus

                                          itemsFiltres[index].isFavorite = !itemsFiltres[index].isFavorite;



                                          // si le bouton est selectionne, on ajoute l'item a la liste des favoris

                                                if (itemsFiltres[index].isFavorite) {
                                    
                                    
                                    favoriteRobes.add(itemsFiltres[index]);
                                    
                                    
                                    debugPrint('favoris : ${favoriteRobes.length}');
                                    debugPrint(favoriteRobes.toString());
                                   
                                   
                                   // for (var i = 0; i < favoriteRobes.length; i++) {
                                    //    debugPrint(favoriteRobes[i].nom);
                                    // }


                                } else {



                                    // si le bouton n'est pas selectionne, on retire l'item de la liste des favoris
                                   
                                   
                                    favoriteRobes.remove(itemsFiltres[index]);
                                    
                                    
                                    debugPrint('favoris : ${favoriteRobes.length}');
                                    
                                    debugPrint(favoriteRobes.toString());

                                   
                                   
                                   
                                    // for (var i = 0; i < favoriteRobes.length; i++) {
                                    //     debugPrint(favoriteRobes[i].nom);
                                    // }
                                }
                                                                        }
                                );
                                                                          },
                                  child: SvgPicture.asset(
                                    itemsFiltres[index].isFavorite
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
                                            itemsFiltres[index].nom,
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
                                                    '${itemsFiltres[index].prix.toStringAsFixed(2)} €',
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
                        ),)
                      ),);
                      

                    }}