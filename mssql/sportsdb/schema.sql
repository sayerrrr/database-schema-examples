-- SQLINES DEMO *** sdb';
--
-- SQLINES DEMO *** se dump
--

-- SET @client_encoding = 'UTF-8';
-- SET @check_function_bodies = 0;
-- SET @client_min_messages = warning;

--
-- SQLINES DEMO *** mple; Type: DATABASE; Schema: -; Owner: postgres81
--

-- SQLINES DEMO *** portsdb_sample WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII';
-- SQLINES DEMO *** _sample
-- SQLINES DEMO *** ng = 'UTF-8';
-- SQLINES DEMO *** n_bodies = 0;
-- SQLINES DEMO *** ssages = warning;

--
-- SQLINES DEMO *** ic; Type: COMMENT; Schema: -; Owner: postgres81
--


-- SQLINES DEMO ***  dbo IS 'Standard dbo schema';


-- SQLINES DEMO ***  dbo, pg_catalog;

--
-- SQLINES DEMO ***  Type: DOMAIN; Schema: dbo; Owner: postgres81
--

-- CREATE DOMAIN primary_id AS integer;


-- SET @default_tablespace = '';

-- SET @default_with_oids = 0;

--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE addresses (
    id int NOT NULL,
    location_id integer NOT NULL,
    "language" character varying(100),
    suite character varying(100),
    floor character varying(100),
    building character varying(100),
    street_number character varying(100),
    street_prefix character varying(100),
    street character varying(100),
    street_suffix character varying(100),
    neighborhood character varying(100),
    district character varying(100),
    locality character varying(100),
    county character varying(100),
    region character varying(100),
    postal_code character varying(100),
    country character varying(100)
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('addresses', 'id'), 1, 0);


--
-- SQLINES DEMO *** _phases; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE affiliation_phases (
    id int NOT NULL,
    affiliation_id integer NOT NULL,
    ancestor_affiliation_id integer,
    start_season_id integer,
    start_date_time datetime2,
    end_season_id integer,
    end_date_time datetime2
);


--
-- SQLINES DEMO *** _phases_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('affiliation_phases', 'id'), 75, 1);


--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE affiliations (
    id int NOT NULL,
    affiliation_key character varying(100) NOT NULL,
    affiliation_type character varying(100),
    publisher_id integer NOT NULL
);


--
-- SQLINES DEMO *** s_documents; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE affiliations_documents (
    affiliation_id integer NOT NULL,
    document_id integer NOT NULL
);


--
-- SQLINES DEMO *** s_events; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE affiliations_events (
    affiliation_id integer NOT NULL,
    event_id integer NOT NULL
);


--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('affiliations', 'id'), 29, 1);


--
-- SQLINES DEMO *** s_media; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE affiliations_media (
    affiliation_id integer NOT NULL,
    media_id integer NOT NULL
);


--
-- SQLINES DEMO *** otball_action_participants; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_action_participants (
    id int NOT NULL,
    american_football_action_play_id integer NOT NULL,
    person_id integer NOT NULL,
    participant_role character varying(100) NOT NULL,
    score_type character varying(100),
    field_line integer,
    yardage integer,
    score_credit integer,
    yards_gained integer
);


--
-- SQLINES DEMO *** otball_action_participants_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_action_participants', 'id'), 293, 1);


--
-- SQLINES DEMO *** otball_action_plays; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_action_plays (
    id int NOT NULL,
    american_football_event_state_id integer NOT NULL,
    play_type character varying(100),
    score_attempt_type character varying(100),
    drive_result character varying(100),
    points integer,
    "comment" character varying(255)
);


--
-- SQLINES DEMO *** otball_action_plays_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_action_plays', 'id'), 179, 1);


--
-- SQLINES DEMO *** otball_defensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_defensive_stats (
    id int NOT NULL,
    tackles_total character varying(100),
    tackles_solo character varying(100),
    tackles_assists character varying(100),
    interceptions_total character varying(100),
    interceptions_yards character varying(100),
    interceptions_average character varying(100),
    interceptions_longest character varying(100),
    interceptions_touchdown character varying(100),
    quarterback_hurries character varying(100),
    sacks_total character varying(100),
    sacks_yards character varying(100),
    passes_defensed character varying(100)
);


--
-- SQLINES DEMO *** otball_defensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_defensive_stats', 'id'), 751, 1);


--
-- SQLINES DEMO *** otball_down_progress_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_down_progress_stats (
    id int NOT NULL,
    first_downs_total character varying(100),
    first_downs_pass character varying(100),
    first_downs_run character varying(100),
    first_downs_penalty character varying(100),
    conversions_third_down character varying(100),
    conversions_third_down_attempts character varying(100),
    conversions_third_down_percentage character varying(100),
    conversions_fourth_down character varying(100),
    conversions_fourth_down_attempts character varying(100),
    conversions_fourth_down_percentage character varying(100)
);


--
-- SQLINES DEMO *** otball_down_progress_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_down_progress_stats', 'id'), 36, 1);


--
-- SQLINES DEMO *** otball_event_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state smallint,
    sequence_number integer,
    period_value integer,
    period_time_elapsed character varying(100),
    period_time_remaining character varying(100),
    clock_state character varying(100),
    down integer,
    team_in_possession_id integer,
    distance_for_1st_down integer,
    field_side character varying(100),
    field_line integer,
    context character varying(40)
);


--
-- SQLINES DEMO *** otball_event_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_event_states', 'id'), 249, 1);


--
-- SQLINES DEMO *** otball_fumbles_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_fumbles_stats (
    id int NOT NULL,
    fumbles_committed character varying(100),
    fumbles_forced character varying(100),
    fumbles_recovered character varying(100),
    fumbles_lost character varying(100),
    fumbles_yards_gained character varying(100),
    fumbles_own_committed character varying(100),
    fumbles_own_recovered character varying(100),
    fumbles_own_lost character varying(100),
    fumbles_own_yards_gained character varying(100),
    fumbles_opposing_committed character varying(100),
    fumbles_opposing_recovered character varying(100),
    fumbles_opposing_lost character varying(100),
    fumbles_opposing_yards_gained character varying(100)
);


--
-- SQLINES DEMO *** otball_fumbles_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_fumbles_stats', 'id'), 121, 1);


--
-- SQLINES DEMO *** otball_offensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_offensive_stats (
    id int NOT NULL,
    offensive_plays_yards character varying(100),
    offensive_plays_number character varying(100),
    offensive_plays_average_yards_per character varying(100),
    possession_duration character varying(100),
    turnovers_giveaway character varying(100)
);


--
-- SQLINES DEMO *** otball_offensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_offensive_stats', 'id'), 36, 1);


--
-- SQLINES DEMO *** otball_passing_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_passing_stats (
    id int NOT NULL,
    passes_attempts character varying(100),
    passes_completions character varying(100),
    passes_percentage character varying(100),
    passes_yards_gross character varying(100),
    passes_yards_net character varying(100),
    passes_yards_lost character varying(100),
    passes_touchdowns character varying(100),
    passes_touchdowns_percentage character varying(100),
    passes_interceptions character varying(100),
    passes_interceptions_percentage character varying(100),
    passes_longest character varying(100),
    passes_average_yards_per character varying(100),
    passer_rating character varying(100),
    receptions_total character varying(100),
    receptions_yards character varying(100),
    receptions_touchdowns character varying(100),
    receptions_first_down character varying(100),
    receptions_longest character varying(100),
    receptions_average_yards_per character varying(100)
);


--
-- SQLINES DEMO *** otball_passing_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_passing_stats', 'id'), 301, 1);


--
-- SQLINES DEMO *** otball_penalties_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_penalties_stats (
    id int NOT NULL,
    penalties_total character varying(100),
    penalty_yards character varying(100),
    penalty_first_downs character varying(100)
);


--
-- SQLINES DEMO *** otball_penalties_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_penalties_stats', 'id'), 36, 1);


--
-- SQLINES DEMO *** otball_rushing_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_rushing_stats (
    id int NOT NULL,
    rushes_attempts character varying(100),
    rushes_yards character varying(100),
    rushes_touchdowns character varying(100),
    rushing_average_yards_per character varying(100),
    rushes_first_down character varying(100),
    rushes_longest character varying(100)
);


--
-- SQLINES DEMO *** otball_rushing_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_rushing_stats', 'id'), 175, 1);


--
-- SQLINES DEMO *** otball_sacks_against_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_sacks_against_stats (
    id int NOT NULL,
    sacks_against_yards character varying(100),
    sacks_against_total character varying(100)
);


--
-- SQLINES DEMO *** otball_sacks_against_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_sacks_against_stats', 'id'), 77, 1);


--
-- SQLINES DEMO *** otball_scoring_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_scoring_stats (
    id int NOT NULL,
    touchdowns_total character varying(100),
    touchdowns_passing character varying(100),
    touchdowns_rushing character varying(100),
    touchdowns_special_teams character varying(100),
    touchdowns_defensive character varying(100),
    extra_points_attempts character varying(100),
    extra_points_made character varying(100),
    extra_points_missed character varying(100),
    extra_points_blocked character varying(100),
    field_goal_attempts character varying(100),
    field_goals_made character varying(100),
    field_goals_missed character varying(100),
    field_goals_blocked character varying(100),
    safeties_against character varying(100),
    two_point_conversions_attempts character varying(100),
    two_point_conversions_made character varying(100),
    touchbacks_total character varying(100)
);


--
-- SQLINES DEMO *** otball_scoring_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_scoring_stats', 'id'), 842, 1);


--
-- SQLINES DEMO *** otball_special_teams_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE american_football_special_teams_stats (
    id int NOT NULL,
    returns_punt_total character varying(100),
    returns_punt_yards character varying(100),
    returns_punt_average character varying(100),
    returns_punt_longest character varying(100),
    returns_punt_touchdown character varying(100),
    returns_kickoff_total character varying(100),
    returns_kickoff_yards character varying(100),
    returns_kickoff_average character varying(100),
    returns_kickoff_longest character varying(100),
    returns_kickoff_touchdown character varying(100),
    returns_total character varying(100),
    returns_yards character varying(100),
    punts_total character varying(100),
    punts_yards_gross character varying(100),
    punts_yards_net character varying(100),
    punts_longest character varying(100),
    punts_inside_20 character varying(100),
    punts_inside_20_percentage character varying(100),
    punts_average character varying(100),
    punts_blocked character varying(100),
    touchbacks_total character varying(100),
    touchbacks_total_percentage character varying(100),
    touchbacks_kickoffs character varying(100),
    touchbacks_kickoffs_percentage character varying(100),
    touchbacks_punts character varying(100),
    touchbacks_punts_percentage character varying(100),
    touchbacks_interceptions character varying(100),
    touchbacks_interceptions_percentage character varying(100),
    fair_catches character varying(100)
);


--
-- SQLINES DEMO *** otball_special_teams_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('american_football_special_teams_stats', 'id'), 142, 1);


--
-- SQLINES DEMO *** tion_contact_details; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_action_contact_details (
    id int NOT NULL,
    baseball_action_pitch_id integer NOT NULL,
    "location" character varying(100),
    strength character varying(100),
    velocity integer,
    "comment" varchar(max),
    trajectory_coordinates character varying(100),
    trajectory_formula character varying(100)
);


