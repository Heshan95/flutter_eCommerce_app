import 'package:ecommerce_application_2024/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';


class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomscurvedEdges(),
      child: child,
    );
  }
}