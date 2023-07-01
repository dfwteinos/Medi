import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Εγγραφή",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text(
                "Συμπληρώστε τα στοιχεία σας",
              ),
              Spacer(),
              CustomTextInput(hintText: "Όνομα"),
              Spacer(),
              CustomTextInput(hintText: "Ηλεκτρονική διεύθυνση"),
              Spacer(),
              CustomTextInput(hintText: "Κινητό τηλέφωνο"),
              Spacer(),
              CustomTextInput(hintText: "Διεύθυνση"),
              Spacer(),
              CustomTextInput(hintText: "Κωδικός"),
              Spacer(),
              CustomTextInput(hintText: "Επιβεβαίωση κωδικού"),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Εγγραφή"),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Έχετε ήδη λογαριασμό?"),
                    SizedBox(width: 5),
                    Text(
                      "Σύνδεση",
                      style: TextStyle(
                        color: AppColor.darkblue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
