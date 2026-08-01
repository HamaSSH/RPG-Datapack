#> core:load/gamerule
# ゲームルールの設定

gamerule show_advancement_messages false
gamerule block_explosion_drop_decay false
gamerule command_block_output false
gamerule max_block_modifications 32768
gamerule elytra_movement_check true
gamerule raids false
execute if data storage global: {is_production:1b} run gamerule advance_time true
execute if data storage global: {is_production:0b} run gamerule advance_time false
gamerule entity_drops false
gamerule fire_spread_radius_around_player 0
gamerule immediate_respawn true
gamerule spawn_phantoms false
gamerule limited_crafting false
gamerule mob_drops false
gamerule spawn_mobs false
gamerule spawn_patrols false
gamerule block_drops true
gamerule spawn_wandering_traders false
gamerule spread_vines false
gamerule advance_weather false
gamerule spawn_wardens false
gamerule drowning_damage true
gamerule ender_pearls_vanish_on_death true
gamerule fall_damage true
gamerule fire_damage true
gamerule forgive_dead_players false
gamerule freeze_damage true
gamerule global_sound_events true
gamerule keep_inventory true
gamerule lava_source_conversion true
execute if data storage global: {is_production:1b} run gamerule log_admin_commands false
execute if data storage global: {is_production:0b} run gamerule log_admin_commands true
gamerule max_command_sequence_length 65536
gamerule max_command_forks 65536
gamerule max_entity_cramming 24
# gamerule max_minecart_speed 8
gamerule mob_explosion_drop_decay false
gamerule mob_griefing false
gamerule natural_health_regeneration false
gamerule players_nether_portal_creative_delay 1000000000
gamerule players_nether_portal_default_delay 1000000000
gamerule players_sleeping_percentage 200
gamerule projectiles_can_break_blocks false
gamerule random_tick_speed 3
execute if data storage global: {is_production:1b} run gamerule reduced_debug_info true
execute if data storage global: {is_production:0b} run gamerule reduced_debug_info false
execute if data storage global: {is_production:1b} run gamerule send_command_feedback false
execute if data storage global: {is_production:0b} run gamerule send_command_feedback true
gamerule show_death_messages false
gamerule max_snow_accumulation_height 0
gamerule respawn_radius 0
gamerule spectators_generate_chunks true
gamerule tnt_explosion_drop_decay false
gamerule universal_anger true
gamerule water_source_conversion true
gamerule allow_entering_nether_using_portals false
gamerule command_blocks_work true
gamerule locator_bar true
gamerule player_movement_check false
gamerule pvp false
gamerule spawn_monsters false
gamerule spawner_blocks_work false
gamerule tnt_explodes false
