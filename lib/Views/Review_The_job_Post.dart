import 'package:flutter/material.dart';
import 'package:interns/Pop_Ups/For_Add_Phone_Number7.dart';
import 'package:interns/Pop_Ups/JobTitle_Pop_Up.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Button.dart';
import 'package:interns/Views/Edit_Icon_Review_class_post.dart';
import 'package:interns/Views/Review_job_Post_text_Widget.dart';
import 'package:interns/Views/Review_job_SmallContainer_Text.dart';
import 'package:interns/Views/container_with-image.dart';
import '../Pop_Ups/Advertising_Location_Pop_Up.dart';
import '../Pop_Ups/Application_Deadline2_Pop_Up.dart';
import '../Pop_Ups/Application_Deadline_Pop_Up.dart';
import '../Pop_Ups/Cv_required_Pop_up.dart';
import '../Pop_Ups/Edit_The_JobDescription_Pop_Up.dart';
import '../Pop_Ups/Expect_to_hire_within_Pop-Up.dart';
import '../Pop_Ups/Expected-start-Date-Pop-UP.dart';
import '../Pop_Ups/FirstName_LastName_Pop_UP.dart';
import '../Pop_Ups/How_you_heared_About_interns.pk.dart';
import '../Pop_Ups/Job-Type.dart';
import '../Pop_Ups/Number_for_Opening_this_position.dart';

import '../Pop_Ups/Number_of_employees_at_your_company.dart';
import '../Pop_Ups/Pay_Rate_or_Range_Pop_Up.dart';
import '../Pop_Ups/Select_Country_Languages_Pop_UP.dart';
import '../Pop_Ups/Send_Daily_Updates_applications.dart';
import 'Back_Icon_Container.dart';
import 'package:auto_size_text/auto_size_text.dart';

var items1 = [
  '1',
  '3 to 5',
  '5 to 7',
  '7 to 9',
  '9 to 11',
];
String? dropdownvalue;


class ReviewjobPost extends StatefulWidget {
  const ReviewjobPost({Key? key}) : super(key: key);
  @override
  State<ReviewjobPost> createState() => _ReviewjobPostState();
}

