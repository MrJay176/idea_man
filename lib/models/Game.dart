
import 'Broadcast.dart';
import 'GameMedia.dart';
import 'HomeRuns.dart';
import 'LineScore.dart';
import 'Links.dart';
import 'Pitcher.dart';
import 'StatusClass.dart';
import 'VideoThumbnails.dart';
import 'enum.dart';

class Game {

  Game({
    this.links,
    this.broadcast,
    this.status,
    this.homeRuns,
    this.linescore,
    this.winningPitcher,
    this.losingPitcher,
    this.savePitcher,
    this.videoThumbnail,
    this.videoThumbnails,
    this.gameMedia,
    this.id,
    this.gamePk,
    this.venue,
    this.originalDate,
    this.resumeDate,
    this.time,
    this.timeDate,
    this.timeDateAwLg,
    this.timeDateHmLg,
    this.timeZone,
    this.ampm,
    this.firstPitchEt,
    this.awayTime,
    this.awayTimeZone,
    this.awayAmpm,
    this.homeTime,
    this.homeTimeZone,
    this.homeAmpm,
    this.gameType,
    this.tiebreakerSw,
    this.timeZoneAwLg,
    this.timeZoneHmLg,
    this.timeAwLg,
    this.awLgAmpm,
    this.tzAwLgGen,
    this.timeHmLg,
    this.hmLgAmpm,
    this.tzHmLgGen,
    this.venueId,
    this.statsSeason,
    this.scheduledInnings,
    this.description,
    this.series,
    this.serHomeNbr,
    this.seriesNum,
    this.serGames,
    this.homeNameAbbrev,
    this.homeCode,
    this.homeFileCode,
    this.homeTeamId,
    this.homeTeamCity,
    this.homeTeamName,
    this.homeDivision,
    this.homeLeagueId,
    this.homeSportCode,
    this.awayNameAbbrev,
    this.awayCode,
    this.awayFileCode,
    this.awayTeamId,
    this.awayTeamCity,
    this.awayTeamName,
    this.awayDivision,
    this.awayLeagueId,
    this.awaySportCode,
    this.day,
    this.gamedaySw,
    this.doubleHeaderSw,
    this.gameNbr,
    this.tbdFlag,
    this.venueWChanLoc,
    this.location,
    this.gameday,
    this.awayGamesBack,
    this.awayGamesBackWildcard,
    this.awayWin,
    this.awayLoss,
    this.homeGamesBack,
    this.homeGamesBackWildcard,
    this.homeWin,
    this.homeLoss,
    this.gameDataDirectory,
    this.inningBreakLength,
    this.league,
  });

  Links links;
  Broadcast broadcast;
  StatusClass status;
  HomeRuns homeRuns;
  Linescore linescore;
  Pitcher winningPitcher;
  Pitcher losingPitcher;
  Pitcher savePitcher;
  String videoThumbnail;
  VideoThumbnails videoThumbnails;
  GameMedia gameMedia;
  String id;
  String gamePk;
  String venue;
  OriginalDate originalDate;
  String resumeDate;
  String time;
  String timeDate;
  String timeDateAwLg;
  String timeDateHmLg;
  HomeTimeZone timeZone;
  Ampm ampm;
  String firstPitchEt;
  String awayTime;
  String awayTimeZone;
  Ampm awayAmpm;
  String homeTime;
  HomeTimeZone homeTimeZone;
  Ampm homeAmpm;
  GameType gameType;
  DoubleHeaderSw tiebreakerSw;
  String timeZoneAwLg;
  String timeZoneHmLg;
  String timeAwLg;
  Ampm awLgAmpm;
  HomeTimeZone tzAwLgGen;
  String timeHmLg;
  Ampm hmLgAmpm;
  HomeTimeZone tzHmLgGen;
  String venueId;
  String statsSeason;
  String scheduledInnings;
  String description;
  Series series;
  String serHomeNbr;
  String seriesNum;
  String serGames;
  String homeNameAbbrev;
  String homeCode;
  String homeFileCode;
  String homeTeamId;
  String homeTeamCity;
  String homeTeamName;
  Division homeDivision;
  String homeLeagueId;
  SportCode homeSportCode;
  String awayNameAbbrev;
  String awayCode;
  String awayFileCode;
  String awayTeamId;
  String awayTeamCity;
  String awayTeamName;
  Division awayDivision;
  String awayLeagueId;
  SportCode awaySportCode;
  Day day;
  GamedaySw gamedaySw;
  DoubleHeaderSw doubleHeaderSw;
  String gameNbr;
  DoubleHeaderSw tbdFlag;
  String venueWChanLoc;
  String location;
  String gameday;
  String awayGamesBack;
  String awayGamesBackWildcard;
  String awayWin;
  String awayLoss;
  String homeGamesBack;
  String homeGamesBackWildcard;
  String homeWin;
  String homeLoss;
  String gameDataDirectory;
  String inningBreakLength;
  String league;

