// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_001B();
    _unknown_001F();
    _unknown_0029();
    _unknown_0032();
    thread _unknown_0036();
    _unknown_003D();
    _unknown_0041();
    _unknown_0045();
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
    thread _unknown_0171();
    thread _unknown_01B1();
    thread _unknown_0141();
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
    _ID42475::_ID34640( "start_default_checkpoint", ::_unknown_0100 );
    _ID42475::_ID34640( "start_wakeup_after_crash_checkpoint", ::_unknown_010F );
    _ID42475::_ID34640( "start_turnbuckle_checkpoint", ::_unknown_011E );
    _ID42475::_ID34640( "start_shepherd_gloats_checkpoint", ::_unknown_012D );
    _ID42475::_ID34640( "start_gun_drop_checkpoint", ::_unknown_013C );
    _ID42475::_ID34640( "start_gun_crawl_checkpoint", ::_unknown_014B );
    _ID42475::_ID34640( "start_gun_kick_checkpoint", ::_unknown_015A );
    _ID42475::_ID34640( "start_wounded_show_checkpoint", ::_unknown_0169 );
    _ID42475::_ID34640( "start_knife_pullout_checkpoint", ::_unknown_0178 );
    _ID42475::_ID34640( "start_knife_kill_checkpoint", ::_unknown_0187 );
    _ID42475::_ID34640( "start_price_wakeup_checkpoint", ::_unknown_0196 );
    _ID42475::_ID34640( "start_walkoff_checkpoint", ::_unknown_01A5 );
    _ID42475::_ID34640( "start_boatdrive_nofail_checkpoint", ::_unknown_01B4 );
    _ID42475::_ID34640( "start_boatdrive_begin_checkpoint", ::_unknown_01C3 );
    _ID42475::_ID34640( "start_boatdrive_lake_checkpoint", ::_unknown_01D2 );
    _ID42475::_ID34640( "start_boatdrive_lake_mid_checkpoint", ::_unknown_01E1 );
    _ID42475::_ID34640( "start_boatdrive_rapids_checkpoint", ::_unknown_01F0 );
    _ID42475::_ID34640( "start_boatdrive_river_below_rapids_checkpoint", ::_unknown_01FF );
    _ID42475::_ID34640( "start_boatdrive_end_checkpoint", ::_unknown_020E );
    _ID42475::_ID34640( "start_debug_boatdrive_checkpoint", ::_unknown_021D );
    _ID42475::_ID34640( "aud_reverse_engine_plr_boat", ::_unknown_031A );
    _ID42475::_ID34640( "aud_stop_mix_steady_boat", ::_ID41961 );
    _ID42475::_ID34640( "aud_start_mix_seaknight_down", ::_unknown_0246 );
    _ID42475::_ID34640( "stop_heli_passby_submix", ::_unknown_0326 );
    _ID42475::_ID34640( "aud_start_heli_passby_01", ::_unknown_0335 );
    _ID42475::_ID34640( "aud_rapids_littlebird_passby1", ::_unknown_034C );
    _ID42475::_ID34640( "start_over_waterfall", ::_unknown_0368 );
    _ID42475::_ID34640( "start_truck_arrival_01", ::_unknown_0290 );
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
    var_0 = _func_1A1( "trigger_out_of_caves", "targetname" );
    var_1 waittill( "trigger",  var_1  );
    _ID42465::_ID23797( "mix_enter_lake" );
    wait 1.0;
    _ID42465::_ID23801( "mix_enter_lake" );
}

_ID49610( var_0 )
{
    var_0 _meth_8295();
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
        var_1 = level._ID46392 _meth_8290();

        if ( _func_02F( var_1 ) )
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
    self _meth_8295();
    self._ID31138 = 1;
}

_ID45417()
{
    wait 0.1;
    thread _ID42407::_ID27079( "scn_sheperd_boat_start" );
}

_ID52473()
{
    var_0 = _func_1A2( "rocks_falling", "script_noteworthy" );
    _ID42237::_ID14413( "distant_explosion" );
    level._ID794 _meth_80A1( "scn_afchase_explosion_far_front" );
    wait 0.5;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _ID42407::_ID27079( "emt_afchase_explosion_far_debris" );
    }

    var_clear_2
    var_clear_0
}

