import 'package:flutter/material.dart';
import 'package:nesscale_test/core/colors/colors.dart';
import 'package:nesscale_test/core/dimensions/dimensions.dart';
import 'package:nesscale_test/presentation/widgets/custom_textfield.dart';
import 'package:nesscale_test/presentation/widgets/gap.dart';
import 'package:nesscale_test/presentation/utils/extensions.dart';

enum SheetEntryType { customer, item }

class DataEntrySheet extends StatefulWidget {
  const DataEntrySheet({super.key, required this.type});
  final SheetEntryType type;

  @override
  State<DataEntrySheet> createState() => _DataEntrySheetState();
}

class _DataEntrySheetState extends State<DataEntrySheet> {
  late final TextEditingController nameController;
  late final TextEditingController numController;
  late final TextEditingController rateOrEmailController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    nameController = TextEditingController();
    numController = TextEditingController();
    rateOrEmailController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    numController.dispose();
    rateOrEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.9,

      width: double.infinity, padding: AppDimensions.kCommonPadding,
      decoration: BoxDecoration(
        // color: widget.type == SheetEntryType.customer
        //     ? AppColors.bgRed
        //     : AppColors.bgGreen,
        color: AppColors.bottomNavBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add ${widget.type == SheetEntryType.customer ? "Customer" : "Item"}",
              style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.black,
                  fontWeight: AppFontWeight.kMedium),
            ),
            const Gap(H: 40),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                      prefixIcon: Icon(widget.type == SheetEntryType.customer
                          ? Icons.person
                          : Icons.drive_file_rename_outline),
                      validator: (value) {
                        if (widget.type == SheetEntryType.customer) {
                          if (value == null || value.trim().isEmpty) {
                            return "Field Can't be empty";
                          }
                          if (value.length < 3) {
                            return "Name Must be longer than 3 charecters";
                          }
                        } else {
                          if (value == null || value.trim().isEmpty) {
                            return "Field Can't be empty";
                          }
                        }

                        return null;
                      },
                      type: TextInputType.name,
                      controller: nameController,
                      hintText: widget.type == SheetEntryType.customer
                          ? "Customer Name"
                          : "Item Name"),
                  const Gap(H: 20),
                  CustomTextField(
                      prefixIcon: Icon(widget.type == SheetEntryType.customer
                          ? Icons.smartphone
                          : Icons.qr_code),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Field Can't be empty";
                        }
                        if (value.length != 10) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                      type: TextInputType.number,
                      controller: numController,
                      hintText: widget.type == SheetEntryType.customer
                          ? "Mobile Number"
                          : "Item Code"),
                  const Gap(H: 20),
                  CustomTextField(
                      prefixIcon: Icon(widget.type == SheetEntryType.customer
                          ? Icons.email
                          : Icons.attach_money),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Field Can't be empty";
                        }

                        if (widget.type == SheetEntryType.customer) {
                          if (!value.isValidEmail()) {
                            return 'Enter a valid email';
                          }
                        }
                        return null;
                      },
                      type: widget.type == SheetEntryType.customer
                          ? TextInputType.emailAddress
                          : TextInputType.number,
                      controller: rateOrEmailController,
                      hintText: widget.type == SheetEntryType.customer
                          ? "Email Address"
                          : "Item Rate"),
                ],
              ),
            ),
            const Gap(H: 40),
            TextButton.icon(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.darkBlue),
                    foregroundColor:
                        MaterialStateProperty.all(AppColors.white)),
                onPressed: () {
                  _formKey.currentState?.validate();
                },
                icon: const Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 15,
                ),
                label: Text(
                  "Add ${widget.type == SheetEntryType.customer ? "Customer" : "Item"}",
                  style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: AppFontWeight.kSemiBold),
                ))
          ],
        ),
      ),
    );
  }
}
