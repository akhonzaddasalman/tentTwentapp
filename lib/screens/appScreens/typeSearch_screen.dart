import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentwentyapp/screens/appScreens/filterd_screen.dart';
import '../../Colors/colors.dart';
import '../../Decorations/decorations.dart';
import '../../Models/movie.dart';
import '../../Widgets/movie_list.dart';
import '../../Widgets/movies_catogory_list.dart';

class TypeSearchScreen extends StatefulWidget {
  const TypeSearchScreen({Key? key}) : super(key: key);

  @override
  State<TypeSearchScreen> createState() => _TypeSearchScreenState();
}

class _TypeSearchScreenState extends State<TypeSearchScreen> {
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
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const FilterdScreen())),
                    maxLines: 1,
                    decoration: appBarTextFieldDecoration(Icons.search_rounded,
                            'TV Shows, movies and more', null)
                        .copyWith(
                            suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.close,
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
                    GridView.count(
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      physics: const PageScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        Movie.movieList.length,
                        (index) => InkWell(
                          onTap: (){},
                          child: MovieCategoryList(
                            image: Movie.movieList[index].movieImage.toString(),
                            title: Movie.movieList[index].movieName.toString(),
                          ),
                        ),
                      ),
                    )
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