--
-- SQLINES DEMO *** tion_contact_details_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_action_contact_details', 'id'), 1, 0);


--
-- SQLINES DEMO *** tion_pitches; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_action_pitches (
    id int NOT NULL,
    baseball_action_play_id integer NOT NULL,
    sequence_number integer,
    baseball_defensive_group_id integer,
    umpire_call character varying(100),
    pitch_location character varying(100),
    pitch_type character varying(100),
    pitch_velocity integer,
    "comment" varchar(max),
    trajectory_coordinates character varying(100),
    trajectory_formula character varying(100),
    ball_type character varying(40),
    strike_type character varying(40)
);


--
-- SQLINES DEMO *** tion_pitches_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_action_pitches', 'id'), 1, 0);


--
-- SQLINES DEMO *** tion_plays; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_action_plays (
    id int NOT NULL,
    baseball_event_state_id integer NOT NULL,
    play_type character varying(100),
    notation character varying(100),
    notation_yaml varchar(max),
    baseball_defensive_group_id integer,
    "comment" character varying(255),
    runner_on_first_advance integer,
    runner_on_second_advance integer,
    runner_on_third_advance integer,
    outs_recorded integer,
    rbi integer,
    runs_scored integer,
    earned_runs_scored character varying(100)
);


--
-- SQLINES DEMO *** tion_plays_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_action_plays', 'id'), 17, 1);


--
-- SQLINES DEMO *** tion_substitutions; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_action_substitutions (
    id int NOT NULL,
    baseball_event_state_id integer NOT NULL,
    sequence_number integer,
    person_type character varying(100),
    person_original_id integer,
    person_original_position_id integer,
    person_original_lineup_slot integer,
    person_replacing_id integer,
    person_replacing_position_id integer,
    person_replacing_lineup_slot integer,
    substitution_reason character varying(100),
    "comment" character varying(100)
);


--
-- SQLINES DEMO *** tion_substitutions_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_action_substitutions', 'id'), 1, 0);


--
-- SQLINES DEMO *** fensive_group; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_defensive_group (
    id int NOT NULL
);


--
-- SQLINES DEMO *** fensive_group_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_defensive_group', 'id'), 1, 0);


--
-- SQLINES DEMO *** fensive_players; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_defensive_players (
    id int NOT NULL,
    baseball_defensive_group_id integer NOT NULL,
    player_id integer NOT NULL,
    position_id integer NOT NULL
);


--
-- SQLINES DEMO *** fensive_players_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_defensive_players', 'id'), 1, 0);


--
-- SQLINES DEMO *** fensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_defensive_stats (
    id int NOT NULL,
    double_plays integer,
    triple_plays integer,
    putouts integer,
    assists integer,
    errors integer,
    fielding_percentage numeric,
    defensive_average numeric,
    errors_passed_ball integer,
    errors_catchers_interference integer
);


--
-- SQLINES DEMO *** fensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_defensive_stats', 'id'), 1724, 1);


--
-- SQLINES DEMO *** ent_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state smallint,
    sequence_number integer,
    at_bat_number integer,
    inning_value integer,
    inning_half character varying(100),
    outs integer,
    balls integer,
    strikes integer,
    runner_on_first_id integer,
    runner_on_second_id integer,
    runner_on_third_id integer,
    runner_on_first smallint,
    runner_on_second smallint,
    runner_on_third smallint,
    runs_this_inning_half integer,
    pitcher_id integer,
    batter_id integer,
    batter_side character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** ent_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_event_states', 'id'), 17, 1);


--
-- SQLINES DEMO *** fensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_offensive_stats (
    id int NOT NULL,
    average numeric,
    runs_scored integer,
    at_bats integer,
    hits integer,
    rbi integer,
    total_bases integer,
    slugging_percentage numeric,
    bases_on_balls integer,
    strikeouts integer,
    left_on_base integer,
    left_in_scoring_position integer,
    singles integer,
    doubles integer,
    triples integer,
    home_runs integer,
    grand_slams integer,
    at_bats_per_rbi numeric,
    plate_appearances_per_rbi numeric,
    at_bats_per_home_run numeric,
    plate_appearances_per_home_run numeric,
    sac_flies integer,
    sac_bunts integer,
    grounded_into_double_play integer,
    moved_up integer,
    on_base_percentage numeric,
    stolen_bases integer,
    stolen_bases_caught integer,
    stolen_bases_average numeric,
    hit_by_pitch integer,
    defensive_interferance_reaches integer,
    on_base_plus_slugging numeric,
    plate_appearances integer,
    hits_extra_base integer
);


--
-- SQLINES DEMO *** fensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_offensive_stats', 'id'), 1724, 1);


--
-- SQLINES DEMO *** tching_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE baseball_pitching_stats (
    id int NOT NULL,
    runs_allowed integer,
    singles_allowed integer,
    doubles_allowed integer,
    triples_allowed integer,
    home_runs_allowed integer,
    innings_pitched character varying(20),
    hits integer,
    earned_runs integer,
    unearned_runs integer,
    bases_on_balls integer,
    bases_on_balls_intentional integer,
    strikeouts integer,
    strikeout_to_bb_ratio numeric,
    number_of_pitches integer,
    era numeric,
    inherited_runners_scored integer,
    pick_offs integer,
    errors_hit_with_pitch integer,
    errors_wild_pitch integer,
    balks integer,
    wins integer,
    losses integer,
    saves integer,
    shutouts integer,
    games_complete integer,
    games_finished integer,
    winning_percentage numeric,
    event_credit character varying(40),
    save_credit character varying(40)
);


--
-- SQLINES DEMO *** tching_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('baseball_pitching_stats', 'id'), 852, 1);


--
-- SQLINES DEMO *** defensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE basketball_defensive_stats (
    id int NOT NULL,
    steals_total character varying(100),
    steals_per_game character varying(100),
    blocks_total character varying(100),
    blocks_per_game character varying(100)
);


--
-- SQLINES DEMO *** defensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('basketball_defensive_stats', 'id'), 164, 1);


--
-- SQLINES DEMO *** event_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE basketball_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state integer,
    sequence_number integer,
    period_value character varying(100),
    period_time_elapsed character varying(100),
    period_time_remaining character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** event_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('basketball_event_states', 'id'), 1, 0);


--
-- SQLINES DEMO *** offensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE basketball_offensive_stats (
    id int NOT NULL,
    field_goals_made integer,
    field_goals_attempted integer,
    field_goals_percentage character varying(100),
    field_goals_per_game character varying(100),
    field_goals_attempted_per_game character varying(100),
    field_goals_percentage_adjusted character varying(100),
    three_pointers_made integer,
    three_pointers_attempted integer,
    three_pointers_percentage character varying(100),
    three_pointers_per_game character varying(100),
    three_pointers_attempted_per_game character varying(100),
    free_throws_made character varying(100),
    free_throws_attempted character varying(100),
    free_throws_percentage character varying(100),
    free_throws_per_game character varying(100),
    free_throws_attempted_per_game character varying(100),
    points_scored_total character varying(100),
    points_scored_per_game character varying(100),
    assists_total character varying(100),
    assists_per_game character varying(100),
    turnovers_total character varying(100),
    turnovers_per_game character varying(100),
    points_scored_off_turnovers character varying(100),
    points_scored_in_paint character varying(100),
    points_scored_on_second_chance character varying(100),
    points_scored_on_fast_break character varying(100)
);


--
-- SQLINES DEMO *** offensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('basketball_offensive_stats', 'id'), 164, 1);


--
-- SQLINES DEMO *** rebounding_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE basketball_rebounding_stats (
    id int NOT NULL,
    rebounds_total character varying(100),
    rebounds_per_game character varying(100),
    rebounds_defensive character varying(100),
    rebounds_offensive character varying(100),
    team_rebounds_total character varying(100),
    team_rebounds_per_game character varying(100),
    team_rebounds_defensive character varying(100),
    team_rebounds_offensive character varying(100)
);


--
-- SQLINES DEMO *** rebounding_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('basketball_rebounding_stats', 'id'), 164, 1);


--
-- SQLINES DEMO *** team_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE basketball_team_stats (
    id int NOT NULL,
    timeouts_left character varying(100),
    largest_lead character varying(100),
    fouls_total character varying(100),
    turnover_margin character varying(100)
);


--
-- SQLINES DEMO *** team_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('basketball_team_stats', 'id'), 1, 0);


--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE bookmakers (
    id int NOT NULL,
    bookmaker_key character varying(100),
    publisher_id integer NOT NULL,
    location_id integer
);


--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('bookmakers', 'id'), 1, 0);


--
-- SQLINES DEMO *** _stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE core_person_stats (
    id int NOT NULL,
    time_played_event character varying(40),
    time_played_total character varying(40),
    time_played_event_average character varying(40),
    events_played integer,
    events_started integer,
    position_id integer
);


--
-- SQLINES DEMO *** _stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('core_person_stats', 'id'), 2588, 1);


--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE core_stats (
    id int NOT NULL,
    score character varying(100),
    score_opposing character varying(100),
    score_attempts character varying(100),
    score_attempts_opposing character varying(100),
    score_percentage character varying(100),
    score_percentage_opposing character varying(100)
);


--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('core_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE db_info (
    version character varying(100) DEFAULT 16 NOT NULL
);


--
-- SQLINES DEMO *** es; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE display_names (
    id int NOT NULL,
    "language" character varying(100) NOT NULL,
    entity_type character varying(100) NOT NULL,
    entity_id integer NOT NULL,
    full_name character varying(100),
    first_name character varying(100),
    middle_name character varying(100),
    last_name character varying(100),
    alias character varying(100),
    abbreviation character varying(100),
    short_name character varying(100),
    prefix character varying(20),
    suffix character varying(20)
);


--
-- SQLINES DEMO *** es_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('display_names', 'id'), 3958, 1);


--
-- SQLINES DEMO *** asses; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_classes (
    id int NOT NULL,
    name character varying(100)
);


--
-- SQLINES DEMO *** asses_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_classes', 'id'), 6, 1);


--
-- SQLINES DEMO *** ntents; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_contents (
    id int NOT NULL,
    document_id integer NOT NULL,
    sportsml character varying(200),
    abstract varchar(max)
);


--
-- SQLINES DEMO *** ntents_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_contents', 'id'), 414, 1);


--
-- SQLINES DEMO *** xtures; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_fixtures (
    id int NOT NULL,
    fixture_key character varying(100),
    publisher_id integer NOT NULL,
    name character varying(100),
    document_class_id integer NOT NULL
);


--
-- SQLINES DEMO *** xtures_events; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_fixtures_events (
    id int NOT NULL,
    document_fixture_id integer NOT NULL,
    event_id integer NOT NULL,
    latest_document_id integer NOT NULL,
    last_update datetime2
);


--
-- SQLINES DEMO *** xtures_events_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_fixtures_events', 'id'), 7915, 1);


--
-- SQLINES DEMO *** xtures_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_fixtures', 'id'), 12, 1);


