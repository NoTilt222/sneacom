import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneacom/models/shoe.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search...',
              style: TextStyle(
                color: Colors.grey[600]
              ),),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              )
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Text('Everyone flies... Some fly longer than others',
          style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Text('See all',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.blue))
            ],
          ),
        ),

        const SizedBox(height: 10,),
        
        Expanded(child: ListView.builder(
          itemCount: 4,
            itemBuilder: (context, index){
          Shoe shoe = Shoe(name: 'Air Jordan', price: '100', imagepath: 'assets/images/air3.png', description: 'Air Jordan Bro');
          return ShoeTile(
              shoe: shoe);
        }))
      ],
    );
  }
}
