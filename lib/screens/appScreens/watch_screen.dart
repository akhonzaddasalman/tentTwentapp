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
  List<MovieModel> movieList = [];

  Future<List<MovieModel>> getMovieApi ()async{
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=4b3b5ba9832a6fb4ded4095a0e5676bf'));
  var data = jsonDecode(response.body.toString());
  if(response.statusCode == 200){
  for(Map i in data){
    movieList.add(MovieModel.fromJson(i));
  }
  return movieList;
  }else{
    return movieList;
  }


  }

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
                child: FutureBuilder(
                  future: getMovieApi(),
                    builder: (context, AsyncSnapshot<List<MovieModel>> snapshot){
                    return ListView.builder(
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
                    );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
