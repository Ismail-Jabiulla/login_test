import 'package:flutter/material.dart';
import 'package:w_day10/constants/colors.dart';

class HomaPageScreen extends StatelessWidget {
  const HomaPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBlack01,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.colorWhiteHighEmp,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: AppColors.colorWhiteHighEmp,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.green,
                    height: 120,
                    width: 120,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 105,
                            width: 105,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                                child: Image.asset('assets/images/profile.png')
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColors.colorPink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset(
                              'assets/images/icons/edit.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Mahmud Saimon',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorPink),
                    ),
                  ),
                  const Text(
                    'user@website.com',
                    style: TextStyle(
                        fontSize: 16, color: AppColors.colorWhiteHighEmp),
                  ),
                ],
              ),

              //Edit profile
              GestureDetector(
                onTap: () {
                  editProfile();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: AppColors.colorWhiteHighEmp,
                                ),
                              ),
                              Text(
                                'You can edit your profile details here',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/edit.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Contribute
              GestureDetector(
                onTap: () {
                  contribute();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contributor',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'All your creativity pays you of',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/money.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Subscription
              GestureDetector(
                onTap: () {
                  subscription();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Subscription',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Subscribe for Add Block.',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/wallet-2.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Security
              GestureDetector(
                onTap: () {
                  security();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Security',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Check out the details here',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/icons/shield-security.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Language
              GestureDetector(
                onTap: () {
                  language();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Language',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'You can change language',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/icons/language-square.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //About
              GestureDetector(
                onTap: () {
                  about();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Know more about the app',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/information.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Logout
              GestureDetector(
                onTap: () {
                  logOut();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                  child: Container(
                    height: 97,
                    width: 382,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackcontainer,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Logout',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Logout your app',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.colorWhiteHighEmp,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 16.0, bottom: 16.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icons/logout.png')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void editProfile() {
    print("hghghgg");
  }

  void contribute() {
    print('Contribute');
  }

  void subscription() {
    print('Subscription');
  }

  void security() {
    print('Security');
  }

  void language() {
    print('Language');
  }

  void about() {
    print('About');
  }

  void logOut() {
    print('Logout');
  }
}