  factory Game.fromJson(Map<String, dynamic> json) => Game(
    links: Links.fromJson(json["links"]),
    broadcast: Broadcast.fromJson(json["broadcast"]),
    //status: StatusClass.fromJson(json["status"]),
    homeRuns: HomeRuns.fromJson(json["home_runs"]),
    linescore: Linescore.fromJson(json["linescore"]),
    winningPitcher: Pitcher.fromJson(json["winning_pitcher"]),
    losingPitcher: Pitcher.fromJson(json["losing_pitcher"]),
    savePitcher: Pitcher.fromJson(json["save_pitcher"]),
    videoThumbnail: json["video_thumbnail"],
    videoThumbnails: VideoThumbnails.fromJson(json["video_thumbnails"]),
    gameMedia: GameMedia.fromJson(json["game_media"]),
    id: json["id"],
    gamePk: json["game_pk"],
    venue: json["venue"],
    originalDate: originalDateValues.map[json["original_date"]],
    resumeDate: json["resume_date"],
    time: json["time"],
    timeDate: json["time_date"],
    timeDateAwLg: json["time_date_aw_lg"],
    timeDateHmLg: json["time_date_hm_lg"],
    timeZone: homeTimeZoneValues.map[json["time_zone"]],
    ampm: ampmValues.map[json["ampm"]],
    firstPitchEt: json["first_pitch_et"],
    awayTime: json["away_time"],
    awayTimeZone: json["away_time_zone"],
    awayAmpm: ampmValues.map[json["away_ampm"]],
    homeTime: json["home_time"],
    homeTimeZone: homeTimeZoneValues.map[json["home_time_zone"]],
    homeAmpm: ampmValues.map[json["home_ampm"]],
    gameType: gameTypeValues.map[json["game_type"]],
    tiebreakerSw: doubleHeaderSwValues.map[json["tiebreaker_sw"]],
    timeZoneAwLg: json["time_zone_aw_lg"],
    timeZoneHmLg: json["time_zone_hm_lg"],
    timeAwLg: json["time_aw_lg"],
    awLgAmpm: ampmValues.map[json["aw_lg_ampm"]],
    tzAwLgGen: homeTimeZoneValues.map[json["tz_aw_lg_gen"]],
    timeHmLg: json["time_hm_lg"],
    hmLgAmpm: ampmValues.map[json["hm_lg_ampm"]],
    tzHmLgGen: homeTimeZoneValues.map[json["tz_hm_lg_gen"]],
    venueId: json["venue_id"],
    statsSeason: json["stats_season"],
    scheduledInnings: json["scheduled_innings"],
    description: json["description"],
    series: seriesValues.map[json["series"]],
    serHomeNbr: json["ser_home_nbr"],
    seriesNum: json["series_num"],
    serGames: json["ser_games"],
    homeNameAbbrev: json["home_name_abbrev"],
    homeCode: json["home_code"],
    homeFileCode: json["home_file_code"],
    homeTeamId: json["home_team_id"],
    homeTeamCity: json["home_team_city"],
    homeTeamName: json["home_team_name"],
    homeDivision: divisionValues.map[json["home_division"]],
    homeLeagueId: json["home_league_id"],
    homeSportCode: sportCodeValues.map[json["home_sport_code"]],
    awayNameAbbrev: json["away_name_abbrev"],
    awayCode: json["away_code"],
    awayFileCode: json["away_file_code"],
    awayTeamId: json["away_team_id"],
    awayTeamCity: json["away_team_city"],
    awayTeamName: json["away_team_name"],
    awayDivision: divisionValues.map[json["away_division"]],
    awayLeagueId: json["away_league_id"],
    awaySportCode: sportCodeValues.map[json["away_sport_code"]],
    day: dayValues.map[json["day"]],
    gamedaySw: gamedaySwValues.map[json["gameday_sw"]],
    doubleHeaderSw: doubleHeaderSwValues.map[json["double_header_sw"]],
    gameNbr: json["game_nbr"],
    tbdFlag: doubleHeaderSwValues.map[json["tbd_flag"]],
    venueWChanLoc: json["venue_w_chan_loc"],
    location: json["location"],
    gameday: json["gameday"],
    awayGamesBack: json["away_games_back"],
    awayGamesBackWildcard: json["away_games_back_wildcard"],
    awayWin: json["away_win"],
    awayLoss: json["away_loss"],
    homeGamesBack: json["home_games_back"],
    homeGamesBackWildcard: json["home_games_back_wildcard"],
    homeWin: json["home_win"],
    homeLoss: json["home_loss"],
    gameDataDirectory: json["game_data_directory"],
    inningBreakLength: json["inning_break_length"],
    league: json["league"],
  );

