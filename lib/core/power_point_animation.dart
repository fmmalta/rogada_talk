import 'package:flutter/material.dart';

class PowerPointAnimation extends StatefulWidget {
  final String title;
  final List<String> topics;
  const PowerPointAnimation({
    required this.title,
    required this.topics,
    super.key,
  });

  @override
  State<PowerPointAnimation> createState() => _PowerPointAnimationState();
}

class _PowerPointAnimationState extends State<PowerPointAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> titleAnimation;
  late List<Animation<Offset>> topicAnimations;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.topics.length),
    );
    titleAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.center,
      end: Alignment.topLeft,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.2, 0.3, curve: Curves.easeInOut),
      ),
    );

    topicAnimations = List.generate(
      widget.topics.length,
      (index) => Tween<Offset>(
        begin: const Offset(-10, 0),
        end: const Offset(0, 0),
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.2 + (index * 0.1),
            0.3 + (index * 0.1),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        AlignTransition(
          alignment: titleAnimation,
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...List.generate(
          widget.topics.length,
          (index) => Positioned(
            top: 100 + (index * 60).toDouble(),
            child: SlideTransition(
              position: topicAnimations[index],
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '- ${widget.topics[index]}',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