--
-- SQLINES DEMO *** ckage_entry; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_package_entry (
    id int NOT NULL,
    document_package_id integer NOT NULL,
    rank character varying(100),
    document_id integer NOT NULL,
    headline character varying(100),
    short_headline character varying(100)
);


--
-- SQLINES DEMO *** ckage_entry_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_package_entry', 'id'), 1, 0);


--
-- SQLINES DEMO *** ckages; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE document_packages (
    id int NOT NULL,
    package_key character varying(100),
    package_name character varying(100),
    date_time date
);


--
-- SQLINES DEMO *** ckages_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('document_packages', 'id'), 1, 0);


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE documents (
    id int NOT NULL,
    doc_id character varying(75) NOT NULL,
    publisher_id integer NOT NULL,
    date_time datetime2,
    title character varying(255),
    "language" character varying(100),
    priority character varying(100),
    revision_id character varying(75),
    stats_coverage character varying(100),
    document_fixture_id integer NOT NULL,
    source_id integer,
    db_loading_date_time datetime2
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('documents', 'id'), 414, 1);


--
-- SQLINES DEMO *** edia; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE documents_media (
    id int NOT NULL,
    document_id integer NOT NULL,
    media_id integer NOT NULL,
    media_caption_id integer NOT NULL
);


--
-- SQLINES DEMO *** edia_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('documents_media', 'id'), 1, 0);


--
-- SQLINES DEMO *** e: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE events (
    id int NOT NULL,
    event_key character varying(100) NOT NULL,
    publisher_id integer NOT NULL,
    start_date_time datetime2,
    site_id integer,
    site_alignment character varying(100),
    event_status character varying(100),
    duration character varying(100),
    attendance character varying(100),
    last_update datetime2
);


--
-- SQLINES DEMO *** ments; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE events_documents (
    event_id integer NOT NULL,
    document_id integer NOT NULL
);


--
-- SQLINES DEMO *** eq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('events', 'id'), 4350, 1);


--
-- SQLINES DEMO *** a; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE events_media (
    event_id integer NOT NULL,
    media_id integer NOT NULL
);


--
-- SQLINES DEMO *** seasons; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE events_sub_seasons (
    event_id integer NOT NULL,
    sub_season_id integer NOT NULL
);


--
-- SQLINES DEMO *** action_participants; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_action_participants (
    id int NOT NULL,
    ice_hockey_action_play_id integer NOT NULL,
    person_id integer NOT NULL,
    participant_role character varying(100) NOT NULL,
    point_credit integer
);


--
-- SQLINES DEMO *** action_participants_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_action_participants', 'id'), 199, 1);


--
-- SQLINES DEMO *** action_plays; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_action_plays (
    id int NOT NULL,
    ice_hockey_event_state_id integer NOT NULL,
    play_type character varying(100),
    score_attempt_type character varying(100),
    play_result character varying(100),
    "comment" character varying(255)
);


--
-- SQLINES DEMO *** action_plays_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_action_plays', 'id'), 51, 1);


--
-- SQLINES DEMO *** defensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_defensive_stats (
    id int NOT NULL,
    shots_power_play_allowed character varying(100),
    shots_penalty_shot_allowed character varying(100),
    goals_power_play_allowed character varying(100),
    goals_penalty_shot_allowed character varying(100),
    goals_against_average character varying(100),
    saves character varying(100),
    save_percentage character varying(100),
    penalty_killing_amount character varying(100),
    penalty_killing_percentage character varying(100),
    shots_blocked character varying(100),
    takeaways character varying(100),
    shutouts character varying(100),
    minutes_penalty_killing character varying(100),
    hits character varying(100),
    goals_empty_net_allowed character varying(100),
    goals_short_handed_allowed character varying(100),
    goals_shootout_allowed character varying(100),
    shots_shootout_allowed character varying(100)
);


--
-- SQLINES DEMO *** defensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_defensive_stats', 'id'), 94, 1);


--
-- SQLINES DEMO *** event_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state integer,
    sequence_number integer,
    period_value character varying(100),
    period_time_elapsed character varying(100),
    period_time_remaining character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** event_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_event_states', 'id'), 51, 1);


--
-- SQLINES DEMO *** offensive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_offensive_stats (
    id int NOT NULL,
    goals_game_winning character varying(100),
    goals_game_tying character varying(100),
    goals_power_play character varying(100),
    goals_short_handed character varying(100),
    goals_even_strength character varying(100),
    goals_empty_net character varying(100),
    goals_overtime character varying(100),
    goals_shootout character varying(100),
    goals_penalty_shot character varying(100),
    assists character varying(100),
    points character varying(100),
    power_play_amount character varying(100),
    power_play_percentage character varying(100),
    shots_penalty_shot_taken character varying(100),
    shots_penalty_shot_missed character varying(100),
    shots_penalty_shot_percentage character varying(100),
    giveaways character varying(100),
    minutes_power_play character varying(100),
    faceoff_wins character varying(100),
    faceoff_losses character varying(100),
    faceoff_win_percentage character varying(100),
    scoring_chances character varying(100)
);


--
-- SQLINES DEMO *** offensive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_offensive_stats', 'id'), 1112, 1);


--
-- SQLINES DEMO *** player_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE ice_hockey_player_stats (
    id int NOT NULL,
    plus_minus character varying(100)
);


--
-- SQLINES DEMO *** player_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('ice_hockey_player_stats', 'id'), 1072, 1);


--
-- SQLINES DEMO *** es; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE injury_phases (
    id int NOT NULL,
    person_id integer NOT NULL,
    injury_status character varying(100),
    injury_type character varying(100),
    injury_comment character varying(100),
    disabled_list character varying(100),
    start_date_time datetime2,
    end_date_time datetime2,
    season_id integer,
    phase_type character varying(100),
    injury_side character varying(100)
);


--
-- SQLINES DEMO *** es_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('injury_phases', 'id'), 771, 1);


--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE key_aliases (
    id int NOT NULL,
    key_id integer NOT NULL,
    key_root_id integer NOT NULL
);


--
-- SQLINES DEMO *** _id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('key_aliases', 'id'), 1, 0);


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE key_roots (
    id int NOT NULL,
    key_type character varying(100)
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('key_roots', 'id'), 1, 0);


--
-- SQLINES DEMO *** sions; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE latest_revisions (
    id int NOT NULL,
    revision_id character varying(75) NOT NULL,
    latest_document_id integer NOT NULL
);


--
-- SQLINES DEMO *** sions_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('latest_revisions', 'id'), 295, 1);


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE locations (
    id int NOT NULL,
    timezone character varying(100),
    latitude character varying(100),
    longitude character varying(100),
    country_code character varying(100)
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('locations', 'id'), 1, 0);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE media (
    id int NOT NULL,
    object_id integer,
    source_id integer,
    revision_id integer,
    media_type character varying(100),
    publisher_id integer NOT NULL,
    date_time character varying(100),
    credit_id integer NOT NULL,
    db_loading_date_time datetime2,
    creation_location_id integer NOT NULL
);


--
-- SQLINES DEMO *** ons; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE media_captions (
    id int NOT NULL,
    media_id integer NOT NULL,
    caption_type character varying(100),
    caption character varying(100),
    caption_author_id integer NOT NULL,
    "language" character varying(100),
    caption_size character varying(100)
);


--
-- SQLINES DEMO *** ons_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('media_captions', 'id'), 1, 0);


--
-- SQLINES DEMO *** nts; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE media_contents (
    id int NOT NULL,
    media_id integer NOT NULL,
    "object" character varying(100),
    format character varying(100),
    mime_type character varying(100),
    height character varying(100),
    width character varying(100),
    duration character varying(100),
    file_size character varying(100),
    resolution character varying(100)
);


--
-- SQLINES DEMO *** nts_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('media_contents', 'id'), 1, 0);


--
-- SQLINES DEMO *** q; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('media', 'id'), 1, 0);


--
-- SQLINES DEMO *** rds; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE media_keywords (
    id int NOT NULL,
    keyword character varying(100),
    media_id integer NOT NULL
);


--
-- SQLINES DEMO *** rds_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('media_keywords', 'id'), 1, 0);


--
-- SQLINES DEMO *** g_event_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE motor_racing_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state integer,
    sequence_number integer,
    lap character varying(100),
    laps_remaining character varying(100),
    time_elapsed character varying(100),
    flag_state character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** g_event_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('motor_racing_event_states', 'id'), 1, 0);


--
-- SQLINES DEMO *** g_qualifying_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE motor_racing_qualifying_stats (
    id int NOT NULL,
    grid character varying(100),
    pole_position character varying(100),
    pole_wins character varying(100),
    qualifying_speed character varying(100),
    qualifying_speed_units character varying(100),
    qualifying_time character varying(100),
    qualifying_position character varying(100)
);


--
-- SQLINES DEMO *** g_qualifying_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('motor_racing_qualifying_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** g_race_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE motor_racing_race_stats (
    id int NOT NULL,
    time_behind_leader character varying(100),
    laps_behind_leader character varying(100),
    time_ahead_follower character varying(100),
    laps_ahead_follower character varying(100),
    "time" character varying(100),
    points character varying(100),
    points_rookie character varying(100),
    bonus character varying(100),
    laps_completed character varying(100),
    laps_leading_total character varying(100),
    distance_leading character varying(100),
    distance_completed character varying(100),
    distance_units character varying(40),
    speed_average character varying(40),
    speed_units character varying(40),
    status character varying(40),
    finishes_top_5 character varying(40),
    finishes_top_10 character varying(40),
    starts character varying(40),
    finishes character varying(40),
    non_finishes character varying(40),
    wins character varying(40),
    races_leading character varying(40),
    money character varying(40),
    money_units character varying(40),
    leads_total character varying(40)
);


--
-- SQLINES DEMO *** g_race_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('motor_racing_race_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** als; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE outcome_totals (
    id int NOT NULL,
    standing_subgroup_id integer NOT NULL,
    outcome_holder_type character varying(100),
    outcome_holder_id integer,
    rank character varying(100),
    wins character varying(100),
    losses character varying(100),
    ties character varying(100),
    undecideds character varying(100),
    winning_percentage character varying(100),
    points_scored_for character varying(100),
    points_scored_against character varying(100),
    points_difference character varying(100),
    standing_points character varying(100),
    streak_type character varying(100),
    streak_duration character varying(100),
    streak_total character varying(100),
    streak_start date,
    streak_end date
);


--
-- SQLINES DEMO *** als_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('outcome_totals', 'id'), 1, 0);


--
-- SQLINES DEMO *** s_events; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE participants_events (
    id int NOT NULL,
    participant_type character varying(100) NOT NULL,
    participant_id integer NOT NULL,
    event_id integer NOT NULL,
    alignment character varying(100),
    score character varying(100),
    event_outcome character varying(100),
    rank integer
);


--
-- SQLINES DEMO *** s_events_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('participants_events', 'id'), 8700, 1);


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE periods (
    id int NOT NULL,
    participant_event_id integer NOT NULL,
    period_value character varying(100),
    score character varying(100)
);


--
-- SQLINES DEMO *** seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('periods', 'id'), 548, 1);


