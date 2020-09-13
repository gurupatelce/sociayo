import 'package:base_test/app/locator.dart';
import 'package:base_test/utils/constants.dart';
import 'package:base_test/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

enum DialogType { base, form }

void setUpDialogUi() {
  final dialogService = locator<DialogService>();
  dialogService.registerCustomDialogBuilder(
    variant: DialogType.base,
    builder: ((context, request) => Dialog(
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            margin: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      request.title,
                      style: TextStyle(
                        color: ColorConstants.colorGrey,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: BaseButton(
                      title: 'OK',
                      width: 120,
                      showLeftIcon: false,
                      buttonAction: () {
                        dialogService
                            .completeDialog(DialogResponse(confirmed: true));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
  );
}
