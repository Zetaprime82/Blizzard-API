-- https://wow.tools/files
-- https://wow.tools/casc/listfile/download/csv/unverified
local FileDataComplete = {
	[1] = "interface/cinematics/logo_800.avi",
	[21] = "interface/cinematics/logo_1024.avi",
	[22] = "interface/cinematics/wow_intro_1024.avi",
	[53183] = "sound/music/citymusic/darnassus/darnassus intro.mp3",
	[53184] = "sound/music/citymusic/darnassus/darnassus walking 1.mp3",
	[53185] = "sound/music/citymusic/darnassus/darnassus walking 2.mp3",
	[53186] = "sound/music/citymusic/darnassus/darnassus walking 3.mp3",
	[53187] = "sound/music/citymusic/darnassus/druid grove.mp3",
	[53188] = "sound/music/citymusic/darnassus/warrior terrace.mp3",
	[53189] = "sound/music/citymusic/gnomeragon/gnomeragon01-zone.mp3",
	[53190] = "sound/music/citymusic/gnomeragon/gnomeragon02-zone.mp3",
	[53191] = "sound/music/citymusic/ironforge/ironforge intro.mp3",
	[53192] = "sound/music/citymusic/ironforge/ironforge walking 01.mp3",
	[53193] = "sound/music/citymusic/ironforge/ironforge walking 02.mp3",
	[53194] = "sound/music/citymusic/ironforge/ironforge walking 03 (glenn).mp3",
	[53195] = "sound/music/citymusic/ironforge/ironforge walking 04.mp3",
	[53196] = "sound/music/citymusic/ironforge/tinkertownintro_moment.mp3",
	[53197] = "sound/music/citymusic/orgrimmar/orgrimmar01-moment.mp3",
	[53198] = "sound/music/citymusic/orgrimmar/orgrimmar01-zone.mp3",
	[53199] = "sound/music/citymusic/orgrimmar/orgrimmar02-moment.mp3",
	[53200] = "sound/music/citymusic/orgrimmar/orgrimmar02-zone.mp3",
	[53201] = "sound/music/citymusic/orgrimmar/orgrimmar_intro-moment.mp3",
	[53202] = "sound/music/citymusic/stormwind/stormwind01-moment.mp3",
	[53203] = "sound/music/citymusic/stormwind/stormwind02-moment.mp3",
	[53204] = "sound/music/citymusic/stormwind/stormwind03-moment.mp3",
	[53205] = "sound/music/citymusic/stormwind/stormwind04-zone.mp3",
	[53206] = "sound/music/citymusic/stormwind/stormwind05-zone.mp3",
	[53207] = "sound/music/citymusic/stormwind/stormwind06-zone.mp3",
	[53208] = "sound/music/citymusic/stormwind/stormwind07-zone.mp3",
	[53209] = "sound/music/citymusic/stormwind/stormwind08-zone.mp3",
	[53210] = "sound/music/citymusic/stormwind/stormwind_highseas-moment.mp3",
	[53211] = "sound/music/citymusic/stormwind/stormwind_intro-moment.mp3",
	[53212] = "sound/music/citymusic/thunderbluff/thunderbluff intro.mp3",
	[53213] = "sound/music/citymusic/thunderbluff/thunderbluff walking 01.mp3",
	[53214] = "sound/music/citymusic/thunderbluff/thunderbluff walking 02.mp3",
	[53215] = "sound/music/citymusic/thunderbluff/thunderbluff walking 03.mp3",
	[53216] = "sound/music/citymusic/undercity/undercity01-zone.mp3",
	[53217] = "sound/music/citymusic/undercity/undercity02-zone.mp3",
	[53218] = "sound/music/citymusic/undercity/undercity03-zone.mp3",
	[53219] = "sound/music/citymusic/undercity/undercityintro-moment.mp3",
	[53220] = "sound/music/gluescreenmusic/bc_main_theme.mp3",
	[53221] = "sound/music/gluescreenmusic/bccredits_lament_of_the_highborne.mp3",
	[53222] = "sound/music/gluescreenmusic/wotlk_main_title.mp3",
	[53223] = "sound/music/gluescreenmusic/wow_main_theme.mp3",
	[53224] = "sound/music/musical moments/angelic/angelic01.mp3",
	[53225] = "sound/music/musical moments/battle/battle01.mp3",
	[53226] = "sound/music/musical moments/battle/battle02.mp3",
	[53227] = "sound/music/musical moments/battle/battle03.mp3",
	[53228] = "sound/music/musical moments/battle/battle04.mp3",
	[53229] = "sound/music/musical moments/battle/battle05.mp3",
	[53230] = "sound/music/musical moments/battle/battle06.mp3",
	[53231] = "sound/music/musical moments/gloomy/gloomy01.mp3",
	[53232] = "sound/music/musical moments/gloomy/gloomy02.mp3",
	[53233] = "sound/music/musical moments/guldansentrancetheme.mp3",
	[53234] = "sound/music/musical moments/haunted/haunted01.mp3",
	[53235] = "sound/music/musical moments/haunted/haunted02.mp3",
	[53236] = "sound/music/musical moments/magic/magic01-moment.mp3",
	[53237] = "sound/music/musical moments/magic/magic01-zone1.mp3",
	[53238] = "sound/music/musical moments/magic/magic01-zone2.mp3",
	[53239] = "sound/music/musical moments/mystery/ahnqirajintro1.mp3",
	[53240] = "sound/music/musical moments/mystery/mystery01-zone.mp3",
	[53241] = "sound/music/musical moments/mystery/mystery02-zone.mp3",
	[53242] = "sound/music/musical moments/mystery/mystery03-zone.mp3",
	[53243] = "sound/music/musical moments/mystery/mystery04-zone.mp3",
	[53244] = "sound/music/musical moments/mystery/mystery05-zone.mp3",
	[53245] = "sound/music/musical moments/mystery/mystery06-zone.mp3",
	[53246] = "sound/music/musical moments/mystery/mystery07-zone.mp3",
	[53247] = "sound/music/musical moments/mystery/mystery08-zone.mp3",
	[53248] = "sound/music/musical moments/mystery/mystery09-zone.mp3",
	[53249] = "sound/music/musical moments/mystery/mystery10-zone.mp3",
	[53250] = "sound/music/musical moments/sacred/sacred01.mp3",
	[53251] = "sound/music/musical moments/sacred/sacred02.mp3",
	[53252] = "sound/music/musical moments/spooky/spooky01-moment.mp3",
	[53253] = "sound/music/musical moments/swamp/swamp01.mp3",
	[53254] = "sound/music/musical moments/zulgurubvoodoo.mp3",
	[53255] = "sound/music/worldevents/alliancefirepole.mp3",
	[53256] = "sound/music/worldevents/darkmoonfaire_1.mp3",
	[53257] = "sound/music/worldevents/darkmoonfaire_2.mp3",
	[53258] = "sound/music/worldevents/darkmoonfaire_3.mp3",
	[53259] = "sound/music/worldevents/darkmoonfaire_4.mp3",
	[53260] = "sound/music/worldevents/hordefirepole.mp3",
	[53261] = "sound/music/zonemusic/ahnqiraj/ahnqirajexteriorwalking1.mp3",
	[53262] = "sound/music/zonemusic/ahnqiraj/ahnqirajexteriorwalking2.mp3",
	[53263] = "sound/music/zonemusic/ahnqiraj/ahnqirajexteriorwalking3.mp3",
	[53264] = "sound/music/zonemusic/ahnqiraj/ahnqirajexteriorwalking4.mp3",
	[53265] = "sound/music/zonemusic/ahnqiraj/ahnqirajinterior1.mp3",
	[53266] = "sound/music/zonemusic/ahnqiraj/ahnqirajinterior2.mp3",
	[53267] = "sound/music/zonemusic/ahnqiraj/ahnqirajinterior3.mp3",
	[53268] = "sound/music/zonemusic/ahnqiraj/ahnqirajinteriorcenterroom1.mp3",
	[53269] = "sound/music/zonemusic/ahnqiraj/ahnqirajinteriorintromain.mp3",
	[53270] = "sound/music/zonemusic/ahnqiraj/ahnqirajkingroom.mp3",
	[53271] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom1.mp3",
	[53272] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom2.mp3",
	[53273] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom3.mp3",
	[53274] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom4.mp3",
	[53275] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom5.mp3",
	[53276] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom6.mp3",
	[53277] = "sound/music/zonemusic/ahnqiraj/ahnqirajtriangleroom7.mp3",
	[53278] = "sound/music/zonemusic/azuremyst/ai_draeneiwalkuni05.mp3",
	[53279] = "sound/music/zonemusic/azuremyst/ai_draeneiwalkuni06.mp3",
	[53280] = "sound/music/zonemusic/azuremyst/ai_draeneiwalkuni07r.mp3",
	[53281] = "sound/music/zonemusic/azuremyst/ai_draeneiwalkuni08r.mp3",
	[53282] = "sound/music/zonemusic/azuremyst/ai_exodarintro01.mp3",
	[53283] = "sound/music/zonemusic/azuremyst/ai_exodarwalkuni01.mp3",
	[53284] = "sound/music/zonemusic/azuremyst/ai_exodarwalkuni02.mp3",
	[53285] = "sound/music/zonemusic/azuremyst/ai_exodarwalkuni03.mp3",
	[53286] = "sound/music/zonemusic/azuremyst/ai_nagawalkuni01.mp3",
	[53287] = "sound/music/zonemusic/azuremyst/ai_nagawalkuni02.mp3",
	[53288] = "sound/music/zonemusic/azuremyst/ai_nagawalkuni03.mp3",
	[53289] = "sound/music/zonemusic/azuremyst/ai_nagawalkuni04.mp3",
	[53290] = "sound/music/zonemusic/azuremyst/ai_nagawalkuni05.mp3",
	[53291] = "sound/music/zonemusic/azuremyst/ai_owlkinwalkuni01.mp3",
	[53292] = "sound/music/zonemusic/azuremyst/ai_owlkinwalkuni02.mp3",
	[53293] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni01.mp3",
	[53294] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni02.mp3",
	[53295] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni02r.mp3",
	[53296] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni03.mp3",
	[53297] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni03r.mp3",
	[53298] = "sound/music/zonemusic/azuremyst/av_draeneiwalkuni04.mp3",
	[53299] = "sound/music/zonemusic/barrendry/daybarrendry01.mp3",
	[53300] = "sound/music/zonemusic/barrendry/daybarrendry02.mp3",
	[53301] = "sound/music/zonemusic/barrendry/daybarrendry03.mp3",
	[53302] = "sound/music/zonemusic/barrendry/nightbarrendry01.mp3",
	[53303] = "sound/music/zonemusic/barrendry/nightbarrendry02.mp3",
	[53304] = "sound/music/zonemusic/barrendry/nightbarrendry03.mp3",
	[53305] = "sound/music/zonemusic/blacktemple/bt_arrivalwalkhero01.mp3",
	[53306] = "sound/music/zonemusic/blacktemple/bt_arrivalwalkuni02.mp3",
	[53307] = "sound/music/zonemusic/blacktemple/bt_arrivalwalkuni03.mp3",
	[53308] = "sound/music/zonemusic/blacktemple/bt_arrivalwalkuni04.mp3",
	[53309] = "sound/music/zonemusic/blacktemple/bt_illidariwalkhero09.mp3",
	[53310] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni01.mp3",
	[53311] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni02.mp3",
	[53312] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni03.mp3",
	[53313] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni04.mp3",
	[53314] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni05.mp3",
	[53315] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni06.mp3",
	[53316] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni07.mp3",
	[53317] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni08.mp3",
	[53318] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni10.mp3",
	[53319] = "sound/music/zonemusic/blacktemple/bt_illidariwalkuni11.mp3",
	[53320] = "sound/music/zonemusic/blacktemple/bt_karaborwalkuni01.mp3",
	[53321] = "sound/music/zonemusic/blacktemple/bt_karaborwalkuni02.mp3",
	[53322] = "sound/music/zonemusic/blacktemple/bt_karaborwalkuni03.mp3",
	[53323] = "sound/music/zonemusic/blacktemple/bt_karaborwalkuni04.mp3",
	[53324] = "sound/music/zonemusic/blacktemple/bt_preludeevent01.mp3",
	[53325] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkhero01.mp3",
	[53326] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni02.mp3",
	[53327] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni03.mp3",
	[53328] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni04.mp3",
	[53329] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni05.mp3",
	[53330] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni06.mp3",
	[53331] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni07.mp3",
	[53332] = "sound/music/zonemusic/blacktemple/bt_reliquarywalkuni08.mp3",
	[53333] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkhero01.mp3",
	[53334] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni02.mp3",
	[53335] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni03.mp3",
	[53336] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni04.mp3",
	[53337] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni05.mp3",
	[53338] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni06.mp3",
	[53339] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni07.mp3",
	[53340] = "sound/music/zonemusic/blacktemple/bt_sanctuarywalkuni08.mp3",
	[53341] = "sound/music/zonemusic/blacktemple/bt_stormwalkhero02.mp3",
	[53342] = "sound/music/zonemusic/blacktemple/bt_stormwalkuni01.mp3",
	[53343] = "sound/music/zonemusic/blacktemple/bt_stormwalkuni03.mp3",
	[53344] = "sound/music/zonemusic/blacktemple/bt_stormwalkuni04.mp3",
	[53345] = "sound/music/zonemusic/blacktemple/bt_summitwalkuni01.mp3",
	[53346] = "sound/music/zonemusic/blacktemple/bt_summitwalkuni02.mp3",
	[53347] = "sound/music/zonemusic/blacktemple/bt_summitwalkuni03.mp3",
	[53348] = "sound/music/zonemusic/blacktemple/bt_summitwalkuni04.mp3",
	[53349] = "sound/music/zonemusic/blacktemple/bt_summitwalkuni05.mp3",
	[53350] = "sound/music/zonemusic/bladesedge/bl_dryforestwalkuni01.mp3",
	[53351] = "sound/music/zonemusic/bladesedge/bl_dryforestwalkuni02.mp3",
	[53352] = "sound/music/zonemusic/bladesedge/bl_dryforestwalkuni03.mp3",
	[53353] = "sound/music/zonemusic/bladesedge/bl_generalwalkuni01.mp3",
	[53354] = "sound/music/zonemusic/bladesedge/bl_generalwalkuni02.mp3",
	[53355] = "sound/music/zonemusic/bladesedge/bl_generalwalkuni03.mp3",
	[53356] = "sound/music/zonemusic/bladesedge/bl_generalwalkuni04.mp3",
	[53357] = "sound/music/zonemusic/bladesedge/bl_generalwalkuni05.mp3",
	[53358] = "sound/music/zonemusic/bladesedge/bl_ogrewalkuni01.mp3",
	[53359] = "sound/music/zonemusic/bladesedge/bl_ogrewalkuni02.mp3",
	[53360] = "sound/music/zonemusic/bloodmyst/bi_nagaintro01.mp3",
	[53361] = "sound/music/zonemusic/bloodmyst/bi_nagaintro01r.mp3",
	[53362] = "sound/music/zonemusic/bloodmyst/bi_satyrwalkuni01r.mp3",
	[53363] = "sound/music/zonemusic/bloodmyst/bi_satyrwalkuni02.mp3",
	[53364] = "sound/music/zonemusic/bloodmyst/bi_satyrwalkuni03.mp3",
	[53365] = "sound/music/zonemusic/bloodmyst/bi_satyrwalkuni04.mp3",