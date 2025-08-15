import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_15/form.dart';
import 'package:ppkd_batch_3/Day_16/model/tiket.dart';
import 'package:ppkd_batch_3/Day_16/sqflite/db_helper.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController judulFilmController = TextEditingController();
  final TextEditingController jumlahTiketController = TextEditingController();

  bool isVisibility = false;
  bool isLoading = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [buildBackground(), buildLayer()]));
  }

  void registerUser() async {
    isLoading = true;
    setState(() {});
    final nama = namaController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final phone = phoneController.text.trim();
    final judulFilm = judulFilmController.text.trim();
    final jumlahTiket = jumlahTiketController.text.trim();
    if (nama.isEmpty || email.isEmpty || phone.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Nama dan email tidak boleh kosong")),
      );
      isLoading = false;

      return;
    }
    final user = Tiket(
      nama: nama,
      email: email,
      phone: phone,
      password: password,
      judulFilm: judulFilm,
      jumlahTiket: jumlahTiket,
    );
    await DbHelper.registerUser(user);
    Future.delayed(const Duration(seconds: 1)).then((value) {
      isLoading = false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Pendaftaran berhasil")));
    });
    setState(() {});
    isLoading = false;
  }

  SafeArea buildLayer() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          // key: _formKey,
          child: Column(
            spacing: 12,
            children: [
              Text(
                "Daftar Account",
                style: TextStyle(fontFamily: 'Anton', fontSize: 24),
              ),
              // Divider(),
              SizedBox(height: 1),
              Row(
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: namaController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // filled: true,
                  // fillColor: const Color(0xFFFFFFFF),
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'name is required';
                //   }

                //   // if (!value.contains("@")) {
                //   //   return "Email Tidak Valid";
                //   // }
                //   // if (!RegExp(
                //   //   r'^[\w\.-]+@[\w\.-]+\.\w+$',
                //   // ).hasMatch(value)) {
                //   //   return 'Format email tidak valid';
                //   // }
                //   return null;
                // },
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // filled: true,
                  // fillColor: const Color(0xFFFFFFFF),
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Email is Required';
                //   }

                //   if (!value.contains("@")) {
                //     return "Invalid Email";
                //   }
                //   // if (!RegExp(
                //   //   r'^[\w\.-]+@[\w\.-]+\.\w+$',
                //   // ).hasMatch(value)) {
                //   //   return 'Format email tidak valid';
                //   // }
                //   return null;
                // },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // filled: true,
                      // fillColor: const Color(0xFFFFFFFF),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Password wajib diisi';
                    //   }
                    //   if (value.length < 6) {
                    //     return 'Password minimal 6 karakter';
                    //   }
                    //   return null;
                    // },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextFormConst(
                hintText: "Enter your Number Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),

              SizedBox(height: 10),

              // Text(
              //   emailController.text,
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   phoneController.text,
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   nameController.text,
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    isLoading
                        ? null
                        : registerUser(); // context.pushNamed(UserScreen(
                    //    name: namaController.text,
                    //                     email: emailController.text,
                    //                     password: passwordController.text,
                    //                     judulFilm: judulFilmController.text,
                    //                     jumlahTiket: jumlahTiketController.text,
                    // ))
                    // if (_formKey.currentState!.validate()) {
                    //   // Semua validasi lolos
                    //   print('Nama: ${namaController.text}');
                    //   print('Email: ${emailController.text}');
                    //   print('Judul FIlm: ${judulFilmController.text}');
                    //   print('Jumlah Tiket: ${jumlahTiketController.text}');
                    //   // Tambahin logic login lo di sini bro12.3875
                    //   showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         title: Column(
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             Lottie.asset(
                    //               "assets/images/animations/Successful.json",
                    //             ),

                    //             Text("Pemesanan Berhasil!"),
                    //           ],
                    //         ),

                    //         content: Text(
                    //           "Kamu Berhasil Memesan!",
                    //           textAlign: TextAlign.center,
                    //         ),
                    //         actions: [
                    //           SizedBox(
                    //             width: double.infinity,
                    //             child: ElevatedButton(
                    //               onPressed: () {
                    //                 context.push(
                    //                   UserScreen(
                    //                     // name: namaController.text,
                    //                     // email: emailController.text,
                    //                     // password: passwordController.text,
                    //                     // judulFilm: judulFilmController.text,
                    //                     // jumlahTiket: jumlahTiketController.text,
                    //                   ),
                    //                 );
                    //               },
                    //               child: Text(
                    //                 "Next",
                    //                 style: TextStyle(
                    //                   fontFamily: 'Poppins',
                    //                   color: Colors.black,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       );
                    //     },
                    //   );
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color.fromARGB(255, 56, 71, 146),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Daftar",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/foto/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  TextField buildTextField({
    String? hintText,
    bool isPassword = false,
    TextEditingController? controller,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? isVisibility : false,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                icon: Icon(
                  isVisibility ? Icons.visibility_off : Icons.visibility,
                  // color: AppColor.gray88,
                ),
              )
            : null,
      ),
    );
  }

  SizedBox height(double height) => SizedBox(height: height);
  SizedBox width(double width) => SizedBox(width: width);

  Widget buildTitle(String text) {
    return Row(
      children: [
        // Text(text, style: TextStyle(fontSize: 12, color: AppColor.gray88)),
      ],
    );
  }
}
