import 'package:flutter/material.dart';

class SearchProductsField extends StatelessWidget {
  const SearchProductsField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
      
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined,color: Colors.grey,)),
                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.mic_none_rounded, color: Colors.grey)),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "Search for coffee, pastries...",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))
              ),
            ),
    );
  }
}