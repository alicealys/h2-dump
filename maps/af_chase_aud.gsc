// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_af_chase_global" );
}

_ID19806()
{

}

_ID19703()
{
    level._ID3674._ID45915 = 250;
    level._ID3674._ID48257 = 60;
    level._ID48967 = 0;
}

_ID22056()
{
    thread _ID52473();
    thread _ID46309();
    thread _ID43174();
}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_default_checkpoint", ::_ID44198 );
    _ID42475::_ID34640( "start_wakeup_after_crash_checkpoint", ::_ID53619 );
    _ID42475::_ID34640( "start_turnbuckle_checkpoint", ::_ID45140 );
    _ID42475::_ID34640( "start_shepherd_gloats_checkpoint", ::_ID45258 );
    _ID42475::_ID34640( "start_gun_drop_checkpoint", ::_ID44205 );
    _ID42475::_ID34640( "start_gun_crawl_checkpoint", ::_ID48341 );
    _ID42475::_ID34640( "start_gun_kick_checkpoint", ::_ID48188 );
    _ID42475::_ID34640( "start_wounded_show_checkpoint", ::_ID44176 );
    _ID42475::_ID34640( "start_knife_pullout_checkpoint", ::_ID43638 );
    _ID42475::_ID34640( "start_knife_kill_checkpoint", ::_ID46176 );
    _ID42475::_ID34640( "start_price_wakeup_checkpoint", ::_ID51218 );
    _ID42475::_ID34640( "start_walkoff_checkpoint", ::_ID53984 );
    _ID42475::_ID34640( "start_boatdrive_nofail_checkpoint", ::_ID43621 );
    _ID42475::_ID34640( "start_boatdrive_begin_checkpoint", ::_ID52934 );
    _ID42475::_ID34640( "start_boatdrive_lake_checkpoint", ::_ID46748 );
    _ID42475::_ID34640( "start_boatdrive_lake_mid_checkpoint", ::_ID50835 );
    _ID42475::_ID34640( "start_boatdrive_rapids_checkpoint", ::_ID43361 );
    _ID42475::_ID34640( "start_boatdrive_river_below_rapids_checkpoint", ::_ID53403 );
    _ID42475::_ID34640( "start_boatdrive_end_checkpoint", ::_ID49025 );
    _ID42475::_ID34640( "start_debug_boatdrive_checkpoint", ::_ID54362 );
    _ID42475::_ID34640( "aud_reverse_engine_plr_boat", ::_ID51128 );
    _ID42475::_ID34640( "aud_stop_mix_steady_boat", ::_ID52744 );
    _ID42475::_ID34640( "aud_start_mix_seaknight_down", ::_ID50848 );
    _ID42475::_ID34640( "stop_heli_passby_submix", ::_ID53027 );
    _ID42475::_ID34640( "aud_start_heli_passby_01", ::_ID45670 );
    _ID42475::_ID34640( "aud_rapids_littlebird_passby1", ::_ID52283 );
    _ID42475::_ID34640( "start_over_waterfall", ::_ID44780 );
    _ID42475::_ID34640( "start_truck_arrival_01", ::_ID49610 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID44198( var_0 )
{
    _ID42474::_ID4669( "corridor" );
}

_ID53619( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID45140( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID45258( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44205( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID48341( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID48188( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID44176( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID43638( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID46176( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51218( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID53984( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID43621( var_0 )
{
    _ID42474::_ID4669( "corridor" );
}

_ID52934( var_0 )
{
    _ID42474::_ID4669( "tunnel" );
}

_ID46748( var_0 )
{
    _ID42474::_ID4669( "tunnel_small" );
}

_ID50835( var_0 )
{
    _ID42474::_ID4669( "lake" );
}

_ID43361( var_0 )
{
    _ID42474::_ID4669( "lake" );
}

_ID53403( var_0 )
{
    _ID42474::_ID4669( "rapids" );
}

_ID49025( var_0 )
{
    _ID42474::_ID4669( "rapids" );
}

_ID54362( var_0 )
{
    _ID42474::_ID4669( "tunnel" );
}

_ID52744()
{
    _ID42465::_ID23801( "mix_steady_boat" );
}

_ID50848()
{
    _ID42465::_ID23797( "mix_seaknight_down" );
}

_ID43174()
{
    var_0 = getent( "trigger_out_of_caves", "targetname" );
    var_0 waittill( "trigger",  var_1  );
    _ID42465::_ID23797( "mix_enter_lake" );
    wait 1.0;
    _ID42465::_ID23801( "mix_enter_lake" );
}

_ID49610( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0._ID31138 = 1;
    var_0 thread _ID42407::_ID27081( "scn_truck_arrival_01" );
}

_ID50797()
{
    level._ID46392 endon( "zodiac_fall_over_waterfall" );
    level._ID46392 endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = level._ID46392 vehicle_getspeed();

        if ( isdefined( var_1 ) )
        {
            if ( var_1 >= 20 && !var_0 )
            {
                _ID42465::_ID23797( "mix_zodiac_high_speed" );
                var_0 = 1;
            }
            else if ( var_1 < 20 && var_0 )
            {
                _ID42465::_ID23801( "mix_zodiac_high_speed" );
                var_0 = 0;
            }
        }

        wait 0.5;
    }
}

_ID50965()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID45417()
{
    wait 0.1;
    thread _ID42407::_ID27079( "scn_sheperd_boat_start" );
}

_ID52473()
{
    var_0 = getentarray( "rocks_falling", "script_noteworthy" );
    _ID42237::_ID14413( "distant_explosion" );
    level.player playsound( "scn_afchase_explosion_far_front" );
    wait 0.5;

    foreach ( var_2 in var_0 )
        var_2 thread _ID42407::_ID27079( "emt_afchase_explosion_far_debris" );
}

_ID48012()
{
    if ( isdefined( self._ID47282 ) && gettime() < self._ID47282 )
        return;

    self._ID47282 = gettime() + 500;
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self );
    var_1 = _ID42237::_ID37527( self == level._ID46392, "zodiac_jumping_one_shot_plr", "zodiac_jumping_one_shot" );
    var_0 playsound( var_1 );
    _ID42237::_ID41078( 2.5, "veh_landed", "death" );
    var_2 = 1.2;
    var_0 setvolume( 0, var_2 );
    var_0 setpitch( 0.5, var_2 );
    wait(var_2);
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_ID46309()
{
    thread _ID44859( "metal_ramp", "scn_afchase_metal_ramp_jump" );
    thread _ID44859( "wood_ramp", "scn_afchase_ramp_jump" );
}

_ID44859( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    level.player playsound( var_1 );
}

_ID45496()
{
    wait 0.1;
    var_0 = spawn( "script_origin", self.origin + vectornormalize( anglestoright( self.angles ) ) * 90 );
    var_1 = spawn( "script_origin", self.origin + vectornormalize( anglestoright( self.angles ) ) * -90 );
    var_0 linkto( self );
    var_1 linkto( self );
    var_2 = "zodiac_player_wind_loop";
    var_0 playloopsound( var_2 );
    var_1 playloopsound( var_2 );
    thread _ID44836( var_0, var_2 );
    thread _ID44836( var_1, var_2 );
    thread _ID44450( var_0, 1 );
    thread _ID44450( var_1 );
}

_ID44450( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        var_2 = vectornormalize( anglestoright( self.angles ) );

        if ( !isdefined( var_1 ) || var_1 == 0 )
            var_2 *= -1;

        var_3 = self.origin + ( 0, 0, 50 );
        var_4 = bullettrace( var_3, var_3 + var_2 * level._ID3674._ID45915, 0, self );

        if ( var_4["fraction"] < 1 )
        {
            var_5 = self vehicle_getspeed();
            var_6 = var_5 / level._ID3674._ID48257;
            var_0 setvolume( ( 1 - var_4["fraction"] ) * var_6, 0.1 );
        }
        else
            var_0 setvolume( 0, 0.1 );

        wait 0.1;
    }
}

_ID44836( var_0, var_1 )
{
    self waittill( "death" );
    var_0 stopsounds( var_1 );
    var_0 delete();
}

_ID53027()
{
    _ID42465::_ID23801( "mix_heli_passby" );
}

_ID45670( var_0 )
{
    var_0 thread _ID50965();
    var_0 thread _ID42407::_ID27079( "scn_helicopter_01_passby" );
    _ID42465::_ID23797( "mix_heli_passby" );
    wait 1;
    var_0 thread _ID42237::_ID27000( "scn_helicopter_01_lp" );
}

_ID52283( var_0 )
{
    var_0 thread _ID50965();
    var_0 thread _ID42237::_ID27000( "scn_afchase_rapids_littlebird_passby1" );
}

_ID51128()
{
    _ID42465::_ID23797( "mix_steady_boat" );
    level._ID46392 vehicle_turnengineoff();
    level._ID46392._ID31138 = 1;
    level._ID46392 playsound( "scn_afchase_plr_boat_switch_reverse" );
}

_ID44780()
{
    level._ID46392 notify( "zodiac_fall_over_waterfall" );
    _ID42465::_ID23797( "over_waterfall_mix" );
    level._ID46392 _meth_8561( "scn_afchase_plr_boat_switch_reverse" );
    level._ID46392 thread _ID42407::_ID27081( "scn_boat_falling_over_waterfall" );
    level.player thread _ID42407::_ID27079( "scn_player_falling_over_waterfall" );
}
