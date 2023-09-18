import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mobile_store/src/features/review/view_model/review_view_model.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../constant/color/color.dart';
import '../../detail_product/bloc/detail_product_bloc.dart';

class ReviewWritten extends StatefulWidget {
  const ReviewWritten({Key? key, required this.productId}) : super(key: key);
  final int productId;

  @override
  State<ReviewWritten> createState() => _ReviewWrittenState();
}

class _ReviewWrittenState extends State<ReviewWritten> {
  final TextEditingController _reviewController = TextEditingController();
  final ReviewViewModel _reviewViewModel = ReviewViewModel();
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Write your review'),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingBar.builder(
              initialRating: rating.toDouble(),
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: kYellow,
              ),
              onRatingUpdate: (value) {
                setState(() {
                  rating = value.toInt();
                });
              },
            ),
            TextFormField(
              maxLines: 5,
              controller: _reviewController,
              decoration: const InputDecoration(hintText: 'Review ...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: const Text('Cancel')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if(rating > 0 && _reviewController.text != ''){
                        bool isSuccess =
                            await _reviewViewModel.createReviewViewModel(
                                widget.productId,
                                _reviewController.text,
                                rating);
                        if (isSuccess) {
                          showTopSnackBar(
                              Overlay.of(context),
                              const CustomSnackBar.success(
                                  message: 'Thanks to review product'));
                          context.read<DetailProductCubit>().reload();
                          Navigator.pop(context);
                        } else {
                          showTopSnackBar(
                              Overlay.of(context),
                              const CustomSnackBar.error(
                                  message: 'Failed to review product'));
                        }
                      }else{
                        showTopSnackBar(
                            Overlay.of(context),
                            const CustomSnackBar.error(
                                message: 'Please fill all field'));
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: const Text('Save')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
