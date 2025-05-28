import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //food image
            Image.asset(widget.food.imagePath),
        
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food name
                  Text(
                    widget.food.imagePath,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
        
            //food price
            Text(
              'KES${widget.food.prices}',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
        
            const SizedBox(height: 10),
        
            //food description
            Text(widget.food.description),
        
            const SizedBox(height: 10),
            Divider(color: Theme.of(context).colorScheme.secondary),
        
            const SizedBox(height: 10),
            //addons
            Text(
              "Add-ons",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.tertiary,
                ),
                borderRadius: BorderRadius.circular(8)
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context, index) {
                  //individual addon
                  Addon addon = widget.food.availableAddons[index];
                  //return checkbox UI
        
                  return CheckboxListTile(
                    title: Text(addon.name),
                    subtitle: Text('KES${addon.price}', style: TextStyle(
                color: Theme.of(context).colorScheme.primary,)),
                    value: false,
                    onChanged: (value) => {},
                  );
                },
              ),
            ),
        
            //button to add to cart
            MyButton( onTap: () {} , text: "Add to Cart"),
             const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
