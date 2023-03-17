class Robe {
  String image;
  String nom;
  num quantite;
  List<String> tailles;
  int prix;
  String type;
  String description;
  List<String> images;
  bool isFavorite;
  String tailleChoisie;
  int quantiteChoisie;
  String etat;


  Robe(
    this.image,
    this.nom,
    this.quantite,
    this.tailles,
    this.prix,
    this.type,
    this.description,
    this.images,
    this.isFavorite,
    this.tailleChoisie,
    this.quantiteChoisie,
    this.etat
  );

  static List<Robe> robes() {
    return [
      Robe(
        'assets/images/image-01.png',
        'Robe Empire Rosa',
        25,
        ["S", "M", "L", "XL"],
        160,
        "Robes",
        "Une robe longue en mousseline de soie bleu clair, avec une encolure en V et des manches courtes évasées.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-01.png',
          'assets/images/image-01.png',
          'assets/images/image-01.png',
        ],
        false,
         "S", // taille choisie par défaut
                   1,
"Mauvais état"
      ),
      Robe(
        'assets/images/image-02.png',
        'Robe fourreau Linda',
        25,
        ["S", "M", "L", "XL"],
        170,
        "Robes",

        "Une robe midi en dentelle noire, avec un décolleté plongeant en forme de cœur et des manches longues en dentelle transparente.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-02.png',
          'assets/images/image-02.png',
          'assets/images/image-02.png',
        ],
        true,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
       Robe(
        'assets/images/image-03.png',
        'Robe sirène da Squaza',
        25,
        ["S", "M", "L", "XL"],
        185,
        "Robes",

        "Une robe courte sans bretelles en satin rouge vif, avec une jupe plissée et une ceinture en strass.Une robe à fleurs en coton rouge, avec un décolleté en V plongeant et des bretelles spaghetti croisées dans le dos.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-03.png',
          'assets/images/image-03.png',
          'assets/images/image-03.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Mauvais état"      ),
       Robe(
        'assets/images/image-04.png',
        'Robe portefeuille di Monte',
        25,
        ["S", "M", "L", "XL"],
        190,
        "Robes",

        "Une robe longue en jersey noir, avec des découpes sur les côtés de la taille et des bretelles fines croisées dans le dos.Une robe courte à col roulé en maille grise, avec des manches longues et une jupe trapèze.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-04.png',
          'assets/images/image-04.png',
          'assets/images/image-04.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
       Robe(
        'assets/images/image-05.png',
        'Robe patineuse de la côte',
        25,
        ["S", "M", "L", "XL"],
        180,
        "Robes",

        "Une robe chemise en denim bleu clair, avec des poches sur la poitrine et une ceinture à nouer à la taille.Une robe à volants en mousseline de soie rose pastel, avec des manches évasées et une ceinture à la taille.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-05.png',
          'assets/images/image-05.png',
          'assets/images/image-05.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Mauvais état"      ),
       Robe(
        'assets/images/image-06.png',
        'Robe bustier Sacnchez',
        25,
        ["S", "M", "L", "XL"],
        205,
        "Robes",

        "Une robe maxi en coton blanc avec des broderies florales colorées, une encolure en V et des manches courtes ballon.Une robe fourreau en cuir noir, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-06.png',
          'assets/images/image-06.png',
          'assets/images/image-06.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
       Robe(
        'assets/images/image-07.png',
        'Robe chemise Kassin',
        25,
        ["S", "M", "L", "XL"],
        210,
        "Robes",

        "Une robe fourreau en cuir blanc, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-07.png',
          'assets/images/image-07.png',
          'assets/images/image-07.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
       Robe(
        'assets/images/image-08.png',
        'Robe chemise Croite',
        25,
        ["S", "M", "L", "XL"],
        230,
        "Robes",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/shirt1.png',
        'Lobby T-shirt',
        25,
        ["S", "M", "L", "XL"],
        55,
        "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/shirt2.png',
        'Kind Swear T-shirt',
        25,
        ["S", "M", "L", "XL"],
        65,
        "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        true,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/shirt3.png',
        'Blue beach T-shirt',
        25,
        ["S", "M", "L", "XL"],
        54,
        "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/shirt4.png',
        'Blach eyes T-shirt',
        25,
        ["S", "M", "L", "XL"],
        45,
        "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/shirt5.png',
        'Kictyh eyes T-shirt',
        25,
        ["S", "M", "L", "XL"],
        45,
       "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/shirt6.png',
        'Pat eyes T-shirt',
        25,
        ["S", "M", "L", "XL"],
        45,
       "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/shirt7.png',
        'Zat eyes T-shirt',
        25,
        ["S", "M", "L", "XL"],
        45,
        "T-Shirts",

        "Une robe fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/chapeau5.png',
        'Chapeau en cuir',
        25,
        ["S", "M", "L", "XL"],
        45,
        "Chapeau",

        "Un Chapeau fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/chapeau4.png',
        'Chapeau thermique',
        25,
        ["S", "M", "L", "XL"],
        24,
        "Chapeau",

        "Une Chapeau fourreau en cuir blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/chapeau3.png',
        'Chapeau de paille',
        25,
        ["S", "M", "L", "XL"],
        22,
        "Chapeau",

        "Un chapeau fourreau en paille blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/chapeau2.png',
        'Chapeau de zorro',
        25,
        ["S", "M", "L", "XL"],
        21,
        "Chapeau de zorro",

        "Un cheapeau fourreau en zorro blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/chapeau1.png',
        'Chapeau viking',
        25,
        ["S", "M", "L", "XL"],
        45,
        "Chapeau de bain",

        "Un Chapeau fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/maillot4.png',
        'Maillots de bain',
        25,
        ["S", "M", "L", "XL"],
        18,
        "Maillots",

        "Un maillot fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/maillot3.png',
        'maillots zorro',
        25,
        ["S", "M", "L", "XL"],
        17,
        "Maillots",

        "Un maillot fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/maillot2.png',
        'Maillots en cuir',
        25,
        ["S", "M", "L", "XL"],
        15,
        "Maillots",

        "Un maillot fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/maillot1.png',
        'Maillots de dentelle',
        25,
        ["S", "M", "L", "XL"],
        23,
        "Maillots",

        "Un maillot fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Mauvais état"      ),

       Robe(
        'assets/images/valise5.png',
        'Valise cuir',
        25,
        ["S", "M", "L", "XL"],
        143,
        "Valises",

        "Une valise fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

       Robe(
        'assets/images/valise4.png',
        'Valise xorro',
        25,
        ["S", "M", "L", "XL"],
        139,
        "Valises",

        "Une valise fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/valise3.png',
        'Valise wax',
        25,
        ["S", "M", "L", "XL"],
        119,
        "Valises",

        "Une valise fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        true,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/valise2.png',
        'Valise tissu',
        25,
        ["S", "M", "L", "XL"],
        159,
        "Valises",

        "Une valise fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

       Robe(
        'assets/images/valise1.png',
        'Valise vuitton',
        25,
        ["S", "M", "L", "XL"],
        123,
        "Valises",

        "Une valise fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/lunette7.png',
        'Lunettes vuitton',
        25,
        ["S", "M", "L", "XL"],
        280,
        "Lunettes",

        "Lunettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette6.png',
        'Lunettes Dior',
        25,
        ["S", "M", "L", "XL"],
        120,
        "Lunettes",

        " Lunette fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette5.png',
        'Lunettes Gucci',
        25,
        ["S", "M", "L", "XL"],
        255,
        "Lunettes",

        " Lunette fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette4.png',
        'Lunettes Balenciaga',
        25,
        ["S", "M", "L", "XL"],
        225,
        "Lunettes",

        " Lunettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette3.png',
        'Lunettes Saint Laurent',
        25,
        ["S", "M", "L", "XL"],
        210,
        "Lunettes",

        "Lunettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette2.png',
        'Lunettes Dior',
        25,
        ["S", "M", "L", "XL"],
        220,
        "Lunettes",

        "Lunettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
      Robe(
        'assets/images/lunette1.png',
        'Lunettes Cartier',
        25,
        ["S", "M", "L", "XL"],
        250,
        "Lunettes",

        "Lunettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/chaussettes4.png',
        'chaussettes Jaune ',
        25,
        ["S", "M", "L", "XL"],
        19,
        "Chaussettes",

        "Chaussettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),

      Robe(
        'assets/images/chaussettes3.png',
        'Chaussettes off white',
        25,
        ["S", "M", "L", "XL"],
        55,
        "Chaussettes",

        "chaussettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Mauvais état"      ),

      Robe(
        'assets/images/chaussettes2.png',
        'Chaussettes Prada',
        25,
        ["S", "M", "L", "XL"],
        25,
        "Chaussettes",

        "Chaussettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ],
        false,
        "S", // taille choisie par défaut
                   1,
"Mauvais état"      ),

      Robe(
        'assets/images/chaussettes1.png',
        'Chaussettes Cartier',
        25,
        ["S", "M", "L", "XL"],
        29,
        "Chaussettes",

        "Chaussettes fourreau en  blanc cassé porté par Rosa Linda , la princesse des milles et une nuit, avec une encolure haute et des manches longues en dentelle.Cette robe a été porté par Hind Rami , princesse des milles et une nuit. Femelle ayant une beauté sans précedente. qui compte portera cette robe se recevra le charisme et la prestance de Hind Rami",
        [
          'assets/images/image-08.png',
          'assets/images/image-08.png',
          'assets/images/image-08.png',
        ], 
        true,
        "S", // taille choisie par défaut
                   1,
"Bonne état"      ),
    ];
  }
}