--
-- SQLINES DEMO *** t_metadata; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE person_event_metadata (
    id int NOT NULL,
    person_id integer NOT NULL,
    event_id integer NOT NULL,
    status character varying(100),
    health character varying(100),
    weight character varying(100),
    role_id integer,
    position_id integer,
    team_id integer,
    lineup_slot integer,
    lineup_slot_sequence integer
);


--
-- SQLINES DEMO *** t_metadata_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('person_event_metadata', 'id'), 4002, 1);


--
-- SQLINES DEMO *** es; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE person_phases (
    id int NOT NULL,
    person_id integer NOT NULL,
    membership_type character varying(40) NOT NULL,
    membership_id integer NOT NULL,
    role_id integer,
    role_status character varying(40),
    phase_status character varying(40),
    uniform_number character varying(20),
    regular_position_id integer,
    regular_position_depth character varying(40),
    height character varying(100),
    weight character varying(100),
    start_date_time datetime2,
    start_season_id integer,
    end_date_time datetime2,
    end_season_id integer,
    entry_reason character varying(40),
    exit_reason character varying(40),
    selection_level integer,
    selection_sublevel integer,
    selection_overall integer
);


--
-- SQLINES DEMO *** es_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('person_phases', 'id'), 1, 0);


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE persons (
    id int NOT NULL,
    person_key character varying(100) NOT NULL,
    publisher_id integer NOT NULL,
    gender character varying(20),
    birth_date character varying(30),
    death_date character varying(30),
    birth_location_id integer,
    hometown_location_id integer,
    residence_location_id integer,
    death_location_id integer
);


--
-- SQLINES DEMO *** uments; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE persons_documents (
    person_id integer NOT NULL,
    document_id integer NOT NULL
);


--
-- SQLINES DEMO *** seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('persons', 'id'), 3937, 1);


--
-- SQLINES DEMO *** ia; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE persons_media (
    person_id integer NOT NULL,
    media_id integer NOT NULL
);


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE positions (
    id int NOT NULL,
    affiliation_id integer NOT NULL,
    abbreviation character varying(100) NOT NULL
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('positions', 'id'), 73, 1);


--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE publishers (
    id int NOT NULL,
    publisher_key character varying(100) NOT NULL,
    publisher_name character varying(100)
);


--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('publishers', 'id'), 1, 1);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE roles (
    id int NOT NULL,
    role_key character varying(100) NOT NULL,
    role_name character varying(100),
    "comment" character varying(100)
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('roles', 'id'), 1, 0);


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE seasons (
    id int NOT NULL,
    season_key integer NOT NULL,
    publisher_id integer NOT NULL,
    league_id integer NOT NULL,
    start_date_time datetime2,
    end_date_time datetime2
);


--
-- SQLINES DEMO *** seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('seasons', 'id'), 4, 1);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE sites (
    id int NOT NULL,
    site_key integer NOT NULL,
    publisher_id integer NOT NULL,
    location_id integer
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('sites', 'id'), 1, 0);


--
-- SQLINES DEMO *** nsive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE soccer_defensive_stats (
    id int NOT NULL,
    shots_penalty_shot_allowed character varying(100),
    goals_penalty_shot_allowed character varying(100),
    goals_against_average character varying(100),
    goals_against_total character varying(100),
    saves character varying(100),
    save_percentage character varying(100),
    catches_punches character varying(100),
    shots_on_goal_total character varying(100),
    shots_shootout_total character varying(100),
    shots_shootout_allowed character varying(100),
    shots_blocked character varying(100),
    shutouts character varying(100)
);


--
-- SQLINES DEMO *** nsive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('soccer_defensive_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** t_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE soccer_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state integer,
    sequence_number integer,
    period_value character varying(100),
    period_time_elapsed character varying(100),
    period_time_remaining character varying(100),
    minutes_elapsed character varying(100),
    period_minute_elapsed character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** t_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('soccer_event_states', 'id'), 1, 0);


--
-- SQLINES DEMO *** _stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE soccer_foul_stats (
    id int NOT NULL,
    fouls_suffered character varying(100),
    fouls_commited character varying(100),
    cautions_total character varying(100),
    cautions_pending character varying(100),
    caution_points_total character varying(100),
    caution_points_pending character varying(100),
    ejections_total character varying(100)
);


--
-- SQLINES DEMO *** _stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('soccer_foul_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** nsive_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE soccer_offensive_stats (
    id int NOT NULL,
    goals_game_winning character varying(100),
    goals_game_tying character varying(100),
    goals_overtime character varying(100),
    goals_shootout character varying(100),
    goals_total character varying(100),
    assists_game_winning character varying(100),
    assists_game_tying character varying(100),
    assists_overtime character varying(100),
    assists_total character varying(100),
    points character varying(100),
    shots_total character varying(100),
    shots_on_goal_total character varying(100),
    shots_hit_frame character varying(100),
    shots_penalty_shot_taken character varying(100),
    shots_penalty_shot_scored character varying(100),
    shots_penalty_shot_missed character varying(40),
    shots_penalty_shot_percentage character varying(40),
    shots_shootout_taken character varying(40),
    shots_shootout_scored character varying(40),
    shots_shootout_missed character varying(40),
    shots_shootout_percentage character varying(40),
    giveaways character varying(40),
    offsides character varying(40),
    corner_kicks character varying(40),
    hat_tricks character varying(40)
);


--
-- SQLINES DEMO *** nsive_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('soccer_offensive_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** bgroups; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE standing_subgroups (
    id int NOT NULL,
    standing_id integer NOT NULL,
    affiliation_id integer NOT NULL
);


--
-- SQLINES DEMO *** bgroups_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('standing_subgroups', 'id'), 1, 0);


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE standings (
    id int NOT NULL,
    affiliation_id integer NOT NULL,
    standing_type character varying(100),
    sub_season_id integer NOT NULL,
    last_updated character varying(100),
    duration_scope character varying(100),
    competition_scope character varying(100),
    competition_scope_id character varying(100),
    alignment_scope character varying(100),
    site_scope character varying(100),
    scoping_label character varying(100),
    publisher_id integer NOT NULL,
    source character varying(100)
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('standings', 'id'), 1, 0);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE stats (
    id int NOT NULL,
    stat_repository_type character varying(100),
    stat_repository_id integer NOT NULL,
    stat_holder_type character varying(100),
    stat_holder_id integer,
    stat_coverage_type character varying(100),
    stat_coverage_id integer,
    context character varying(40) NOT NULL
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('stats', 'id'), 12211, 1);


--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE sub_periods (
    id int NOT NULL,
    period_id integer NOT NULL,
    sub_period_value character varying(100),
    score character varying(100)
);


--
-- SQLINES DEMO *** _id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('sub_periods', 'id'), 1, 0);


--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE sub_seasons (
    id int NOT NULL,
    sub_season_key character varying(100) NOT NULL,
    season_id integer NOT NULL,
    sub_season_type character varying(100) NOT NULL,
    start_date_time datetime2,
    end_date_time datetime2
);


--
-- SQLINES DEMO *** _id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('sub_seasons', 'id'), 4, 1);


--
-- SQLINES DEMO *** an_football_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE team_american_football_stats (
    id int NOT NULL,
    yards_per_attempt character varying(100),
    average_starting_position character varying(100),
    timeouts character varying(100),
    time_of_possession character varying(100),
    turnover_ratio character varying(100)
);


--
-- SQLINES DEMO *** an_football_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('team_american_football_stats', 'id'), 36, 1);


--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE team_phases (
    id int NOT NULL,
    team_id integer NOT NULL,
    start_season_id integer,
    end_season_id integer,
    affiliation_id integer NOT NULL,
    start_date_time character varying(100),
    end_date_time character varying(100),
    phase_status character varying(40),
    role_id integer
);


--
-- SQLINES DEMO *** _id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('team_phases', 'id'), 368, 1);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE teams (
    id int NOT NULL,
    team_key character varying(100) NOT NULL,
    publisher_id integer NOT NULL,
    home_site_id integer
);


--
-- SQLINES DEMO *** ents; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE teams_documents (
    team_id integer NOT NULL,
    document_id integer NOT NULL
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('teams', 'id'), 128, 1);


--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE teams_media (
    team_id integer NOT NULL,
    media_id integer NOT NULL
);


--
-- SQLINES DEMO *** on_points; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE tennis_action_points (
    id int NOT NULL,
    sub_period_id character varying(100),
    sequence_number character varying(100),
    win_type character varying(100)
);


--
-- SQLINES DEMO *** on_points_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('tennis_action_points', 'id'), 1, 0);


--
-- SQLINES DEMO *** on_volleys; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE tennis_action_volleys (
    id int NOT NULL,
    sequence_number character varying(100),
    tennis_action_points_id integer,
    landing_location character varying(100),
    swing_type character varying(100),
    result character varying(100),
    spin_type character varying(100),
    trajectory_details character varying(100)
);


--
-- SQLINES DEMO *** on_volleys_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('tennis_action_volleys', 'id'), 1, 0);


--
-- SQLINES DEMO *** t_states; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE tennis_event_states (
    id int NOT NULL,
    event_id integer NOT NULL,
    current_state integer,
    sequence_number integer,
    tennis_set character varying(100),
    game character varying(100),
    server_person_id integer,
    server_score character varying(100),
    receiver_person_id integer,
    receiver_score character varying(100),
    service_number character varying(100),
    context character varying(40)
);


--
-- SQLINES DEMO *** t_states_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('tennis_event_states', 'id'), 1, 0);


--
-- SQLINES DEMO *** rn_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE tennis_return_stats (
    id int NOT NULL,
    returns_played character varying(100),
    matches_played character varying(100),
    first_service_return_points_won character varying(100),
    first_service_return_points_won_pct character varying(100),
    second_service_return_points_won character varying(100),
    second_service_return_points_won_pct character varying(100),
    return_games_played character varying(100),
    return_games_won character varying(100),
    return_games_won_pct character varying(100),
    break_points_played character varying(100),
    break_points_converted character varying(100),
    break_points_converted_pct character varying(100)
);


--
-- SQLINES DEMO *** rn_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('tennis_return_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** ice_stats; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE tennis_service_stats (
    id int NOT NULL,
    services_played character varying(100),
    matches_played character varying(100),
    aces character varying(100),
    first_services_good character varying(100),
    first_services_good_pct character varying(100),
    first_service_points_won character varying(100),
    first_service_points_won_pct character varying(100),
    second_service_points_won character varying(100),
    second_service_points_won_pct character varying(100),
    service_games_played character varying(100),
    service_games_won character varying(100),
    service_games_won_pct character varying(100),
    break_points_played character varying(100),
    break_points_saved character varying(100),
    break_points_saved_pct character varying(100)
);


--
-- SQLINES DEMO *** ice_stats_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('tennis_service_stats', 'id'), 1, 0);


--
-- SQLINES DEMO *** neylines; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE wagering_moneylines (
    id int NOT NULL,
    bookmaker_id integer NOT NULL,
    event_id integer NOT NULL,
    date_time datetime2,
    team_id integer NOT NULL,
    person_id integer,
    rotation_key character varying(100),
    "comment" character varying(100),
    vigorish character varying(100),
    line character varying(100),
    line_opening character varying(100),
    prediction character varying(100)
);


