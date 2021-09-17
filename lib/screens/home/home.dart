import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zumarada/bloc/home/bloc.dart';
import 'package:zumarada/bloc/home/states.dart';

class Home extends StatelessWidget {
  // ignore: unused_field
  final List<BottomNavigationBarItem> _kItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
    BottomNavigationBarItem(icon: Icon(Icons.badge), label: 'badge'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomStates>(
          listener: (BuildContext context, Object? state) {},
          builder: (BuildContext context, state) {
            // ignore: unused_local_variable
            var bloc = HomeBloc.get(context);
            return Scaffold(
              body: bloc.kScreen[bloc.tapIndx],
              bottomNavigationBar: BottomNavigationBar(
                  items: _kItems,
                  currentIndex: HomeBloc.get(context).tapIndx,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    bloc.BNBar(index);
                  }),
            );
          }),
    );
  }
}
