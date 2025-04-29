import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../domain/entities/slider_entity.dart';

class CustomHomeBodyColumnBetter extends StatefulWidget {
  final List<SliderEntity> sliderList;
  const CustomHomeBodyColumnBetter({super.key, required this.sliderList});

  @override
  State<CustomHomeBodyColumnBetter> createState() =>
      _CustomHomeBodyColumnBetterState();
}

class _CustomHomeBodyColumnBetterState
    extends State<CustomHomeBodyColumnBetter> {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Text(
                'القيمة الأفضل',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              Text(
                'أعلي المبيعات',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    'assets/arrow-removebg-preview.png',
                    width: 15,
                    color: Colors.grey.shade600,
                  ),
                  Text(
                    'مشاهدة الكل',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: widget.sliderList.length,
          options: CarouselOptions(
            height: 110,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged:
                (index, reason) => setState(() {
                  currentIndex = index;
                }),
          ),
          itemBuilder: (
            BuildContext context,
            int itemIndex,
            int pageViewIndex,
          ) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.network(
                    'https://master-market.masool.net/uploads/${widget.sliderList[itemIndex].img}',
                    fit: BoxFit.contain,
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
              ),
            );
          },
        ),
        SizedBox(height: 10.h),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: widget.sliderList.length,
          effect: WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Colors.black,
            dotColor: Colors.grey.shade500,
          ),
          onDotClicked: (index) {
            carouselController.animateToPage(index);
          },
        ),
      ],
    );
  }
}