--
-- SQLINES DEMO *** neylines_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('wagering_moneylines', 'id'), 1, 0);


--
-- SQLINES DEMO *** ds_lines; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE wagering_odds_lines (
    id int NOT NULL,
    bookmaker_id integer NOT NULL,
    event_id integer NOT NULL,
    date_time datetime2,
    team_id integer NOT NULL,
    person_id integer,
    rotation_key character varying(100),
    "comment" character varying(100),
    numerator character varying(100),
    denominator character varying(100),
    prediction character varying(100),
    payout_calculation character varying(100),
    payout_amount character varying(100)
);


--
-- SQLINES DEMO *** ds_lines_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('wagering_odds_lines', 'id'), 1, 0);


--
-- SQLINES DEMO *** nlines; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE wagering_runlines (
    id int NOT NULL,
    bookmaker_id integer NOT NULL,
    event_id integer NOT NULL,
    date_time datetime2,
    team_id integer NOT NULL,
    person_id integer,
    rotation_key character varying(100),
    "comment" character varying(100),
    vigorish character varying(100),
    line character varying(100),
    line_opening character varying(100),
    line_value character varying(100),
    prediction character varying(100)
);


--
-- SQLINES DEMO *** nlines_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('wagering_runlines', 'id'), 1, 0);


--
-- SQLINES DEMO *** raight_spread_lines; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE wagering_straight_spread_lines (
    id int NOT NULL,
    bookmaker_id integer NOT NULL,
    event_id integer NOT NULL,
    date_time datetime2,
    team_id integer NOT NULL,
    person_id integer,
    rotation_key character varying(100),
    "comment" character varying(100),
    vigorish character varying(100),
    line_value character varying(100),
    line_value_opening character varying(100),
    prediction character varying(100)
);


--
-- SQLINES DEMO *** raight_spread_lines_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('wagering_straight_spread_lines', 'id'), 1, 0);


--
-- SQLINES DEMO *** tal_score_lines; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE wagering_total_score_lines (
    id int NOT NULL,
    bookmaker_id integer NOT NULL,
    event_id integer NOT NULL,
    date_time datetime2,
    team_id integer NOT NULL,
    person_id integer,
    rotation_key character varying(100),
    "comment" character varying(100),
    vigorish character varying(100),
    line_over character varying(100),
    line_under character varying(100),
    total character varying(100),
    total_opening character varying(100),
    prediction character varying(100)
);


--
-- SQLINES DEMO *** tal_score_lines_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('wagering_total_score_lines', 'id'), 1, 0);


--
-- SQLINES DEMO *** ditions; Type: TABLE; Schema: dbo; Owner: postgres81; Tablespace:
--

CREATE TABLE weather_conditions (
    id int NOT NULL,
    event_id integer NOT NULL,
    temperature character varying(100),
    temperature_units character varying(40),
    humidity character varying(100),
    clouds character varying(100),
    wind_direction character varying(100),
    wind_velocity character varying(100),
    weather_code character varying(100)
);


--
-- SQLINES DEMO *** ditions_id_seq; Type: SEQUENCE SET; Schema: dbo; Owner: postgres81
--

-- SQLINES LICENSE FOR EVALUATION USE 
SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('weather_conditions', 'id'), 1, 0);

--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  addresses
    ADD CONSTRAINT addresses_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _phases_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  affiliation_phases
    ADD CONSTRAINT affiliation_phases_id_key UNIQUE (id);
--
-- SQLINES DEMO *** s_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  affiliations
    ADD CONSTRAINT affiliations_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_action_participants_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_action_participants
    ADD CONSTRAINT american_football_action_participants_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_action_plays_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_action_plays
    ADD CONSTRAINT american_football_action_plays_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_defensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_defensive_stats
    ADD CONSTRAINT american_football_defensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_down_progress_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_down_progress_stats
    ADD CONSTRAINT american_football_down_progress_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_event_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_event_states
    ADD CONSTRAINT american_football_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_fumbles_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_fumbles_stats
    ADD CONSTRAINT american_football_fumbles_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_offensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_offensive_stats
    ADD CONSTRAINT american_football_offensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_passing_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_passing_stats
    ADD CONSTRAINT american_football_passing_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_penalties_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_penalties_stats
    ADD CONSTRAINT american_football_penalties_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_rushing_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_rushing_stats
    ADD CONSTRAINT american_football_rushing_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_sacks_against_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_sacks_against_stats
    ADD CONSTRAINT american_football_sacks_against_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_scoring_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_scoring_stats
    ADD CONSTRAINT american_football_scoring_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** otball_special_teams_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  american_football_special_teams_stats
    ADD CONSTRAINT american_football_special_teams_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tion_contact_details_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_action_contact_details
    ADD CONSTRAINT baseball_action_contact_details_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tion_pitches_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_action_pitches
    ADD CONSTRAINT baseball_action_pitches_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tion_plays_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_action_plays
    ADD CONSTRAINT baseball_action_plays_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tion_substitutions_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT baseball_action_substitutions_id_key UNIQUE (id);
--
-- SQLINES DEMO *** fensive_group_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_defensive_group
    ADD CONSTRAINT baseball_defensive_group_id_key UNIQUE (id);
--
-- SQLINES DEMO *** fensive_players_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_defensive_players
    ADD CONSTRAINT baseball_defensive_players_id_key UNIQUE (id);
--
-- SQLINES DEMO *** fensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_defensive_stats
    ADD CONSTRAINT baseball_defensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ent_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT baseball_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** fensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_offensive_stats
    ADD CONSTRAINT baseball_offensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tching_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  baseball_pitching_stats
    ADD CONSTRAINT baseball_pitching_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** defensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  basketball_defensive_stats
    ADD CONSTRAINT basketball_defensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** event_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  basketball_event_states
    ADD CONSTRAINT basketball_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** offensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  basketball_offensive_stats
    ADD CONSTRAINT basketball_offensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** rebounding_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  basketball_rebounding_stats
    ADD CONSTRAINT basketball_rebounding_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** team_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  basketball_team_stats
    ADD CONSTRAINT basketball_team_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  bookmakers
    ADD CONSTRAINT bookmakers_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  core_person_stats
    ADD CONSTRAINT core_person_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  core_stats
    ADD CONSTRAINT core_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** es_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  display_names
    ADD CONSTRAINT display_names_id_key UNIQUE (id);
--
-- SQLINES DEMO *** asses_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_classes
    ADD CONSTRAINT document_classes_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ntents_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_contents
    ADD CONSTRAINT document_contents_id_key UNIQUE (id);
--
-- SQLINES DEMO *** xtures_events_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_fixtures_events
    ADD CONSTRAINT document_fixtures_events_id_key UNIQUE (id);
--
-- SQLINES DEMO *** xtures_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_fixtures
    ADD CONSTRAINT document_fixtures_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ckage_entry_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_package_entry
    ADD CONSTRAINT document_package_entry_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ckages_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  document_packages
    ADD CONSTRAINT document_packages_id_key UNIQUE (id);
--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  documents
    ADD CONSTRAINT documents_id_key UNIQUE (id);
--
-- SQLINES DEMO *** edia_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  documents_media
    ADD CONSTRAINT documents_media_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ey; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  events
    ADD CONSTRAINT events_id_key UNIQUE (id);
--
-- SQLINES DEMO *** action_participants_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_action_participants
    ADD CONSTRAINT ice_hockey_action_participants_id_key UNIQUE (id);
--
-- SQLINES DEMO *** action_plays_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_action_plays
    ADD CONSTRAINT ice_hockey_action_plays_id_key UNIQUE (id);
--
-- SQLINES DEMO *** defensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_defensive_stats
    ADD CONSTRAINT ice_hockey_defensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** event_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_event_states
    ADD CONSTRAINT ice_hockey_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** offensive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_offensive_stats
    ADD CONSTRAINT ice_hockey_offensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** player_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  ice_hockey_player_stats
    ADD CONSTRAINT ice_hockey_player_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** es_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  injury_phases
    ADD CONSTRAINT injury_phases_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  key_aliases
    ADD CONSTRAINT key_aliases_id_key UNIQUE (id);
--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  key_roots
    ADD CONSTRAINT key_roots_id_key UNIQUE (id);
--
-- SQLINES DEMO *** sions_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  latest_revisions
    ADD CONSTRAINT latest_revisions_id_key UNIQUE (id);
--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  locations
    ADD CONSTRAINT locations_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ons_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  media_captions
    ADD CONSTRAINT media_captions_id_key UNIQUE (id);
--
-- SQLINES DEMO *** nts_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  media_contents
    ADD CONSTRAINT media_contents_id_key UNIQUE (id);
--
-- SQLINES DEMO *** y; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  media
    ADD CONSTRAINT media_id_key UNIQUE (id);
--
-- SQLINES DEMO *** rds_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  media_keywords
    ADD CONSTRAINT media_keywords_id_key UNIQUE (id);
--
-- SQLINES DEMO *** g_event_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  motor_racing_event_states
    ADD CONSTRAINT motor_racing_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** g_qualifying_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  motor_racing_qualifying_stats
    ADD CONSTRAINT motor_racing_qualifying_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** g_race_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  motor_racing_race_stats
    ADD CONSTRAINT motor_racing_race_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** als_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  outcome_totals
    ADD CONSTRAINT outcome_totals_id_key UNIQUE (id);
--
-- SQLINES DEMO *** s_events_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  participants_events
    ADD CONSTRAINT participants_events_id_key UNIQUE (id);
--
-- SQLINES DEMO *** key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  periods
    ADD CONSTRAINT periods_id_key UNIQUE (id);
--
-- SQLINES DEMO *** t_metadata_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT person_event_metadata_id_key UNIQUE (id);
--
-- SQLINES DEMO *** es_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  person_phases
    ADD CONSTRAINT person_phases_id_key UNIQUE (id);
--
-- SQLINES DEMO *** key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  persons
    ADD CONSTRAINT persons_id_key UNIQUE (id);
--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  positions
    ADD CONSTRAINT positions_id_key UNIQUE (id);
--
-- SQLINES DEMO *** id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  publishers
    ADD CONSTRAINT publishers_id_key UNIQUE (id);
--
-- SQLINES DEMO *** y; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  roles
    ADD CONSTRAINT roles_id_key UNIQUE (id);
--
-- SQLINES DEMO *** key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  seasons
    ADD CONSTRAINT seasons_id_key UNIQUE (id);
--
-- SQLINES DEMO *** y; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  sites
    ADD CONSTRAINT sites_id_key UNIQUE (id);
--
-- SQLINES DEMO *** nsive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  soccer_defensive_stats
    ADD CONSTRAINT soccer_defensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** t_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  soccer_event_states
    ADD CONSTRAINT soccer_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  soccer_foul_stats
    ADD CONSTRAINT soccer_foul_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** nsive_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  soccer_offensive_stats
    ADD CONSTRAINT soccer_offensive_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** bgroups_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  standing_subgroups
    ADD CONSTRAINT standing_subgroups_id_key UNIQUE (id);