class _ReviewjobPostState extends State<ReviewjobPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Containar(
                      image: 'assets/images/Review.jpg',
                      BottomLeftCirculer: 25,
                      BottomRightCirculer: 25,
                      TopLeftCirculer: 25,
                      TopRightCirculer: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    left: 25,
                  ),
                  child: TextForContainer(
                    text: "Review the job post",
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5, top: 20),
                child: Container(
                  height: 1000,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      )),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 10, right: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Software Developer",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            IconButtonforReviewjob(
                              onTap: () {
                                SimplePopUp.Dialogue(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Syntaxroot",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            IconButtonforReviewjob(
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Lahore",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            IconButtonforReviewjob(
                              onTap: () {},
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 12, top: 17),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ReviewJobPostBigTextWidget(
                          Bigtext: "Job details",
                        ),
                        const SizedBox(height: 10),
                        ReviewJobPostTextWidget(text: "Pay", OnTap: () {
                          PayRateRangePopUp.Dialogue(context);
                        }),
                        const SizedBox(
                          height: 3,
                        ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "PKR30,000:00-PKR50,000.00 per month",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        ReviewJobPostTextWidget(text: "Job Type", OnTap: () {

                          JobType.Dialogue(context);
                        }),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Full-time",
                              style: TextStyle(color: Colors.black87),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ReviewJobPostTextWidget(
                            text: "Number of openings for this position",
                            OnTap: () {
                            NumberforOpeningthisPosition.Dialogue(context);
                            }),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.black87),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ReviewJobPostTextWidget(
                            text: "Expected start date", OnTap: () {


                          ExpectedStartDate.Dialogue(context);
                        }),
                        const Padding(
                          padding: EdgeInsets.only(right: 12, top: 25),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black45,
                          ),
                        ),
                        Row(
                          children: [
                            ReviewJobPostBigTextWidget(
                              Bigtext: "Job description",
                            ),
                            IconButtonforReviewjob(
                              onTap: () {

                                EditThejobDescription.Dialogue(context);
                              },
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                "This is the job description. Because this is the job description.in job description we describe the detail of the job.",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16))),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                            height: 370,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.3),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/mapimage.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(19),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: Row(children: [
                                    const Text(
                                      "Lahore",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButtonforReviewjob(onTap: () {}),
                                  ]),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5, top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  height: 1390,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 35),
                    child: Column(
                      children: [
                        ReviewJobPostBigTextWidget(
                            Bigtext: 'Application settings'),
                        const SizedBox(
                          height: 7,
                        ),
                        ReviewJobPostTextWidget(
                            text: "Application method", OnTap: () {}),
                        SmallContainerText(
                          smallcontainerText: "Email",
                        ),
                        ReviewJobPostTextWidget(
                            text: "CV required", OnTap: () {
                          CvRequiredPopUp.Dialogue(context);
                        }),
                        SmallContainerText(
                          smallcontainerText: "Optional",
                        ),
                        ReviewJobPostTextWidget(
                            text: "Send application updates to", OnTap: () {

                          SendDailyUpDates.Dialogue(context);
                        }),
                        SmallContainerText(
                          smallcontainerText: "usmantech12@gmail.com",
                        ),
                        DoubleLineSmallContainerText(
                          DoubleLineText:
                              'Also send an individual email update each time someone applies.',
                        ),
                        ReviewJobPostTextWidget(
                            text: "Allow messages", OnTap: () {}),
                        DoubleLineSmallContainerText(
                          DoubleLineText:
                              'Yes, let people who\'ve applied to the job send messages about their application',
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Application deadline', OnTap: (){


                          ApplicationDeadlinePopup.Dialogue(context);
                        }),
                        SmallContainerText(smallcontainerText: 'No'),
                        const SizedBox(
                          height: 12,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Employer Assist', OnTap: () {}),
                        DoubleLineSmallContainerText(
                            DoubleLineText:
                                'Yes, automatically decline candidates after 14 days'),
                        const SizedBox(
                          height: 12,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Customised pre-screening', OnTap: () {}),
                        DoubleLineSmallContainerText(
                            DoubleLineText:
                                'Application question: Will you be  able to reliably commute or relocate to Lahore for this job?(deal breaker)'),
                        DoubleLineSmallContainerText(
                            DoubleLineText:
                                'Application question: Please list 2-3 dates and time ranges that you could do an interview.'),
                        const SizedBox(
                          height: 22,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ReviewJobPostBigTextWidget(Bigtext: 'Job settings'),
                        const SizedBox(
                          height: 7,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Country and language', OnTap: () {

                          SelectLanguageAndCountry.Dialogue(context);
                        }),
                        SmallContainerText(smallcontainerText: "Pakistan"),
                        SmallContainerText(smallcontainerText: "English"),
                        const SizedBox(
                          height: 20,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Advertising location', OnTap: () {

                          AdvertisingLocationPopUp.Dialogue(context);
                        }),
                        SmallContainerText(smallcontainerText: "Lahore"),
                        const SizedBox(
                          height: 20,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Expect to hire within', OnTap: () {
                          ExpectToHireWithin.Dialogue(context);
                        }),
                        SmallContainerText(smallcontainerText: "1 to 3 days"),
                        const SizedBox(
                          height: 22,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Divider(
                            height: 22,
                            thickness: 2,
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ReviewJobPostBigTextWidget(Bigtext: 'Account settings'),
                        const SizedBox(
                          height: 10,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Company name', OnTap: () {

                          ApplicationDeadline2.Dialogue(context);
                        }),
                        SmallContainerText(smallcontainerText: 'Syntaxroot'),
                        ReviewJobPostTextWidget(
                            text: 'Number of employees at your\ncompany',
                            OnTap: () {
                              NumerOfEmployeesAtYourCompany.Dialogue(context);
                            }),
                        const SizedBox(
                          height: 5,
                        ),
                        SmallContainerText(smallcontainerText: '1 to 49'),
                        const SizedBox(
                          height: 15,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'Your first and last name', OnTap: () {

                          FirstNameLastNamePopUp.Dialogue(context);
                        }),
                        const SizedBox(
                          height: 5,
                        ),
                        SmallContainerText(smallcontainerText: 'Usman'),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 145,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.3),
                                    width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.visibility_off,
                                          color: Colors.grey.shade600,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 12),
                                          child: Text(
                                            "Phone number was not provided.",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 55, top: 20),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {

                                            ForAddPhoneNumberPopUp.Dialogue(context);
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: appcolors.greenishText,
                                            size: 32,
                                          )),
                                      const Text(
                                        "Add",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: appcolors.greenishText),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        ReviewJobPostTextWidget(
                            text: 'How you heared about Interns.pk', OnTap: () {
                          HowYouHearedAboutInterns.Dialogue(context);

                        }),
                        SmallContainerText(smallcontainerText: 'Online video'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12, right: 5, top: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    height: 200,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 12, right: 12),
                      child: Column(
                        children: [
                          const AutoSizeText(
                              'By pressing confirm, you agree that this job will be posted and applications will be processed in accordance with Indeed\'s ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Row(
                              children: const [
                                Text(
                                  "Cookie Policy",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Text(
                                  ",",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Text(
                                  "and",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              "Terms of Service.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 5, top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  height: 210,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            child: Elevatedbutton('Confirm', () {

                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 27),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Show preview",
                          style: TextStyle(
                              fontSize: 18,
                              color: appcolors.greenishText,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Back(),
                      ),
                      //
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
