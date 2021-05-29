import 'package:flutter/material.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

class Foodindia extends StatelessWidget {
  build(context) {
    return MaterialApp(
// Define a controller for TabBar and TabBarViews
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
// Use ShiftingTabBar instead of appBar
          appBar: ShiftingTabBar(
// Specify a color to background or it will pick it from primaryColor of your app ThemeData
            color: Colors.green,
// You can change brightness manually to change text color style to dark and light or
// it will decide based on your background color
// brightness: Brightness.dark,
            tabs: [
// Also you should use ShiftingTab widget instead of Tab widget to get shifting animation

              ShiftingTab(icon: Icon(Icons.local_dining), text: "Meal"),
              ShiftingTab(icon: Icon(Icons.local_bar), text: "Beverage"),
              ShiftingTab(icon: Icon(Icons.room_service), text: "Chaat"),
              ShiftingTab(icon: Icon(Icons.cake), text: "Dessert"),
            ],
          ),
// Other parts of the app are exacly same as default TabBar widget
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/b1/b7/20/b1b720e5d70dc03a6354a375cdd79495.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Text(
                        'Food in India is wide ranging in variety, taste and flavor. In India, recipes are handed down from generation to generationAll curries are made using a wide variety of spices.Here are some of the most delicious Indian dishes such as, Murg Makhani (Butter Chicken), Pot Butter Chicken, Tandoori Chicken, Chicken Tikka Masala, Chicken Vindaloo Curry, Malai Kofta, Chole (Chickpea Curry), Palak Paneer (Spinach and Cottage Cheese), Bhapaa Aloo, Chicken Stew and Appam, Hyderabadi Biryani, Dal Makhani.',
                        style: GoogleFonts.alice(
                          textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://t2.uc.ltmcdn.com/en/images/0/0/3/img_how_to_make_an_indian_masala_chai_tea_from_scratch_3300_orig.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Text(
                        'The 28 states of India has its own local drinks and beverage which are not only testy but also healthy. Indian beverage is a popular part of the Indian cuisine and has an array of drinks that are both unique and refreshing. Here is the list most popular beverages from all over India, such as Gin and Tonic, Lassi, Coffee, Masala Chai, Darjeeling, Feni, Mango Lassi, Haldi doodh, Badam doodh.',
                        style: GoogleFonts.alice(
                          textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i2.wp.com/www.binjalsvegkitchen.com/wp-content/uploads/2015/03/Pani-Puri-L2-WP-WT-S.jpg?resize=671%2C900'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Text(
                        'The chaat is a mixture of potato pieces, crisp fried bread dahi vada, chickpeas and tangy-salty spices, with sour Indian chili and saunth (dried ginger and tamarind sauce), fresh green coriander leaves and yogurt for garnish.The ingredients are combined and served on a small metal plate made into a bowl. And other popular variants included aloo tikkis or samosa (garnished with onion, coriander, hot spices and a dash of curd), bhel puri, dahi puri, panipuri, dahi vada, papri chaat, and sev puri.',
                        style: GoogleFonts.alice(
                          textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.cookclickndevour.com/wp-content/uploads/2016/09/jalabi-4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Text(
                        'Indian sweets and desserts, also called mithai, a significant element in Indian cuisine. Many are flavoured with almonds and pistachios, spiced with cardamon and decorated with nuts. Here are some of the most delicious Indian desserts that you need to try on your visit to the country such as, Laddu, Kheer, Gulab Jamun, Gajar ka halwa, Sandesh, Rasgulla, Kaju barfi, Kulfi, Jalebi, Ghevar, Ras malai, Malpua, Mysore pak and Peda.',
                        style: GoogleFonts.alice(
                          textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
