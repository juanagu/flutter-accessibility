import 'package:accessibilityapp/features/testing_tools/accessibility_info_view_dto.dart';
import 'package:flutter/material.dart';

class AccessibilityInfoFakeRepository {
  List<AccessibilityInfoViewDto> getAll() {
    return [
      AccessibilityInfoViewDto(
        'Large fonts',
        'Font sizes are calculated automatically by Flutter based on the OS setting.',
        Icons.format_color_text,
        'https://drive.google.com/file/d/1FMtNa8iJDi68jlZBg3o6ZJk7pwv-XWOq/view?usp=sharing',
      ),
      AccessibilityInfoViewDto(
        'Sufficient contrast',
        '4.5:1 for small text (below 18 point regular or 14 point bold) and 3.0:1 for large text (18 point and above regular or 14 point and above bold)',
        Icons.font_download,
        '',
        route: 'contrastsamples',
      ),
      AccessibilityInfoViewDto(
        'Screen readers',
        'Communicate spoken feedback about UI contents e.g: TalkBack, VoiceOver.',
        Icons.chrome_reader_mode,
        'https://drive.google.com/file/d/1y0H3WU-2KPWPVxm9_7gKREicR729S-Oq/view?usp=sharing',
      ),
      AccessibilityInfoViewDto(
        'Screen readers improve navigation',
        'Turn on VoiceOver or TalkBack on your device and navigate around your app. If you run into any issues, use the Semantics widget to customize the accessibility experience of your app.',
        Icons.chrome_reader_mode,
        'https://drive.google.com/file/d/14TI4Wztz3Nyq2FnFAS9Vgf-mLV3p06Xk/view?usp=sharing',
      ),
      AccessibilityInfoViewDto(
        'Accessibility Scanner (Android)',
        'Accessibility Scanner is a tool that suggests accessibility improvements for Android apps without requiring technical skills',
        Icons.accessibility,
        'https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor&hl=en',
      ),
      AccessibilityInfoViewDto(
        'Accessibility Scanner: Scanning',
        '',
        Icons.scanner,
        'https://drive.google.com/file/d/1rT_bJYenZUHPgVFv2l1Vg-ktTTexx3-D/view?usp=sharing',
      ),
      AccessibilityInfoViewDto(
        'Accessibility Scanner: Scanning results',
        '',
        Icons.format_list_numbered,
        'https://drive.google.com/file/d/1KDxihEoqKIOdlszsKIP37nIsi1nkhSky/view?usp=sharing',
      ),
      AccessibilityInfoViewDto(
        'Lighthouse (Chrome)',
        'Lighthouse is an open-source, automated tool for improving the quality of web pages. You can run it against any web page, public or requiring authentication. It has audits for performance, accessibility, progressive web apps, SEO and more.',
        Icons.web,
        'https://drive.google.com/file/d/1fEziOn5N5ZJPrU5olEVct5o0w1KrfLsQ/view?usp=sharing',
      ),
    ];
  }
}
