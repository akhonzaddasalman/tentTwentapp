import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentwentyapp/Widgets/filterd_list.dart';
import 'package:tentwentyapp/screens/appScreens/movieDetail_screen.dart';
import '../../Colors/colors.dart';
import '../../Decorations/decorations.dart';
import '../../Models/movie.dart';
import '../../Widgets/movie_list.dart';
import '../../Widgets/movies_catogory_list.dart';

class FilterdScreen extends StatefulWidget {
  const FilterdScreen({Key? key}) : super(key: key);

  @override
  State<FilterdScreen> createState() => _FilterdScreenState();
}

class _FilterdScreenState extends State<FilterdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(''),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Card(
                  semanticContainer: true,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0.r),
                  ),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: appBarTextFieldDecoration(Icons.search_rounded,
                        'TV Shows, movies and more', null)
                        .copyWith(
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.cancel,
                            color: kIconSearchColor,
                          ),
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                          },
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.h,
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Movie.movieList.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const MovieDetailScreen())),
                        child: FilterdList(
                          name:
                          Movie.movieList[index].movieName.toString(),
                          category: Movie.movieList[index].movieId
                              .toString(),
                          image:
                          Movie.movieList[index].movieImage
                              .toString(),
                          index: index,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
