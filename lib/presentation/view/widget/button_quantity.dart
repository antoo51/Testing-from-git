import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/colors.dart';

class QuantityButton extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int> onChanged;

  const QuantityButton({
    Key? key,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  late int _quantity;

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _quantity++;
      widget.onChanged(_quantity);
    });
  }

  void _decrement() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
        widget.onChanged(_quantity);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width < 400 ? 80.0 : 120.0,
      height: width < 400 ? 25.0 : 36.0,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: _decrement,
            child: Container(
              width: width < 400 ? 25.0 : 36.0,
              height: width < 400 ? 25.0 : 36.0,
              decoration: BoxDecoration(
                color: Palette.grey.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: width < 400 ? 13.0 : 20.0,
                height: width < 400 ? 13.0 : 20.0,
                decoration: BoxDecoration(
                  color: Palette.white,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.remove,
                  color: Palette.grey.withOpacity(0.8),
                  size: width < 400 ? 10 : 16,
                ),
              ),
            ),
          ),
          Text(
            '$_quantity',
            style: TextStyle(
              fontSize: width < 400 ? 10 : 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          InkWell(
            onTap: _increment,
            child: Container(
              width: width < 400 ? 25.0 : 36.0,
              height: width < 400 ? 25.0 : 36.0,
              decoration: BoxDecoration(
                color: Palette.pinkFgradient,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: width < 400 ? 13.0 : 20.0,
                height: width < 400 ? 13.0 : 20.0,
                decoration: BoxDecoration(
                  color: Palette.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Palette.pinkFgradient,
                  size: width < 400 ? 10 : 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
