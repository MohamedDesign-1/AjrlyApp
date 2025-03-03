import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_mananger.dart';
import '../../../../core/utils/styles_manager.dart';

class ItemSwitch extends StatefulWidget {
  final Function(String) onItemChanged;
  final String initialItem;

  const ItemSwitch({
    super.key,
    required this.onItemChanged,
    this.initialItem = 'scooter',
  });

  @override
  State<ItemSwitch> createState() => _ItemSwitchState();
}

class _ItemSwitchState extends State<ItemSwitch> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initialItem;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'اختار نوع الاعلان',
            style: getSemiBoldStyle(color: ColorManager.primary , fontSize: 16.sp),
          ),
        ),
        // Item options
        Row(
          children: [
            // Car option
            Expanded(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: ColorManager.lightgray,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      setState(() {
                        selectedItem = 'car';
                        widget.onItemChanged(selectedItem);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio<String>(
                            value: 'car',
                            groupValue: selectedItem,
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value!;
                                widget.onItemChanged(selectedItem);
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          Text(
                            'عربية',
                            style: getBoldStyle(color: ColorManager.primary , fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Scooter option
            Expanded(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: ColorManager.lightgray,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      setState(() {
                        selectedItem = 'scooter';
                        widget.onItemChanged(selectedItem);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio<String>(
                            value: 'scooter',
                            groupValue: selectedItem,
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value!;
                                widget.onItemChanged(selectedItem);
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          Text(
                            'سكوتر',
                            style: getBoldStyle(color: ColorManager.primary , fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}