_ID48012()
{
    if ( _func_02F( self._ID47282 ) && _func_03D() < self._ID47282 )
        return;

    self._ID47282 = _func_03D() + 500;
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0 _meth_8053( self );
    var_1 = _ID42237::_ID37527( self == level._ID46392, "zodiac_jumping_one_shot_plr", "zodiac_jumping_one_shot" );
    var_0 _meth_80A1( var_1 );
    _ID42237::_ID41078( 2.5, "veh_landed", "death" );
    var_2 = 1.2;
    var_0 _meth_8076( 0, var_2 );
    var_0 _meth_8074( 0.5, var_2 );
    wait(var_2);
    var_0 _meth_80B3();
    wait 0.1;
    var_0 _meth_80B7();
}

_ID46309()
{
    thread _unknown_056E( "metal_ramp", "scn_afchase_metal_ramp_jump" );
    thread _unknown_057A( "wood_ramp", "scn_afchase_ramp_jump" );
}

_ID44859( var_0, var_1 )
{
    _ID42237::_ID14413( var_0 );
    level._ID794 _meth_80A1( var_1 );
}

_ID45496()
{
    wait 0.1;
    var_0 = _func_06A( "script_origin", self._ID740 + _func_119( _func_11E( self._ID65 ) ) * 90 );
    var_1 = _func_06A( "script_origin", self._ID740 + _func_119( _func_11E( self._ID65 ) ) * -90 );
    var_0 _meth_8053( self );
    var_1 _meth_8053( self );
    var_2 = "zodiac_player_wind_loop";
    var_0 _meth_807C( var_2 );
    var_1 _meth_807C( var_2 );
    thread _unknown_0622( var_0, var_2 );
    thread _unknown_0628( var_1, var_2 );
    thread _unknown_0605( var_0, 1 );
    thread _unknown_060A( var_1 );
}

_ID44450( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        var_2 = _func_119( _func_11E( self._ID65 ) );

        if ( !_func_02F( var_1 ) || var_1 == 0 )
            var_2 *= -1;

        var_3 = self._ID740 + ( 0, 0, 50 );
        var_4 = _func_06D( var_3, var_3 + var_2 * level._ID3674._ID45915, 0, self );

        if ( var_4["fraction"] < 1 )
        {
            var_5 = self _meth_8290();
            var_6 = var_5 / level._ID3674._ID48257;
            var_0 _meth_8076( 1 - var_4["fraction"] * var_6, 0.1 );
        }
        else
            var_0 _meth_8076( 0, 0.1 );

        wait 0.1;
    }
}

_ID44836( var_0, var_1 )
{
    self waittill( "death" );
    var_0 _meth_80B2( var_1 );
    var_0 _meth_80B7();
}

_ID53027()
{
    _ID42465::_ID23801( "mix_heli_passby" );
}

_ID45670( var_0 )
{
    var_0 thread _unknown_063C();
    var_0 thread _ID42407::_ID27079( "scn_helicopter_01_passby" );
    _ID42465::_ID23797( "mix_heli_passby" );
    wait 1;
    var_0 thread _ID42237::_ID27000( "scn_helicopter_01_lp" );
}

_ID52283( var_0 )
{
    var_0 thread _unknown_0661();
    var_0 thread _ID42237::_ID27000( "scn_afchase_rapids_littlebird_passby1" );
}

_ID51128()
{
    _ID42465::_ID23797( "mix_steady_boat" );
    level._ID46392 _meth_8295();
    level._ID46392._ID31138 = 1;
    level._ID46392 _meth_80A1( "scn_afchase_plr_boat_switch_reverse" );
}

_ID44780()
{
    level._ID46392 notify( "zodiac_fall_over_waterfall" );
    _ID42465::_ID23797( "over_waterfall_mix" );
    level._ID46392 _meth_8561( "scn_afchase_plr_boat_switch_reverse" );
    level._ID46392 thread _ID42407::_ID27081( "scn_boat_falling_over_waterfall" );
    level._ID794 thread _ID42407::_ID27079( "scn_player_falling_over_waterfall" );
}
