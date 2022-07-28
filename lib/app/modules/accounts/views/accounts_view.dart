import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:paymentmanagement/app/routes/app_pages.dart';

import '../controllers/accounts_controller.dart';

class AccountsView extends GetView<AccountsController> {
  const AccountsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts Overview'),
        centerTitle: true,
        // actions: [Icon(Icons.sort)],
      ),
      body: Obx(() => controller.accountloading.value
          ? const Text("Loading")
          : controller.accounts.isEmpty
              ? const Text("No accounts")
              : SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 60,
                            width: 120,
                            child: PopupMenuButton(
                                child: Center(child: const Text("Filter By")),
                                itemBuilder: (_) => [
                                      PopupMenuItem(
                                        onTap: () {
                                          controller.accounts.clear();
                                          controller.accounts.addAll(controller
                                              .allAccounts
                                              .where((p0) =>
                                                  p0['externallyManaged'] ==
                                                  false));
                                        },
                                        child: const Text('Internally Managed'),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {
                                          controller.accounts.clear();
                                          controller.accounts.addAll(controller
                                              .allAccounts
                                              .where((p0) =>
                                                  p0['externallyManaged'] ==
                                                  true));
                                        },
                                        child: const Text('Externally Managed'),
                                      ),
                                    ]),
                          ),
                        ),
                        ...controller.accounts
                            .map((element) => SizedBox(
                                  width: double.infinity,
                                  child: InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.TRANSITION,
                                            arguments: element["id"]);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(element['id'].toString()),
                                          Text(element['name'].toString()),
                                          Text(element['createdAt'].toString()),
                                          Text(element['amount'].toString()),
                                          Text(element['externallyManaged']
                                              .toString()),
                                          const Text('Last Transaction'),
                                          // Text(element['resultingAmount'].toString()),
                                          ...element['transactions'].map((e) =>
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(e['detailJson']['tags']
                                                          [0]
                                                      .toString()),
                                                  Text(e['amount'].toString()),
                            
                                                  // Text(e['createdAt'])
                                                ],
                                              )),
                                          const SizedBox(
                                            height: 20,
                                          )
                                          // Text(element['name'].toString()),
                                          // ...element['transactions'].map((e) => Text(
                                          //     e['detailJson']['tags'].toString() +
                                          //         '\n' +
                                          //         e["amount"].toString())),
                                        ],
                                      )),
                                ))
                            .toList(),
                      ]),
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(
            Routes.ADD_ACCOUNT,
          );
        },
        tooltip: 'Add Account',
        child: const Icon(Icons.add),
      ),
    );
  }
}
