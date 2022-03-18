import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget buildTile(IconData icon, String type) {
    return Expanded(
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: 25.0,
        ),
        title: Text(
          '$type',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_bag),
      ),
      appBar: AppBar(
        title: const Text('Restaurant Menu App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.indigo.shade400,
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              Expanded(
                child: Container(
                  height: 230.0,
                  padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/batman.png'),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Bruce Wayne',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              buildTile(Icons.account_box_outlined, 'Profile'),
              buildTile(Icons.home_outlined, 'Address'),
              buildTile(Icons.account_balance_wallet_outlined, 'Payment Method'),
              buildTile(Icons.shopping_cart_outlined, 'Food cart'),
              buildTile(Icons.favorite_outline_rounded, 'Rate Us'),
              buildTile(Icons.email_outlined, 'Contact Us'),
              MaterialButton(
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                hoverElevation: 10.0,
                color: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                onPressed: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Text(
            'Deals',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 200.0,
                  width: 200.0,
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'images/food-coupons.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                     image: AssetImage('images/boston-market-2-for-20.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/discount.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Italian',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          const DishTile(
            dishname: 'Stuffed Ravioli',
            dishprice: 40,
            dishimage: 'images/italian/ravioli.png',
          ),
          const DishTile(
            dishname: 'Lasagna',
            dishprice: 100,
            dishimage: 'images/italian/lasagna.png',
          ),
          const DishTile(
            dishname: 'Mushroom Risotto',
            dishprice: 70,
            dishimage: 'images/italian/risotto.png',
          ),
          const DishTile(
            dishname: 'Bruschetta',
            dishprice: 30,
            dishimage: 'images/italian/bruschetta.png',
          ),
          const DishTile(
            dishname: 'Fettuccine Pomodoro',
            dishprice: 35,
            dishimage: 'images/italian/pomodoro.png',
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Indian',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          const DishTile(
            dishname: 'Samosas',
            dishprice: 20,
            dishimage: 'images/indian/samosas.png',
          ),
          const DishTile(
            dishname: 'Aloo Gobi',
            dishprice: 40,
            dishimage: 'images/indian/Indian-Cauliflower-Potatoe.png',
          ),
          const DishTile(
            dishname: 'Matar Paneer',
            dishprice: 60,
            dishimage: 'images/indian/Matar-Paneer-Peas-and-Cooked-Cottage-Cheese.png',
          ),
          const DishTile(
            dishname: 'Masala Chai',
            dishprice: 10,
            dishimage: 'images/indian/Classic-Indian-Masala-Chai.png',
          ),
          const DishTile(
            dishname: 'Lassi',
            dishprice: 20,
            dishimage: 'images/indian/lassi.png',
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Chinese',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          const DishTile(
            dishname: 'Dim Sums',
            dishprice: 50,
            dishimage: 'images/chinese/dimsum.png',
          ),
          const DishTile(
            dishname: 'Spring Rolls',
            dishprice: 40,
            dishimage: 'images/chinese/spring-roll.png',
          ),
          const DishTile(
            dishname: 'Honey Chilli Potato',
            dishprice: 30,
            dishimage: 'images/chinese/honey-chilli-potato.png',
          ),
          const DishTile(
            dishname: 'Vegetable Fried Rice',
            dishprice: 70,
            dishimage: 'images/chinese/fried-rice.png',
          ),
          const DishTile(
            dishname: 'Veg Hakka Noodles',
            dishprice: 80,
            dishimage: 'images/chinese/noodles.png',
          ),
        ],
      ),
    );
  }
}

class DishTile extends StatefulWidget {
  final String dishname;
  final int dishprice;
  final String dishimage;

  const DishTile(
      {Key? key,
      required this.dishname,
      required this.dishprice,
      required this.dishimage})
      : super(key: key);
  @override
  State<DishTile> createState() => _DishTileState();
}

class _DishTileState extends State<DishTile> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.dishimage,
        width: 100,
        height: 100,
        fit: BoxFit.fill,
      ),
      title: Text(
        widget.dishname,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        'Rs. ' + widget.dishprice.toString(),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          Text(
            '$counter',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                counter -= 1;
                if (counter <= 0) {
                  counter = 0;
                }
              });
            },
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