--
-- SQLINES DEMO *** d_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  standings
    ADD CONSTRAINT standings_id_key UNIQUE (id);
--
-- SQLINES DEMO *** y; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  stats
    ADD CONSTRAINT stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  sub_periods
    ADD CONSTRAINT sub_periods_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  sub_seasons
    ADD CONSTRAINT sub_seasons_id_key UNIQUE (id);
--
-- SQLINES DEMO *** an_football_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  team_american_football_stats
    ADD CONSTRAINT team_american_football_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** _id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  team_phases
    ADD CONSTRAINT team_phases_id_key UNIQUE (id);
--
-- SQLINES DEMO *** y; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  teams
    ADD CONSTRAINT teams_id_key UNIQUE (id);
--
-- SQLINES DEMO *** on_points_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  tennis_action_points
    ADD CONSTRAINT tennis_action_points_id_key UNIQUE (id);
--
-- SQLINES DEMO *** on_volleys_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  tennis_action_volleys
    ADD CONSTRAINT tennis_action_volleys_id_key UNIQUE (id);
--
-- SQLINES DEMO *** t_states_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  tennis_event_states
    ADD CONSTRAINT tennis_event_states_id_key UNIQUE (id);
--
-- SQLINES DEMO *** rn_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  tennis_return_stats
    ADD CONSTRAINT tennis_return_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ice_stats_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  tennis_service_stats
    ADD CONSTRAINT tennis_service_stats_id_key UNIQUE (id);
--
-- SQLINES DEMO *** neylines_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  wagering_moneylines
    ADD CONSTRAINT wagering_moneylines_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ds_lines_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  wagering_odds_lines
    ADD CONSTRAINT wagering_odds_lines_id_key UNIQUE (id);
--
-- SQLINES DEMO *** nlines_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  wagering_runlines
    ADD CONSTRAINT wagering_runlines_id_key UNIQUE (id);
--
-- SQLINES DEMO *** raight_spread_lines_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  wagering_straight_spread_lines
    ADD CONSTRAINT wagering_straight_spread_lines_id_key UNIQUE (id);
--
-- SQLINES DEMO *** tal_score_lines_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  wagering_total_score_lines
    ADD CONSTRAINT wagering_total_score_lines_id_key UNIQUE (id);
--
-- SQLINES DEMO *** ditions_id_key; Type: CONSTRAINT; Schema: dbo; Owner: postgres81; Tablespace:
--
ALTER TABLE  weather_conditions
    ADD CONSTRAINT weather_conditions_id_key UNIQUE (id);
