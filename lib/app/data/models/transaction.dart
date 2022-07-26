// To parse this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

Transaction transactionFromJson(String str) =>
    Transaction.fromJson(json.decode(str));

String transactionToJson(Transaction data) => json.encode(data.toJson());

class Transaction {
  Transaction({
    this.id,
    this.promise,
    this.bankName,
    this.promiseType,
    this.chequeNumber,
    this.bounceNo,
    this.amount,
    this.promisedDate,
    this.user,
    this.party,
    this.incoming,
    this.isprocessing = true,
    this.uploadPath,
  });

  int? id;
  String? promise;
  String? bankName;
  String? promiseType;
  int? chequeNumber;
  int? bounceNo;
  int? amount;
  String? promisedDate;
  String? user;
  bool? incoming;
  String? party;
  bool? isprocessing;
  List<dynamic>? uploadPath;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        promise: json["promise"],
        bankName: json["bankName"],
        promiseType: json["promiseType"],
        chequeNumber:
            json["cheque_number"],
        bounceNo: json["bounce_no"],
        amount: json["amount"],
        promisedDate:
            json["promised_date"],
        user: json["user"],
        incoming: json["incoming"] ?? true,
        party: json['party'],
        isprocessing:
            json["isprocessing"] ?? true,
        uploadPath: json["upload_path"] == null
            ? null
            : List<dynamic>.from(json["upload_path"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "promise": promise,
        "bankName": bankName,
        "promiseType": promiseType,
        "cheque_number": chequeNumber,
        "bounce_no": bounceNo,
        "amount": amount,
        "promised_date": promisedDate,
        "user": user,
        "incoming": incoming,
        "isprocessing": isprocessing,
        "party": party,
        "upload_path": uploadPath == null
            ? []
            : List<String>.from(uploadPath!.map((x) => x)),
      };
}

enum PromiseType { CHEQUE, CASH, WALLET, UNKNOWN }

var userData = [
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "2022-02-03",
    "user": "Josh",
    "incoming": true,
    "isprocessing": null,
    "party": "Joe",
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "NIC Asia",
    "promiseType": "CHEQUE",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Himalayan",
    "promiseType": "CHEQUE",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Everest",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Rastiya Badjya",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Himalayan",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Himalayan",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
  {
    "id": 1,
    "promise": "User Promise",
    "bankName": "Himalayan",
    "promiseType": "CASH",
    "cheque_number": 123,
    "bounce_no": 0,
    "amount": 40000,
    "promised_date": "4",
    "user": "Joe",
    "incoming": true,
    "isprocessing": null,
    "party": null,
    "upload_path": [
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
      "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
    ]
  },
];
getPendingTransaction() {
  return userData.where((element) => element['isprocessing'] == true);
}

getOutgoingTransaction() {
  return userData.where((element) => element['isprocessing'] == true);
}

getIncomingTransaction() {
  return userData.where((element) => element['incoming'] == true);
}

getHistory() {
  return userData.where((element) => element['user'] == 'Josh');
}

List<Transaction> staticData = [
  Transaction(
      id: 1,
      promise: "User Promise",
      promiseType: "CASH",
      bounceNo: 0,
      promisedDate: DateTime.april.toString(),
      amount: 40000,
      chequeNumber: 123,
      isprocessing: false,
      user: 'Joe',
      uploadPath: [
        "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg",
        "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg"
      ]),
  Transaction(
      id: 2,
      promise: 'UserPromise2',
      promiseType: "CHEQUE",
      bounceNo: 0,
      promisedDate: DateTime.april.toString(),
      amount: 40000,
      isprocessing: true,
      uploadPath: [
        'https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg',
        'https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/01/troubleshooting-flowchart.jpg'
      ]),
];
