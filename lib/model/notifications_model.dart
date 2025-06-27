class NotificationsModel {
  final String title;
  final String image;
  final DateTime date;
  final bool isRead;
  NotificationsModel(this.isRead,
      {required this.title, required this.image, required this.date});
}
