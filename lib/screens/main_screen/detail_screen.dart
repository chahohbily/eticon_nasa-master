import 'package:flutter/material.dart';

import '../../models/apod_model.dart';

class DetailScreen extends StatelessWidget {
  final ApodModel apodModel;

  DetailScreen({required this.apodModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${apodModel.camera!.name!} ${apodModel.id}',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: 275,
            width: 420,
            child: Hero(
              tag: apodModel.id.toString(),
              child: Image.network(
                apodModel.imgSrc!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 380,
            height: 100,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Camera Info',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                detailInfo('Id', '${apodModel.camera!.id!}'),
                SizedBox(
                  height: 3,
                ),
                detailInfo(
                    'Full name', '${apodModel.camera!.fullName!}'),
                SizedBox(
                  height: 3,
                ),
                detailInfo(
                    'Rover id', '${apodModel.camera!.roverId!}')
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 15,
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 380,
            height: 125,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Rover Info',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                detailInfo('Name', '${apodModel.rover!.name!}'),
                SizedBox(
                  height: 3,
                ),
                detailInfo('Launch date',
                    '${apodModel.rover!.launchDate!}'),
                SizedBox(
                  height: 3,
                ),
                detailInfo('Landing date',
                    '${apodModel.rover!.landingDate!}'),
                SizedBox(
                  height: 3,
                ),
                detailInfo('Status', '${apodModel.rover!.status!}'),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 15,
                  )
                ]),
          ),
        ],
      ),
    );
  }

  Widget detailInfo(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$description',
          ),
        ],
      ),
    );
  }
}