--
-- SQLINES DEMO *** es_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_addresses_1 ON addresses USING dbo.btree (locality);
--
-- SQLINES DEMO *** es_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_addresses_2 ON addresses USING dbo.btree (region);
--
-- SQLINES DEMO *** es_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_addresses_3 ON addresses USING dbo.btree (postal_code);
--
-- SQLINES DEMO *** tions_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_affiliations_1 ON affiliations USING dbo.btree (affiliation_key);
--
-- SQLINES DEMO *** tions_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_affiliations_2 ON affiliations USING dbo.btree (affiliation_type);
--
-- SQLINES DEMO *** n_football_action_participants_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_action_participants_1 ON american_football_action_participants USING dbo.btree (participant_role);
--
-- SQLINES DEMO *** n_football_action_participants_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_action_participants_2 ON american_football_action_participants USING dbo.btree (score_type);
--
-- SQLINES DEMO *** n_football_action_plays_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_action_plays_1 ON american_football_action_plays USING dbo.btree (play_type);
--
-- SQLINES DEMO *** n_football_action_plays_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_action_plays_2 ON american_football_action_plays USING dbo.btree (score_attempt_type);
--
-- SQLINES DEMO *** n_football_action_plays_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_action_plays_3 ON american_football_action_plays USING dbo.btree (drive_result);
--
-- SQLINES DEMO *** n_football_event_states_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_american_football_event_states_1 ON american_football_event_states USING dbo.btree (current_state);
--
-- SQLINES DEMO *** l_action_pitches_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_baseball_action_pitches_1 ON baseball_action_pitches USING dbo.btree (umpire_call);
--
-- SQLINES DEMO *** l_action_pitches_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_baseball_action_pitches_2 ON baseball_action_pitches USING dbo.btree (pitch_type);
--
-- SQLINES DEMO *** l_action_plays_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_baseball_action_plays_1 ON baseball_action_plays USING dbo.btree (play_type);
--
-- SQLINES DEMO *** l_event_states_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_baseball_event_states_1 ON baseball_event_states USING dbo.btree (current_state);
--
-- SQLINES DEMO *** _1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_db_info_1 ON db_info USING dbo.btree (version);
--
-- SQLINES DEMO *** t_classes_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_document_classes_1 ON document_classes USING dbo.btree (name);
--
-- SQLINES DEMO *** t_fixtures_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_document_fixtures_1 ON document_fixtures USING dbo.btree (fixture_key);
--
-- SQLINES DEMO *** ts_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_documents_1 ON documents USING dbo.btree (doc_id);
--
-- SQLINES DEMO *** ts_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_documents_3 ON documents USING dbo.btree (date_time);
--
-- SQLINES DEMO *** ts_4; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_documents_4 ON documents USING dbo.btree (priority);
--
-- SQLINES DEMO *** ts_5; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_documents_5 ON documents USING dbo.btree (revision_id);
--
-- SQLINES DEMO *** 1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_events_1 ON events USING dbo.btree (event_key);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_add_loc_id__loc_id ON addresses USING dbo.btree (location_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_aff_pub_id__pub_id ON affiliations USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id ON american_football_action_participants USING dbo.btree (american_football_action_play_id);
--
-- SQLINES DEMO *** foo_act_par_per_id__per_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_ame_foo_act_par_per_id__per_id ON american_football_action_participants USING dbo.btree (person_id);
--
-- SQLINES DEMO *** foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id ON american_football_action_plays USING dbo.btree (american_football_event_state_id);
--
-- SQLINES DEMO *** foo_eve_sta_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_ame_foo_eve_sta_eve_id__eve_id ON american_football_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** act_pit_bas_def_gro_id__bas_def_gro_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_bas_act_pit_bas_def_gro_id__bas_def_gro_id ON baseball_action_pitches USING dbo.btree (baseball_defensive_group_id);
--
-- SQLINES DEMO *** act_pla_bas_eve_sta_id__bas_eve_sta_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id ON baseball_action_plays USING dbo.btree (baseball_event_state_id);
--
-- SQLINES DEMO *** eve_sta_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_bas_eve_sta_eve_id__eve_id ON baseball_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** con_doc_id__doc_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_con_doc_id__doc_id ON document_contents USING dbo.btree (document_id);
--
-- SQLINES DEMO *** doc_fix_id__doc_fix_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_doc_fix_id__doc_fix_id ON documents USING dbo.btree (document_fixture_id);
--
-- SQLINES DEMO *** fix_doc_cla_id__doc_cla_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_fix_doc_cla_id__doc_cla_id ON document_fixtures USING dbo.btree (document_class_id);
--
-- SQLINES DEMO *** fix_eve_doc_fix_id__doc_fix_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_fix_eve_doc_fix_id__doc_fix_id ON document_fixtures_events USING dbo.btree (document_fixture_id);
--
-- SQLINES DEMO *** fix_eve_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_fix_eve_eve_id__eve_id ON document_fixtures_events USING dbo.btree (event_id);
--
-- SQLINES DEMO *** fix_eve_lat_doc_id__doc_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_fix_eve_lat_doc_id__doc_id ON document_fixtures_events USING dbo.btree (latest_document_id);
--
-- SQLINES DEMO *** fix_pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_fix_pub_id__pub_id ON document_fixtures USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_pub_id__pub_id ON documents USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** sou_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_doc_sou_id__pub_id ON documents USING dbo.btree (source_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_eve_pub_id__pub_id ON events USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** sit_id__sit_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_eve_sit_id__sit_id ON events USING dbo.btree (site_id);
--
-- SQLINES DEMO *** ts_basketball_event_states; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_events_basketball_event_states ON basketball_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** ts_motor_racing_event_states; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_events_motor_racing_event_states ON motor_racing_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** ts_soccer_event_states; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_events_soccer_event_states ON soccer_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** ts_tennis_event_states; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_events_tennis_event_states ON tennis_event_states USING dbo.btree (event_id);
--
-- SQLINES DEMO *** pha_per_id__per_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_inj_pha_per_id__per_id ON injury_phases USING dbo.btree (person_id);
--
-- SQLINES DEMO *** pha_sea_id__sea_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_inj_pha_sea_id__sea_id ON injury_phases USING dbo.btree (season_id);
--
-- SQLINES DEMO *** rev_lat_doc_id__doc_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_lat_rev_lat_doc_id__doc_id ON latest_revisions USING dbo.btree (latest_document_id);
--
-- SQLINES DEMO *** eve_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_par_eve_eve_id__eve_id ON participants_events USING dbo.btree (event_id);
--
-- SQLINES DEMO *** eve_met_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_eve_met_eve_id__eve_id ON person_event_metadata USING dbo.btree (event_id);
--
-- SQLINES DEMO *** eve_met_per_id__per_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_eve_met_per_id__per_id ON person_event_metadata USING dbo.btree (person_id);
--
-- SQLINES DEMO *** eve_met_pos_id__pos_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_eve_met_pos_id__pos_id ON person_event_metadata USING dbo.btree (position_id);
--
-- SQLINES DEMO *** eve_met_rol_id__rol_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_eve_met_rol_id__rol_id ON person_event_metadata USING dbo.btree (role_id);
--
-- SQLINES DEMO *** par_eve_id__par_eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_par_eve_id__par_eve_id ON periods USING dbo.btree (participant_event_id);
--
-- SQLINES DEMO *** pha_per_id__per_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_pha_per_id__per_id ON person_phases USING dbo.btree (person_id);
--
-- SQLINES DEMO *** pha_reg_pos_id__pos_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_pha_reg_pos_id__pos_id ON person_phases USING dbo.btree (regular_position_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_per_pub_id__pub_id ON persons USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** aff_id__aff_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_pos_aff_id__aff_id ON positions USING dbo.btree (affiliation_id);
--
-- SQLINES DEMO *** lea_id__aff_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sea_lea_id__aff_id ON seasons USING dbo.btree (league_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sea_pub_id__pub_id ON seasons USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sit_loc_id__loc_id ON sites USING dbo.btree (location_id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sit_pub_id__pub_id ON sites USING dbo.btree (publisher_id);
--
-- SQLINES DEMO *** per_per_id__per_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sub_per_per_id__per_id ON sub_periods USING dbo.btree (period_id);
--
-- SQLINES DEMO *** sea_sea_id__sea_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_sub_sea_sea_id__sea_id ON sub_seasons USING dbo.btree (season_id);
--
-- SQLINES DEMO *** s_person_event_metadata; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_teams_person_event_metadata ON person_event_metadata USING dbo.btree (team_id);
--
-- SQLINES DEMO *** con_eve_id__eve_id; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_fk_wea_con_eve_id__eve_id ON weather_conditions USING dbo.btree (event_id);
--
-- SQLINES DEMO *** phases_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_injury_phases_2 ON injury_phases USING dbo.btree (injury_status);
--
-- SQLINES DEMO *** phases_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_injury_phases_3 ON injury_phases USING dbo.btree (start_date_time);
--
-- SQLINES DEMO *** phases_4; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_injury_phases_4 ON injury_phases USING dbo.btree (end_date_time);
--
-- SQLINES DEMO *** ases_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_key_aliases_1 ON key_roots USING dbo.btree (key_type);
--
-- SQLINES DEMO *** ases_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_key_aliases_2 ON key_aliases USING dbo.btree (key_id);
--
-- SQLINES DEMO *** revisions_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_latest_revisions_1 ON latest_revisions USING dbo.btree (revision_id);
--
-- SQLINES DEMO *** ns_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_locations_1 ON locations USING dbo.btree (country_code);
--
-- SQLINES DEMO *** pants_events_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_participants_events_1 ON participants_events USING dbo.btree (participant_type);
--
-- SQLINES DEMO *** pants_events_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_participants_events_2 ON participants_events USING dbo.btree (participant_id);
--
-- SQLINES DEMO *** pants_events_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_participants_events_3 ON participants_events USING dbo.btree (alignment);
--
-- SQLINES DEMO *** pants_events_4; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_participants_events_4 ON participants_events USING dbo.btree (event_outcome);
--
-- SQLINES DEMO *** event_metadata_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_person_event_metadata_1 ON person_event_metadata USING dbo.btree (status);
--
-- SQLINES DEMO *** phases_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_person_phases_1 ON person_phases USING dbo.btree (membership_type);
--
-- SQLINES DEMO *** phases_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_person_phases_2 ON person_phases USING dbo.btree (membership_id);
--
-- SQLINES DEMO *** phases_3; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_person_phases_3 ON person_phases USING dbo.btree (phase_status);
--
-- SQLINES DEMO *** _1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_persons_1 ON persons USING dbo.btree (person_key);
--
-- SQLINES DEMO *** ns_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_positions_1 ON positions USING dbo.btree (abbreviation);
--
-- SQLINES DEMO *** ers_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_publishers_1 ON publishers USING dbo.btree (publisher_key);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_roles_1 ON roles USING dbo.btree (role_key);
--
-- SQLINES DEMO *** _1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_seasons_1 ON seasons USING dbo.btree (season_key);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_sites_1 ON sites USING dbo.btree (site_key);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_1 ON stats USING dbo.btree (stat_repository_type);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_2 ON stats USING dbo.btree (stat_repository_id);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_3 ON stats USING dbo.btree (stat_holder_type);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_4 ON stats USING dbo.btree (stat_holder_id);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_5 ON stats USING dbo.btree (stat_coverage_type);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_6 ON stats USING dbo.btree (stat_coverage_id);
--
-- SQLINES DEMO *** ; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_stats_7 ON stats USING dbo.btree (context);
--
-- SQLINES DEMO *** sons_1; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_sub_seasons_1 ON sub_seasons USING dbo.btree (sub_season_key);
--
-- SQLINES DEMO *** sons_2; Type: INDEX; Schema: dbo; Owner: postgres81; Tablespace:
--
--CREATE INDEX idx_sub_seasons_2 ON sub_seasons USING dbo.btree (sub_season_type);
--
-- SQLINES DEMO *** id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  addresses
    ADD CONSTRAINT fk_add_loc_id__loc_id FOREIGN KEY (location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** aff_id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_documents
    ADD CONSTRAINT fk_aff_doc_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_documents
    ADD CONSTRAINT fk_aff_doc_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** aff_id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_events
    ADD CONSTRAINT fk_aff_eve_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_events
    ADD CONSTRAINT fk_aff_eve_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** aff_id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_media
    ADD CONSTRAINT fk_aff_med_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations_media
    ADD CONSTRAINT fk_aff_med_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliations
    ADD CONSTRAINT fk_aff_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** ions_affiliation_phases; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliation_phases
    ADD CONSTRAINT fk_affiliations_affiliation_phases FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** ions_affiliation_phases1; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliation_phases
    ADD CONSTRAINT fk_affiliations_affiliation_phases1 FOREIGN KEY (ancestor_affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** act_par_ame_foo_act_pla_id__ame_foo_act_pla_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  american_football_action_participants
    ADD CONSTRAINT fk_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id FOREIGN KEY (american_football_action_play_id) REFERENCES dbo.american_football_action_plays(id);
--
-- SQLINES DEMO *** act_par_per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  american_football_action_participants
    ADD CONSTRAINT fk_ame_foo_act_par_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  american_football_action_plays
    ADD CONSTRAINT fk_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id FOREIGN KEY (american_football_event_state_id) REFERENCES dbo.american_football_event_states(id);
--
-- SQLINES DEMO *** eve_sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  american_football_event_states
    ADD CONSTRAINT fk_ame_foo_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** eve_sta_tea_in_pos_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  american_football_event_states
    ADD CONSTRAINT fk_ame_foo_eve_sta_tea_in_pos_id__tea_id FOREIGN KEY (team_in_possession_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** con_det_bas_act_pit_id__bas_act_pit_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_contact_details
    ADD CONSTRAINT fk_bas_act_con_det_bas_act_pit_id__bas_act_pit_id FOREIGN KEY (baseball_action_pitch_id) REFERENCES dbo.baseball_action_pitches(id);
--
-- SQLINES DEMO *** pit_bas_def_gro_id__bas_def_gro_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_pitches
    ADD CONSTRAINT fk_bas_act_pit_bas_def_gro_id__bas_def_gro_id FOREIGN KEY (baseball_defensive_group_id) REFERENCES dbo.baseball_defensive_group(id);
--
-- SQLINES DEMO *** pla_bas_eve_sta_id__bas_eve_sta_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_plays
    ADD CONSTRAINT fk_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id FOREIGN KEY (baseball_event_state_id) REFERENCES dbo.baseball_event_states(id);
--
-- SQLINES DEMO *** sub_bas_eve_sta_id__bas_eve_sta_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT fk_bas_act_sub_bas_eve_sta_id__bas_eve_sta_id FOREIGN KEY (baseball_event_state_id) REFERENCES dbo.baseball_event_states(id);
--
-- SQLINES DEMO *** sub_per_ori_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT fk_bas_act_sub_per_ori_id__per_id FOREIGN KEY (person_original_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sub_per_ori_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT fk_bas_act_sub_per_ori_pos_id__pos_id FOREIGN KEY (person_original_position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** sub_per_rep_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT fk_bas_act_sub_per_rep_id__per_id FOREIGN KEY (person_replacing_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sub_per_rep_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_substitutions
    ADD CONSTRAINT fk_bas_act_sub_per_rep_pos_id__pos_id FOREIGN KEY (person_replacing_position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** pla_bas_def_gro_id__bas_def_gro_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_defensive_players
    ADD CONSTRAINT fk_bas_def_pla_bas_def_gro_id__bas_def_gro_id FOREIGN KEY (baseball_defensive_group_id) REFERENCES dbo.baseball_defensive_group(id);
--
-- SQLINES DEMO *** pla_pla_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_defensive_players
    ADD CONSTRAINT fk_bas_def_pla_pla_id__per_id FOREIGN KEY (player_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** pla_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_defensive_players
    ADD CONSTRAINT fk_bas_def_pla_pos_id__pos_id FOREIGN KEY (position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** sta_bat_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_bat_id__per_id FOREIGN KEY (batter_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** sta_pit_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_pit_id__per_id FOREIGN KEY (pitcher_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sta_run_on_fir_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_run_on_fir_id__per_id FOREIGN KEY (runner_on_first_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sta_run_on_sec_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_run_on_sec_id__per_id FOREIGN KEY (runner_on_second_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sta_run_on_thi_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_event_states
    ADD CONSTRAINT fk_bas_eve_sta_run_on_thi_id__per_id FOREIGN KEY (runner_on_third_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** _action_plays_baseball_action_pitches; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  baseball_action_pitches
    ADD CONSTRAINT fk_baseball_action_plays_baseball_action_pitches FOREIGN KEY (baseball_action_play_id) REFERENCES dbo.baseball_action_plays(id);
--
-- SQLINES DEMO *** _sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  basketball_event_states
    ADD CONSTRAINT fk_bask_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  bookmakers
    ADD CONSTRAINT fk_boo_loc_id__loc_id FOREIGN KEY (location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  bookmakers
    ADD CONSTRAINT fk_boo_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** sta_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  core_person_stats
    ADD CONSTRAINT fk_cor_per_sta_pos_id__pos_id FOREIGN KEY (position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_contents
    ADD CONSTRAINT fk_doc_con_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** fix_id__doc_fix_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents
    ADD CONSTRAINT fk_doc_doc_fix_id__doc_fix_id FOREIGN KEY (document_fixture_id) REFERENCES dbo.document_fixtures(id);
--
-- SQLINES DEMO *** doc_cla_id__doc_cla_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_fixtures
    ADD CONSTRAINT fk_doc_fix_doc_cla_id__doc_cla_id FOREIGN KEY (document_class_id) REFERENCES dbo.document_classes(id);
--
-- SQLINES DEMO *** eve_doc_fix_id__doc_fix_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_fixtures_events
    ADD CONSTRAINT fk_doc_fix_eve_doc_fix_id__doc_fix_id FOREIGN KEY (document_fixture_id) REFERENCES dbo.document_fixtures(id);
--
-- SQLINES DEMO *** eve_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_fixtures_events
    ADD CONSTRAINT fk_doc_fix_eve_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** eve_lat_doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_fixtures_events
    ADD CONSTRAINT fk_doc_fix_eve_lat_doc_id__doc_id FOREIGN KEY (latest_document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** pub_id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_fixtures
    ADD CONSTRAINT fk_doc_fix_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents_media
    ADD CONSTRAINT fk_doc_med_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** med_cap_id__med_cap_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents_media
    ADD CONSTRAINT fk_doc_med_med_cap_id__med_cap_id FOREIGN KEY (media_caption_id) REFERENCES dbo.media_captions(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents_media
    ADD CONSTRAINT fk_doc_med_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** ent_doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_package_entry
    ADD CONSTRAINT fk_doc_pac_ent_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** ent_doc_pac_id__doc_pac_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  document_package_entry
    ADD CONSTRAINT fk_doc_pac_ent_doc_pac_id__doc_pac_id FOREIGN KEY (document_package_id) REFERENCES dbo.document_packages(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents
    ADD CONSTRAINT fk_doc_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  documents
    ADD CONSTRAINT fk_doc_sou_id__pub_id FOREIGN KEY (source_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_documents
    ADD CONSTRAINT fk_eve_doc_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_documents
    ADD CONSTRAINT fk_eve_doc_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_media
    ADD CONSTRAINT fk_eve_med_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_media
    ADD CONSTRAINT fk_eve_med_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events
    ADD CONSTRAINT fk_eve_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** id__sit_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events
    ADD CONSTRAINT fk_eve_sit_id__sit_id FOREIGN KEY (site_id) REFERENCES dbo.sites(id);
--
-- SQLINES DEMO *** sea_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_sub_seasons
    ADD CONSTRAINT fk_eve_sub_sea_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** sea_sub_sea_id__sub_sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  events_sub_seasons
    ADD CONSTRAINT fk_eve_sub_sea_sub_sea_id__sub_sea_id FOREIGN KEY (sub_season_id) REFERENCES dbo.sub_seasons(id);
--
-- SQLINES DEMO *** eve_sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  ice_hockey_event_states
    ADD CONSTRAINT fk_ice_hoc_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  injury_phases
    ADD CONSTRAINT fk_inj_pha_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  injury_phases
    ADD CONSTRAINT fk_inj_pha_sea_id__sea_id FOREIGN KEY (season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** s_key_aliases; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  key_aliases
    ADD CONSTRAINT fk_key_roots_key_aliases FOREIGN KEY (key_root_id) REFERENCES KEY_roots(id);
--
-- SQLINES DEMO *** lat_doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  latest_revisions
    ADD CONSTRAINT fk_lat_rev_lat_doc_id__doc_id FOREIGN KEY (latest_document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** cap_aut_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media_captions
    ADD CONSTRAINT fk_med_cap_cap_aut_id__per_id FOREIGN KEY (caption_author_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media_captions
    ADD CONSTRAINT fk_med_cap_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media_contents
    ADD CONSTRAINT fk_med_con_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media
    ADD CONSTRAINT fk_med_cre_id__per_id FOREIGN KEY (credit_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media
    ADD CONSTRAINT fk_med_cre_loc_id__loc_id FOREIGN KEY (creation_location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media_keywords
    ADD CONSTRAINT fk_med_key_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  media
    ADD CONSTRAINT fk_med_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** eve_sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  motor_racing_event_states
    ADD CONSTRAINT fk_mot_rac_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** sta_sub_id__sta_sub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  outcome_totals
    ADD CONSTRAINT fk_out_tot_sta_sub_id__sta_sub_id FOREIGN KEY (standing_subgroup_id) REFERENCES dbo.standing_subgroups(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  participants_events
    ADD CONSTRAINT fk_par_eve_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons
    ADD CONSTRAINT fk_per_bir_loc_id__loc_id FOREIGN KEY (birth_location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons
    ADD CONSTRAINT fk_per_dea_loc_id__loc_id FOREIGN KEY (death_location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons_documents
    ADD CONSTRAINT fk_per_doc_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons_documents
    ADD CONSTRAINT fk_per_doc_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** met_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT fk_per_eve_met_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** met_per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT fk_per_eve_met_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** met_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT fk_per_eve_met_pos_id__pos_id FOREIGN KEY (position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** met_rol_id__rol_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT fk_per_eve_met_rol_id__rol_id FOREIGN KEY (role_id) REFERENCES dbo.roles(id);
--
-- SQLINES DEMO *** met_tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_event_metadata
    ADD CONSTRAINT fk_per_eve_met_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons
    ADD CONSTRAINT fk_per_hom_loc_id__loc_id FOREIGN KEY (hometown_location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons_media
    ADD CONSTRAINT fk_per_med_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons_media
    ADD CONSTRAINT fk_per_med_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** eve_id__par_eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  periods
    ADD CONSTRAINT fk_per_par_eve_id__par_eve_id FOREIGN KEY (participant_event_id) REFERENCES dbo.participants_events(id);
--
-- SQLINES DEMO *** end_sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_phases
    ADD CONSTRAINT fk_per_pha_end_sea_id__sea_id FOREIGN KEY (end_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_phases
    ADD CONSTRAINT fk_per_pha_per_id__per_id FOREIGN KEY (person_id) REFERENCES dbo.persons(id);
--
-- SQLINES DEMO *** reg_pos_id__pos_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_phases
    ADD CONSTRAINT fk_per_pha_reg_pos_id__pos_id FOREIGN KEY (regular_position_id) REFERENCES dbo.positions(id);
--
-- SQLINES DEMO *** rol_id__rol_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_phases
    ADD CONSTRAINT fk_per_pha_rol_id__rol_id FOREIGN KEY (role_id) REFERENCES dbo.roles(id);
--
-- SQLINES DEMO *** sta_sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  person_phases
    ADD CONSTRAINT fk_per_pha_sta_sea_id__sea_id FOREIGN KEY (start_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons
    ADD CONSTRAINT fk_per_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** loc_id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  persons
    ADD CONSTRAINT fk_per_res_loc_id__loc_id FOREIGN KEY (residence_location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  positions
    ADD CONSTRAINT fk_pos_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  seasons
    ADD CONSTRAINT fk_sea_lea_id__aff_id FOREIGN KEY (league_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  seasons
    ADD CONSTRAINT fk_sea_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** affiliation_phases; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliation_phases
    ADD CONSTRAINT fk_seasons_affiliation_phases FOREIGN KEY (start_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** affiliation_phases1; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  affiliation_phases
    ADD CONSTRAINT fk_seasons_affiliation_phases1 FOREIGN KEY (end_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** id__loc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  sites
    ADD CONSTRAINT fk_sit_loc_id__loc_id FOREIGN KEY (location_id) REFERENCES dbo.locations(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  sites
    ADD CONSTRAINT fk_sit_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  soccer_event_states
    ADD CONSTRAINT fk_soc_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  standings
    ADD CONSTRAINT fk_sta_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  standings
    ADD CONSTRAINT fk_sta_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** aff_id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  standing_subgroups
    ADD CONSTRAINT fk_sta_sub_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** sea_id__sub_sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  standings
    ADD CONSTRAINT fk_sta_sub_sea_id__sub_sea_id FOREIGN KEY (sub_season_id) REFERENCES dbo.sub_seasons(id);
--
-- SQLINES DEMO *** sta_id__sta_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  standing_subgroups
    ADD CONSTRAINT fk_sta_sub_sta_id__sta_id FOREIGN KEY (standing_id) REFERENCES dbo.standings(id);
--
-- SQLINES DEMO *** per_id__per_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  sub_periods
    ADD CONSTRAINT fk_sub_per_per_id__per_id FOREIGN KEY (period_id) REFERENCES dbo.periods(id);
--
-- SQLINES DEMO *** sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  sub_seasons
    ADD CONSTRAINT fk_sub_sea_sea_id__sea_id FOREIGN KEY (season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** pha_aff_id__aff_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  team_phases
    ADD CONSTRAINT fk_tea_aff_pha_aff_id__aff_id FOREIGN KEY (affiliation_id) REFERENCES dbo.affiliations(id);
--
-- SQLINES DEMO *** pha_end_sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  team_phases
    ADD CONSTRAINT fk_tea_aff_pha_end_sea_id__sea_id FOREIGN KEY (end_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** pha_rol_id__rol_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  team_phases
    ADD CONSTRAINT fk_tea_aff_pha_rol_id__rol_id FOREIGN KEY (role_id) REFERENCES dbo.roles(id);
--
-- SQLINES DEMO *** pha_sta_sea_id__sea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  team_phases
    ADD CONSTRAINT fk_tea_aff_pha_sta_sea_id__sea_id FOREIGN KEY (start_season_id) REFERENCES dbo.seasons(id);
--
-- SQLINES DEMO *** pha_tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  team_phases
    ADD CONSTRAINT fk_tea_aff_pha_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** doc_id__doc_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams_documents
    ADD CONSTRAINT fk_tea_doc_doc_id__doc_id FOREIGN KEY (document_id) REFERENCES dbo.documents(id);
--
-- SQLINES DEMO *** tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams_documents
    ADD CONSTRAINT fk_tea_doc_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** sit_id__sit_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams
    ADD CONSTRAINT fk_tea_hom_sit_id__sit_id FOREIGN KEY (home_site_id) REFERENCES dbo.sites(id);
--
-- SQLINES DEMO *** med_id__med_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams_media
    ADD CONSTRAINT fk_tea_med_med_id__med_id FOREIGN KEY (media_id) REFERENCES dbo.media(id);
--
-- SQLINES DEMO *** tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams_media
    ADD CONSTRAINT fk_tea_med_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** id__pub_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  teams
    ADD CONSTRAINT fk_tea_pub_id__pub_id FOREIGN KEY (publisher_id) REFERENCES dbo.publishers(id);
--
-- SQLINES DEMO *** sta_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  tennis_event_states
    ADD CONSTRAINT fk_ten_eve_sta_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** boo_id__boo_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_moneylines
    ADD CONSTRAINT fk_wag_mon_boo_id__boo_id FOREIGN KEY (bookmaker_id) REFERENCES dbo.bookmakers(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_moneylines
    ADD CONSTRAINT fk_wag_mon_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_moneylines
    ADD CONSTRAINT fk_wag_mon_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** lin_boo_id__boo_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_odds_lines
    ADD CONSTRAINT fk_wag_odd_lin_boo_id__boo_id FOREIGN KEY (bookmaker_id) REFERENCES dbo.bookmakers(id);
--
-- SQLINES DEMO *** lin_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_odds_lines
    ADD CONSTRAINT fk_wag_odd_lin_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** lin_tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_odds_lines
    ADD CONSTRAINT fk_wag_odd_lin_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** boo_id__boo_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_runlines
    ADD CONSTRAINT fk_wag_run_boo_id__boo_id FOREIGN KEY (bookmaker_id) REFERENCES dbo.bookmakers(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_runlines
    ADD CONSTRAINT fk_wag_run_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_runlines
    ADD CONSTRAINT fk_wag_run_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** spr_lin_boo_id__boo_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_straight_spread_lines
    ADD CONSTRAINT fk_wag_str_spr_lin_boo_id__boo_id FOREIGN KEY (bookmaker_id) REFERENCES dbo.bookmakers(id);
--
-- SQLINES DEMO *** spr_lin_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_straight_spread_lines
    ADD CONSTRAINT fk_wag_str_spr_lin_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** spr_lin_tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_straight_spread_lines
    ADD CONSTRAINT fk_wag_str_spr_lin_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** sco_lin_boo_id__boo_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_total_score_lines
    ADD CONSTRAINT fk_wag_tot_sco_lin_boo_id__boo_id FOREIGN KEY (bookmaker_id) REFERENCES dbo.bookmakers(id);
--
-- SQLINES DEMO *** sco_lin_eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_total_score_lines
    ADD CONSTRAINT fk_wag_tot_sco_lin_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** sco_lin_tea_id__tea_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  wagering_total_score_lines
    ADD CONSTRAINT fk_wag_tot_sco_lin_tea_id__tea_id FOREIGN KEY (team_id) REFERENCES dbo.teams(id);
--
-- SQLINES DEMO *** eve_id__eve_id; Type: FK CONSTRAINT; Schema: dbo; Owner: postgres81
--
ALTER TABLE  weather_conditions
    ADD CONSTRAINT fk_wea_con_eve_id__eve_id FOREIGN KEY (event_id) REFERENCES dbo.events(id);
--
-- SQLINES DEMO *** se dump complete
--
