import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promilo_task/blocs/bottomnav_bloc/bottomnav_bloc.dart';

import '../../utils/bottom_nav.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomnavBloc, BottomnavState>(
      listener: (context, state) {
        if (state.currentIndex == 2) {}
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: bottomNavItems,
                currentIndex: state.currentIndex,
                selectedItemColor: Colors.teal[400],
                unselectedItemColor: Colors.blue[900],
                showUnselectedLabels: true,
                onTap: (index) {
                  context
                      .read<BottomnavBloc>()
                      .add(BottomNavChange(currentIndex: index));
                },
              ),
              body: Center(
                child: bottomNavScreen[state.currentIndex],
              ),
            ),
          ),
        );
      },
    );
  }
}
