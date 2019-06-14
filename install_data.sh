 #!/bin/bash
 mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
 source /opt/soccergame_assist_rank.sql
 source /opt/soccergame_auth_group_permissions.sql
 
source /opt/soccergame_auth_group.sql
source /opt/soccergame_auth_permission.sql
source /opt/soccergame_auth_user_groups.sql
source /opt/soccergame_auth_user_user_permissions.sql
source /opt/soccergame_auth_user.sql
source /opt/soccergame_cards_event.sql
source /opt/soccergame_django_admin_log.sql
source /opt/soccergame_django_content_type.sql
source /opt/soccergame_django_migrations.sql
source /opt/soccergame_django_session.sql
source /opt/soccergame_django_site.sql
source /opt/soccergame_goals_event.sql
source /opt/soccergame_goals_rank.sql
source /opt/soccergame_hibernate_sequence.sql
source /opt/soccergame_league_rank.sql
source /opt/soccergame_lineup.sql
source /opt/soccergame_player_info.sql
source /opt/soccergame_race_event_order.sql
source /opt/soccergame_race_final.sql
source /opt/soccergame_race_schedule.sql
source /opt/soccergame_soccer_comment.sql
source /opt/soccergame_soccer_picture.sql
source /opt/soccergame_soccer_post.sql
source /opt/soccergame_substitutions_event.sql
source /opt/soccergame_team_info.sql
source /opt/soccergame_timeline.sql