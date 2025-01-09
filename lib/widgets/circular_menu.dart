import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_app/theme/theme.dart';
import 'package:pet_app/widgets/circular_menu_item.dart';

class CircularMenu extends StatefulWidget {
  final String assetIcon;
  final List<CircularMenuItem> items;
  final AlignmentGeometry alignment;
  final double radius;
  final double? startingAngleInRadian;
  final double? endingAngleInRadian;

  const CircularMenu({
    super.key,
    required this.assetIcon,
    required this.items,
    this.alignment = Alignment.bottomCenter,
    this.radius = 100,
    this.startingAngleInRadian,
    this.endingAngleInRadian,
  });

  @override
  _CircularMenuState createState() => _CircularMenuState();
}

class _CircularMenuState extends State<CircularMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double? _completeAngle;
  late double _initialAngle;
  double? _endAngle;
  double? _startAngle;
  late int _itemsCount;
  late Animation<double> _animation;

  void forwardAnimation() {
    _animationController.forward();
  }

  void reverseAnimation() {
    _animationController.reverse();
  }

  @override
  void initState() {
    _configure();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.fastOutSlowIn),
    );
    _itemsCount = widget.items.length;
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _configure() {
    if (widget.startingAngleInRadian != null ||
        widget.endingAngleInRadian != null) {
      if (widget.startingAngleInRadian == null) {
        throw ('startingAngleInRadian can not be null');
      }
      if (widget.endingAngleInRadian == null) {
        throw ('endingAngleInRadian can not be null');
      }
      if (widget.startingAngleInRadian! < 0) {
        throw 'startingAngleInRadian has to be in clockwise radian';
      }
      if (widget.endingAngleInRadian! < 0) {
        throw 'endingAngleInRadian has to be in clockwise radian';
      }
      _startAngle = (widget.startingAngleInRadian! / math.pi) % 2;
      _endAngle = (widget.endingAngleInRadian! / math.pi) % 2;
      if (_endAngle! < _startAngle!) {
        throw 'startingAngleInRadian can not be greater than endingAngleInRadian';
      }
      _completeAngle = _startAngle == _endAngle
          ? 2 * math.pi
          : (_endAngle! - _startAngle!) * math.pi;
      _initialAngle = _startAngle! * math.pi;
    } else {
      switch (widget.alignment) {
        case Alignment.bottomCenter:
          _completeAngle = 1 * math.pi;
          _initialAngle = 1 * math.pi;
          break;
        case Alignment.topCenter:
          _completeAngle = 1 * math.pi;
          _initialAngle = 0 * math.pi;
          break;
        case Alignment.centerLeft:
          _completeAngle = 1 * math.pi;
          _initialAngle = 1.5 * math.pi;
          break;
        case Alignment.centerRight:
          _completeAngle = 1 * math.pi;
          _initialAngle = 0.5 * math.pi;
          break;
        case Alignment.center:
          _completeAngle = 2 * math.pi;
          _initialAngle = 0 * math.pi;
          break;
        case Alignment.bottomRight:
          _completeAngle = 0.5 * math.pi;
          _initialAngle = 1 * math.pi;
          break;
        case Alignment.bottomLeft:
          _completeAngle = 0.5 * math.pi;
          _initialAngle = 1.5 * math.pi;
          break;
        case Alignment.topLeft:
          _completeAngle = 0.5 * math.pi;
          _initialAngle = 0 * math.pi;
          break;
        case Alignment.topRight:
          _completeAngle = 0.5 * math.pi;
          _initialAngle = 0.5 * math.pi;
          break;
        default:
          throw 'startingAngleInRadian and endingAngleInRadian can not be null';
      }
    }
  }

  void _toggle() {
    _animationController.status == AnimationStatus.dismissed
        ? (_animationController).forward()
        : (_animationController).reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ..._buildOptions(),
        Positioned.fill(
          child: Align(
            alignment: widget.alignment,
            child: FloatingActionButton(
              onPressed: _toggle,
              backgroundColor: ThemeColors.eerieBlack,
              shape: CircleBorder(),
              elevation: 0,
              highlightElevation: 0,
              child: SvgPicture.asset(widget.assetIcon,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildOptions() {
    List<Widget> items = [];
    widget.items.asMap().forEach((index, item) {
      items.add(
        Positioned.fill(
          child: Align(
            alignment: widget.alignment,
            child: Transform.translate(
              offset: Offset.fromDirection(
                  _completeAngle == (2 * math.pi)
                      ? (_initialAngle +
                          (_completeAngle! / (_itemsCount)) * index)
                      : (_initialAngle +
                          (_completeAngle! / (_itemsCount - 1)) * index),
                  _animation.value * widget.radius),
              child: Transform.scale(
                scale: _animation.value,
                child: Transform.rotate(
                  angle: _animation.value * (math.pi * 2),
                  child: item,
                ),
              ),
            ),
          ),
        ),
      );
    });
    return items;
  }
}