  Map<String, dynamic> toJson() => {
    "links": links.toJson(),
    "broadcast": broadcast.toJson(),
   // "status": status.toJson(),
    "home_runs": homeRuns.toJson(),
    "linescore": linescore.toJson(),
    "winning_pitcher": winningPitcher.toJson(),
    "losing_pitcher": losingPitcher.toJson(),
    "save_pitcher": savePitcher.toJson(),
    "video_thumbnail": videoThumbnail,
    "video_thumbnails": videoThumbnails.toJson(),
    "game_media": gameMedia.toJson(),
    "id": id,
    "game_pk": gamePk,
    "venue": venue,
    "original_date": originalDateValues.reverse[originalDate],
    "resume_date": resumeDate,
    "time": time,
    "time_date": timeDate,
    "time_date_aw_lg": timeDateAwLg,
    "time_date_hm_lg": timeDateHmLg,
    "time_zone": homeTimeZoneValues.reverse[timeZone],
    "ampm": ampmValues.reverse[ampm],
    "first_pitch_et": firstPitchEt,
    "away_time": awayTime,
    "away_time_zone": awayTimeZone,
    "away_ampm": ampmValues.reverse[awayAmpm],
    "home_time": homeTime,
    "home_time_zone": homeTimeZoneValues.reverse[homeTimeZone],
    "home_ampm": ampmValues.reverse[homeAmpm],
    "game_type": gameTypeValues.reverse[gameType],
    "tiebreaker_sw": doubleHeaderSwValues.reverse[tiebreakerSw],
    "time_zone_aw_lg": timeZoneAwLg,
    "time_zone_hm_lg": timeZoneHmLg,
    "time_aw_lg": timeAwLg,
    "aw_lg_ampm": ampmValues.reverse[awLgAmpm],
    "tz_aw_lg_gen": homeTimeZoneValues.reverse[tzAwLgGen],
    "time_hm_lg": timeHmLg,
    "hm_lg_ampm": ampmValues.reverse[hmLgAmpm],
    "tz_hm_lg_gen": homeTimeZoneValues.reverse[tzHmLgGen],
    "venue_id": venueId,
    "stats_season": statsSeason,
    "scheduled_innings": scheduledInnings,
    "description": description,
    "series": seriesValues.reverse[series],
    "ser_home_nbr": serHomeNbr,
    "series_num": seriesNum,
    "ser_games": serGames,
    "home_name_abbrev": homeNameAbbrev,
    "home_code": homeCode,
    "home_file_code": homeFileCode,
    "home_team_id": homeTeamId,
    "home_team_city": homeTeamCity,
    "home_team_name": homeTeamName,
    "home_division": divisionValues.reverse[homeDivision],
    "home_league_id": homeLeagueId,
    "home_sport_code": sportCodeValues.reverse[homeSportCode],
    "away_name_abbrev": awayNameAbbrev,
    "away_code": awayCode,
    "away_file_code": awayFileCode,
    "away_team_id": awayTeamId,
    "away_team_city": awayTeamCity,
    "away_team_name": awayTeamName,
    "away_division": divisionValues.reverse[awayDivision],
    "away_league_id": awayLeagueId,
    "away_sport_code": sportCodeValues.reverse[awaySportCode],
    "day": dayValues.reverse[day],
    "gameday_sw": gamedaySwValues.reverse[gamedaySw],
    "double_header_sw": doubleHeaderSwValues.reverse[doubleHeaderSw],
    "game_nbr": gameNbr,
    "tbd_flag": doubleHeaderSwValues.reverse[tbdFlag],
    "venue_w_chan_loc": venueWChanLoc,
    "location": location,
    "gameday": gameday,
    "away_games_back": awayGamesBack,
    "away_games_back_wildcard": awayGamesBackWildcard,
    "away_win": awayWin,
    "away_loss": awayLoss,
    "home_games_back": homeGamesBack,
    "home_games_back_wildcard": homeGamesBackWildcard,
    "home_win": homeWin,
    "home_loss": homeLoss,
    "game_data_directory": gameDataDirectory,
    "inning_break_length": inningBreakLength,
    "league": league,
  };
}