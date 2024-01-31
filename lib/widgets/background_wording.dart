import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Theme/app_color.dart';

class BackgroundWording extends StatefulWidget {
  const BackgroundWording({
    Key? key,
    required this.description,
    required this.title,
    this.duration = const Duration(milliseconds: 300),
  }) : super(key: key);
  final String title;
  final String description;
  final Duration duration;
  @override
  State<BackgroundWording> createState() => _BackgroundWordingState();
}

class _BackgroundWordingState extends State<BackgroundWording>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _tween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _tween,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: AppColor.white)),
                    SizedBox(height: 16,),
                     Text(widget.description,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColor.white)),
          ],
        ),
      ),
    );
  }
}
