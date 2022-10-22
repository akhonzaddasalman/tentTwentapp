// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Models/movie.dart';
import '../../Models/movie_model.dart';
import '../../Widgets/movie_list.dart';
import '../../components/home_screen_appbar.dart';
import 'package:http/http.dart'as http;
class WatchScreen extends StatefulWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: const HomeScreenAppBar(),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: Movie.movieList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: MovieList(
                  image: Movie.movieList[index].movieImage.toString()
                      .toString(),
                  title: Movie.movieList[index].movieName.toString()
                      .toString(),
                ),
              ),
            )
              ),
            )
          ],
        ),
      ),
    );
  }
}
