import 'package:flutter/material.dart';
import '../../../domain/entities/category_sub_entity.dart';

class CustomCardCategory extends StatelessWidget {
  final List<CategorySubEntity> categoryList;
  final int index;
  const CustomCardCategory({
    super.key,
    required this.categoryList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://master-market.masool.net/uploads/${categoryList[index].img}',
              fit: BoxFit.fill,
              height: 150,
              width: double.infinity,
              errorBuilder: (
                BuildContext context,
                Object exception,
                StackTrace? stackTrace,
              ) {
                return Image.network(
                  'https://cdn-icons-png.flaticon.com/512/6478/6478111.png',
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  categoryList[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  categoryList[index].details,
                  style: const TextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
      // Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: ClipRRect(
      //         borderRadius: const BorderRadius.only(
      //           bottomLeft: Radius.circular(10),
      //           bottomRight: Radius.circular(10),
      //         ),
      //         child: Image.asset(
      //           'assets/fruits_category.jpg',
      //           height: 40,
      //           width: 80,
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: 20,
      //       right: 20,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const Text(
      //             'فواكه',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           Container(
      //             width: 43,
      //             height: 43,
      //             padding: const EdgeInsets.all(5),
      //             decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: Colors.orange,
      //               border: Border.all(
      //                 color: Colors.white,
      //                 width: 2,
      //               ),
      //             ),
      //             child: Image.asset(
      //               'assets/category_icon.png',
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
