import 'package:daily_you/l10n/generated/app_localizations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Vietnamese localizations load and contain accurate translations',
      (tester) async {
    expect(AppLocalizations.delegate.isSupported(const Locale('vi')), isTrue);

    final l10n = await AppLocalizations.delegate.load(const Locale('vi'));

    // Navigation and core screens
    expect(l10n.pageHomeTitle, equals('Trang chủ'));
    expect(l10n.flashbacksTitle, equals('Hồi tưởng'));
    expect(l10n.flashbackOnThisDay, equals('Ngày này năm xưa'));
    expect(l10n.pageGalleryTitle, equals('Thư viện'));
    expect(l10n.pageStatisticsTitle, equals('Thống kê'));
    expect(l10n.pageSettingsTitle, equals('Cài đặt'));
    expect(l10n.pageCalendarTitle, equals('Lịch'));

    // Action strings
    expect(l10n.actionTakePhoto, equals('Chụp ảnh'));
    expect(l10n.actionTakeVideo, equals('Quay video'));
    expect(l10n.actionRecordAudio, equals('Ghi âm'));
    expect(l10n.actionToday, equals('Hôm nay'));

    // Default seeded tags
    expect(l10n.tagFavoriteName, equals('Yêu thích'));
    expect(l10n.tagEnergyName, equals('Năng lượng'));
    expect(l10n.tagCategoryEmotionsName, equals('Cảm xúc'));
    expect(l10n.tagCalmName, equals('Bình yên'));

    // Welcome log
    expect(l10n.welcomeLogBodyText.contains('Chào mừng bạn đến với Daily You'), isTrue);

    // Plural formatting
    expect(l10n.logCount(1), equals('1 nhật ký'));
    expect(l10n.logCount(5), equals('5 nhật ký'));
    expect(l10n.dayCount(1), equals('1 ngày'));
    expect(l10n.flashbackWeek(3), equals('3 tuần trước'));
    expect(l10n.flashbackMonth(2), equals('2 tháng trước'));
    expect(l10n.flashbackYear(1), equals('1 năm trước'));

    // Notifications & Backup
    expect(l10n.dailyReminderTitle, equals('Ghi chép hôm nay!'));
    expect(l10n.autoBackupFailedTitle, equals('Sao lưu thất bại'));
  });
}
