class FileFormat {
  final int? fps;
  const FileFormat(this.extension, {this.fps});

  /// Extension of the file without the dot `.`.
  final String extension;
}

/// Specify the file format to use when exporting the video
/// some common formats such as `avi`, `gif`, `mov` and `mp4` has a default constructor.
///
/// If you need another file format you can specify it like
/// ```dart
/// VideoExportFormat('mkv');
/// ```
class VideoExportFormat extends FileFormat {
  const VideoExportFormat(super.extension, {super.fps});

  static const avi = VideoExportFormat('avi');
  static const gif = GifExportFormat();
  static const mov = VideoExportFormat('mov');
  static const mp4 = VideoExportFormat('mp4');
}

/// To export the video as a GIF file
/// You can use this class to custom the [fps] of the exported GIF file.
class GifExportFormat extends VideoExportFormat {

  /// The frame rate of the GIF file.
  ///
  /// Defaults to `10`.
  const GifExportFormat() : super('gif', fps: 10);
}

/// Specify the file format to use when exporting the video cover
/// some common formats such as `jpg`, `png` and `webp` has a default constructor.
///
/// If you need another file format you can specify it like
/// ```dart
/// CoverExportFormat('jpeg');
/// ```
class CoverExportFormat extends FileFormat {
  const CoverExportFormat(super.extension);

  static const jpg = CoverExportFormat('jpg');
  static const png = CoverExportFormat('png');
  static const webp = CoverExportFormat('webp');
}
