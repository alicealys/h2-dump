// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42300::_ID16944( "ch_streetlight_02_FX_origin", "fx/misc/lighthaze" );
    _ID42300::_ID16944( "me_streetlight_01_FX_origin", "fx/misc/lighthaze_bog_a" );
    _ID42300::_ID16944( "ch_street_light_01_on", "fx/misc/lighthaze" );
    _ID42300::_ID16944( "com_wall_streetlamp_on", "fx/misc/light_glow_white_dim" );
    _ID42300::_ID16944( "lamp_post_globe_on", "fx/misc/light_glow_white" );
    _ID42300::_ID16944( "highway_lamp_post", "fx/misc/lighthaze_villassault" );
    _ID42300::_ID16944( "cs_cargoship_spotlight_on_FX_origin", "fx/misc/lighthaze" );
    _ID42300::_ID16944( "com_tires_burning01_FX_origin", "fx/fire/tire_fire_med" );
    _ID42300::_ID16944( "icbm_powerlinetower_FX_origin", "fx/misc/power_tower_light_red_blink" );
    _ID42300::_ID16944( "icbm_mainframe_FX_origin", "fx/props/icbm_mainframe_lightblink" );
    _ID42300::_ID16944( "lighthaze_oilrig_FX_origin", "fx/misc/lighthaze_oilrig" );
    _ID42300::_ID16944( "lighthaze_white_FX_origin", "fx/misc/lighthaze_white" );
    _ID42300::_ID16944( "light_glow_walllight_white_FX_origin", "fx/misc/light_glow_walllight_white" );
    _ID42300::_ID16944( "fluorescent_glow_FX_origin", "fx/misc/fluorescent_glow" );
    _ID42300::_ID16944( "light_glow_industrial_FX_origin", "fx/misc/light_glow_industrial" );
    _ID42300::_ID16944( "light_glow_white_bulb_FX_origin", "fx/misc/light_glow_white_bulb" );
    _ID42300::_ID16944( "light_glow_white_lamp_FX_origin", "fx/misc/light_glow_white_lamp" );
    _ID42300::_ID16944( "highrise_blinky_tower", "fx/misc/power_tower_light_red_blink_large" );
    _ID42300::_ID16944( "lensflare_floodlight_on_FX_origin", "vfx/lights/lensflare_floodlight_on" );
    _ID42300::_ID16944( "yellow_lensflare_floodlight_on_FX_origin", "vfx/lights/yellow_lensflare_floodlight_on" );
    _ID42300::_ID16944( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady", -2 );
    _ID42300::_ID16944( "light_red_steady_FX_origin_int", "fx/misc/tower_light_red_steady_int", -2 );
    _ID42300::_ID16944( "light_blue_steady_FX_origin_int", "fx/misc/tower_light_blue_steady_int", -2 );
    _ID42300::_ID16944( "light_blue_steady_FX_origin", "fx/misc/tower_light_blue_steady", -2 );
    _ID42300::_ID16944( "light_green_steady_FX_origin", "fx/misc/tower_light_green_steady", -2 );
    _ID42300::_ID16944( "light_white_steady_FX_origin", "fx/misc/tower_light_white_steady", -2 );
    _ID42300::_ID16944( "light_orange_steady_FX_origin", "fx/misc/tower_light_orange_steady", -2 );
    _ID42300::_ID16944( "light_orange_steady_FX_origin_int", "fx/misc/tower_light_orange_steady_int", -2 );
    _ID42300::_ID16944( "glow_stick_pile_FX_origin", "fx/misc/glow_stick_glow_pile", -2 );
    _ID42300::_ID16944( "light_pulse_red_FX_origin", "fx/misc/light_glow_red_generic_pulse", -2 );
    _ID42300::_ID16944( "light_pulse_red_FX_origin", "fx/misc/light_glow_red_generic_pulse", -2 );
    _ID42300::_ID16944( "light_pulse_orange_FX_origin", "fx/misc/light_glow_orange_generic_pulse", -2 );
    _ID42300::_ID16944( "light_red_blink_FX_origin", "fx/misc/power_tower_light_red_blink", -2 );
    var_0 = randomfloatrange( -20, -15 );
    _ID42300::_ID16944( "flare_ambient_FX_origin", "fx/misc/flare_ambient", var_0, "flare_ambient_FX", "emt_road_flare_burn" );
    _ID42300::_ID16944( "flare_ambient_FX_nosparks_origin", "fx/misc/flare_ambient_nosparks", var_0, "flare_ambient_FX_nosparks", "emt_road_flare_burn" );
    _ID42300::_ID16944( "me_dumpster_fire_FX_origin", "fx/fire/firelp_med_pm", var_0, "me_dumpster_fire_FX", "fire_dumpster_medium" );
    _ID42300::_ID16944( "barrel_fireFX_origin", "fx/fire/firelp_barrel_pm", var_0, "global_barrel_fire", "fire_barrel_small" );
    _ID42300::_ID16944( "cnd_laptop_001_open_on_FX_origin", "vfx/ambient/props/laptop_dust" );
    _ID42300::_ID16944( "cnd_glowstick_FX_origin", "fx/misc/glow_stick_glow_orange" );
}

_ID49604( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_5["targetname"] = var_0;
    var_5["fxFile"] = var_1;
    var_5["delay"] = var_2;
    var_5["fxName"] = var_3;
    var_5["soundalias"] = var_4;
    level._ID52845[var_0] = var_5;
}

_ID53720( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_5["targetname"] = var_0;
    var_5["fxFile"] = var_1;
    var_5["delay"] = var_2;
    var_5["fxName"] = var_3;
    var_5["soundalias"] = var_4;
    level._ID52012[var_0] = var_5;
}

_ID52057()
{
    if ( !isdefined( level._ID52012 ) )
        return;

    foreach ( var_1 in level._ID52012 )
    {
        var_2 = var_1["targetname"];
        var_3 = var_1["fxFile"];
        var_4 = var_1["delay"];
        var_5 = var_1["fxName"];
        var_6 = var_1["soundalias"];
        _ID42300::_ID16944( var_2, var_3, var_4, var_5, var_6 );
    }
}
