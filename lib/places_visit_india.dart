import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Placesvisit extends StatefulWidget {
  @override
  _PlacesvisitState createState() => _PlacesvisitState();
}

class _PlacesvisitState extends State<Placesvisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        title: Text('Places To Visit'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'http://www.blog.weekendthrill.com/wp-content/uploads/2016/07/1-10.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: DropdownButton<String>(
                        items: [
                          DropdownMenuItem(
                            child: Text('For the Adventure in You...',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'For the Adventure in You',
                          ),
                          DropdownMenuItem(
                            child: Text('Rock Climbing in Shey,Ladakh',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Rock Climbing in Shey,Ladakh',
                          ),
                          DropdownMenuItem(
                            child: Text('Snorkeling in Andaman Islands',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Snorkeling in Andaman Islands',
                          ),
                          DropdownMenuItem(
                            child: Text('Hot air balloon ride in Rajasthan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Hot air balloon ride in Rajasthan',
                          ),
                          DropdownMenuItem(
                            child: Text(' Trekking in Meghalaya',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Trekking in Meghalaya',
                          ),
                          DropdownMenuItem(
                            child: Text('Bungee jumping in Uttarakhand',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Bungee jumping in Uttarakhand',
                          ),
                        ],
                        onChanged: (value) {
                          print(value);
                        }),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.thrillophilia.com/image/upload/s--pmy6HJYG--/c_fill,f_auto,fl_strip_profile,h_600,q_auto,w_975/v1/images/photos/000/160/046/original/1561533408_1701817_400x0.png.jpg?1561533408'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: DropdownButton<String>(
                        items: [
                          DropdownMenuItem(
                            child: Text('For the Nature in You...',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'For the Nature in You...',
                          ),
                          DropdownMenuItem(
                            child: Text('Valley of Flowers,Uttarakhand',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Valley of Flowers,Uttarakhand',
                          ),
                          DropdownMenuItem(
                            child: Text('Khajjiar,Himachal Pradesh',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Khajjiar,Himachal Pradesh',
                          ),
                          DropdownMenuItem(
                            child: Text('Dzukou Valley,Nagaland',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Dzukou Valley,Nagaland',
                          ),
                          DropdownMenuItem(
                            child: Text('Alleppey, Kerala',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Alleppey, Kerala',
                          ),
                          DropdownMenuItem(
                            child: Text('Coorg, Karnataka',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            value: 'Coorg, Karnataka',
                          ),
                        ],
                        onChanged: (value) {
                          print(value);
                        }),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://d1u4oo4rb13yy8.cloudfront.net/book/71917-rvazjfaaxt-1508869971.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: DropdownButton<String>(
                          items: [
                            DropdownMenuItem(
                              child: Text('For the Royalty in You...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'For the Royalty in You...',
                            ),
                            DropdownMenuItem(
                              child: Text('City Palace,Udaipur,Rajasthan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'City Palace,Udaipur,Rajasthan',
                            ),
                            DropdownMenuItem(
                              child: Text(' Marble Palace,Kolkata',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: ' Marble Palace,Kolkata',
                            ),
                            DropdownMenuItem(
                              child: Text('Falaknuma Palace,Hyderabad',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Falaknuma Palace,Hyderabad',
                            ),
                            DropdownMenuItem(
                              child: Text('Amba Vilas Palace,Karnataka',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Amba Vilas Palace,Karnataka',
                            ),
                          ],
                          onChanged: (value) {
                            print(value);
                          }),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2017/03/17/Pictures/_aa7e0428-0b1b-11e7-ad00-2dd402d181d7.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: DropdownButton<String>(
                          items: [
                            DropdownMenuItem(
                              child: Text('For the  Spirituality in You...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'For the  Spirituality in You...',
                            ),
                            DropdownMenuItem(
                              child: Text('Bodhgaya, Bihar',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Bodhgaya, Bihar',
                            ),
                            DropdownMenuItem(
                              child: Text('Rishikesh,Himachal Pradesh',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Rishikesh,Himachal Pradesh',
                            ),
                            DropdownMenuItem(
                              child: Text('Meenakshi Temple,Tamil Nadu',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Meenakshi Temple,Tamil Nadu',
                            ),
                            DropdownMenuItem(
                              child: Text('Shiridi, Maharashtra',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Shiridi, Maharashtra',
                            ),
                            DropdownMenuItem(
                              child: Text('Murudeshwar, Karnataka',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                              value: 'Murudeshwar, Karnataka',
                            ),
                          ],
                          onChanged: (value) {
                            print(value);
                          }),
                    ),
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
