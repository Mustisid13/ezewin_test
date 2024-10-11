import 'package:ezewin_test/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

const List<String> productFilters = [
  "All",
  "Coffee",
  "Pastries",
  "Desserts",
  "Sandwhiches"
];

class FilterChips extends StatefulWidget {
  const FilterChips({super.key});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0),
          itemCount: productFilters.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ChoiceChip(
                onSelected: (value) {
                  if(value){
                    selectedIndex = index;
                  }else{
                    selectedIndex = null;
                  }
                  setState(() {
                    
                  });
                },
                showCheckmark: false,
                disabledColor: Colors.white,
                selectedColor: Colors.deepOrangeAccent,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.white,
                label: AppTextWidget(
                  text: productFilters[index],
                  color: selectedIndex == index? Colors.white: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                
                selected: selectedIndex == index,
              ),
            );
          }),
    );
  }
}
