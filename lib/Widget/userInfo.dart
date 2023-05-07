import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/setting.dart/termsOfUse.dart';
import '../model/userprofile.dart';

Widget buildInfo(User user) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "اسم المستخدم:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 2,
          ),
          Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "رقم الهاتف:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "${user.number}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 2,
          ),
          Row(
            children: [
              Icon(
                Icons.supervisor_account_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "نوع الحساب:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                user.type,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 2,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "الموقع:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                user.location,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 2,
          ),
          Row(
            children: [
              Icon(
                Icons.info,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "نبذة:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                user.about,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(
            height: 30,
            thickness: 2,
          ),
          Center(
              child:
                  ElevatedButton(onPressed: () {}, child: Text("تسجيل خروج"))),
          Divider(
            height: 30,
            thickness: 1,
          ),
          Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(TermsOfUse());
                  },
                  child: Text(
                    "سياسة إستخدام التطبيق والشروط",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 10,),
                Text("V1.3.0",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),) ,
              ],
            ),
          ),
        ],
      ),
    );
