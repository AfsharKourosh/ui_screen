import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? controller;
  List<CameraDescription>? cameras;
  bool isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    cameras = await availableCameras();
    if (cameras != null && cameras!.isNotEmpty) {
      // انتخاب دوربین جلو
      final frontCamera = cameras!.firstWhere(
            (c) => c.lensDirection == CameraLensDirection.front,
        orElse: () => cameras!.first,
      );
      controller = CameraController(frontCamera, ResolutionPreset.medium, enableAudio: false);
      await controller!.initialize();
      if (!mounted) return;
      setState(() => isInitialized = true);
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isInitialized && controller != null
        ? CameraPreview(controller!)
        : const Center(child: CircularProgressIndicator());
  }
}
