import 'package:city_way/features/Auth/presentation/widgets/FormSignIn.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return
        /*child: BlocConsumer<SigninBloc, SigninState>(
          listener: (context, State){
            if(State is SuccessState){
              SnackBarMessage().showSuccessSnackBar(message: State.message, context: context);
            }
            else if (State is ErrorState){
              SnackBarMessage().showErrorSnackBar(message: State.message, context: context);
            }
          },
          builder: (context, State){
            //if(State is LoadingState){
              //print("loading");
              //return LoadingWidget();
           // }
            return 
            */
        // Padding(
        //  padding: const EdgeInsets.all(10),
        SingleChildScrollView(child: Stack(children: [FormSignIn()]));
  }
}
