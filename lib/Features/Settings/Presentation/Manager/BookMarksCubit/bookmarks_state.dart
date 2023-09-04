part of 'bookmarks_cubit.dart';

@immutable
abstract class BookmarksState {}

class BookmarksInitial extends BookmarksState {}
class SessionsBookmarksState extends BookmarksState {}
class EventsBookmarksState extends BookmarksState {}
class ExhibitorsBookmarksState extends BookmarksState {}
