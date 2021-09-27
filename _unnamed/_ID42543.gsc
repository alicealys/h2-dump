// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID17848()
{
    self endon( "death" );
    _ID42475::_ID34575( "rec_littlebird_formation_spawn", self );

    if ( _func_125( self._ID170, "sentinel" ) || _func_125( self._ID170, "armed" ) || _func_125( self._ID170, "atlas_bench" ) )
    {
        var_0 = 0.25;

        if ( level._ID227 )
            var_0 = 1.0;

        var_1 = 0;
        var_2 = 0;
        var_3 = _func_1A5();
        var_3._ID28452 = "littlebird_sentinel";
        var_3._ID13811 = 3;
        var_3._ID13816 = 3;
        _ID42475::_ID34575( "snd_register_vehicle", "littlebird_sentinel", ::_unknown_00A0 );

        for (;;)
        {
            if ( !_func_02F( self._ID31138 ) || !self._ID31138 )
            {
                var_4 = _func_0F3( self._ID740, level._ID794._ID740 );

                if ( !var_1 && var_4 < 5400 )
                {
                    _ID42475::_ID34575( "snd_start_vehicle", var_3 );
                    var_1 = 1;
                }
                else if ( var_1 && var_4 > 5400 )
                {
                    _ID42475::_ID34575( "snd_stop_vehicle" );
                    var_1 = 0;
                }
            }
            else if ( var_1 )
            {
                _ID42475::_ID34575( "snd_stop_vehicle" );
                var_1 = 0;
            }

            wait(var_0);
        }
    }
}

_ID22456()
{
    var_0 = undefined;
    var_1 = 1;
    var_2 = 1;
    _ID42471::_ID4495( "littlebird_sentinel" );
    _ID42471::_ID4490( var_0, var_1, var_2 );
    _ID42471::_ID4491( "lbs_near" );
    _ID42471::_ID4494( "DISTANCE" );
    _ID42471::_ID4486( "volume", "lbs_near_dist2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "pitch" );
    _ID42471::_ID4486( "volume", "lbs_near_pch2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "DOPPLER" );
    _ID42471::_ID4486( "pitch", "lbs_dplr2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "lbs_far" );
    _ID42471::_ID4494( "DISTANCE" );
    _ID42471::_ID4486( "volume", "lbs_far_dist2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "pitch" );
    _ID42471::_ID4486( "volume", "lbs_far_pch2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "DOPPLER" );
    _ID42471::_ID4486( "pitch", "lbs_dplr2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "lbs_pitch" );
    _ID42471::_ID4494( "pitch" );
    _ID42471::_ID4486( "volume", "lbs_pitch_pch2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "DOPPLER" );
    _ID42471::_ID4486( "pitch", "lbs_dplr2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_hover", ::_unknown_0435, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_flying", ::_unknown_0465, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_distant", ::_unknown_0491, [ "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_flyby", ::_unknown_04B8, [ "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_deathspin", ::_unknown_04FD );
    _ID42471::_ID4483( "NONE" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_destruct", ::_unknown_0516 );
    _ID42471::_ID4483( "NONE" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_off", ::_unknown_04D3 );
    _ID42471::_ID4483( "NONE" );
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496( 0.25, 50 );
    _ID42471::_ID4498( "main_oneshots", "state_hover", "to_state_hover", 50, 1.0 );
    _ID42471::_ID4497( "state_off" );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_hover" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_flying", "to_state_flying" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4487( "state_deathspin", "to_state_deathspin" );
    _ID42471::_ID4487( "state_destruct", "to_state_destruct" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_flying" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4487( "state_deathspin", "to_state_deathspin" );
    _ID42471::_ID4487( "state_destruct", "to_state_destruct" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_distant" );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_flying", "to_state_flying" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_deathspin", "to_state_deathspin" );
    _ID42471::_ID4487( "state_destruct", "to_state_destruct" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_flyby", 3.0 );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_flying", "to_state_flying" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4487( "state_deathspin", "to_state_deathspin" );
    _ID42471::_ID4487( "state_destruct", "to_state_destruct" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_deathspin" );
    _ID42471::_ID4487( "state_destruct", "to_state_destruct" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_destruct" );
    _ID42471::_ID4487( "state_off", "to_state_off" );
    _ID42471::_ID4513();
    _ID42471::_ID4514();
    _ID42471::_ID4512();
    var_3 = 0;
    var_4 = 10;
    var_5 = 30;
    var_6 = var_5 - var_3;
    var_7 = _ID42471::_ID41910( 0 );
    var_8 = _ID42471::_ID41910( 99 );
    var_9 = var_8 - var_7;
    var_10 = 0.0;
    var_11 = 1.0;
    var_12 = var_11 - var_10;
    var_13 = _ID42471::_ID41910( 10 );
    var_14 = _ID42471::_ID41910( 30 );
    var_15 = _ID42471::_ID41910( 1000000 );
    var_16 = var_15 - var_13;
    var_17 = 0.0;
    var_18 = 1.0;
    var_19 = var_18 - var_17;
    var_20 = -25;
    var_21 = 0;
    var_22 = 25;
    var_23 = _ID42471::_ID41910( 0 );
    var_24 = _ID42471::_ID41910( 75.0 );
    var_25 = var_24 - var_23;
    var_26 = 0.0;
    var_27 = 1.0;
    var_28 = var_27 - var_26;
    var_29 = 0.6;
    var_30 = 1.0;
    var_31 = 1.6;
    var_32 = _ID42471::_ID41910( 0 );
    var_33 = _ID42471::_ID41910( 150.0 );
    var_34 = var_24 - var_23;
    var_35 = 0.0;
    var_36 = 0.4;
    var_37 = var_27 - var_26;
    var_38 = 0.0;
    var_39 = 0.5;
    var_40 = var_27 - var_26;
    var_41 = var_23;
    var_42 = var_24;
    var_43 = 0.0;
    var_44 = 1.0;
    var_45 = var_44 - var_43;
    var_46 = 1.0;
    var_47 = 2.0;
    var_48 = var_47 - var_46;
    var_49 = 30;
    var_50 = 0.0;
    var_51 = 1.0;
    var_52 = 0.5;
    var_53 = 1.5;
    var_54 = 100;
    var_55 = 200;
    var_56 = 500;
    var_57 = 6.0;
    _ID42471::_ID4480( "lbs_near_dist2vol", [ [ var_7, 1 ], [ var_8, 0 ] ] );
    _ID42471::_ID4480( "lbs_far_dist2vol", [ [ var_13, 0 ], [ var_14, 1 ], [ var_15, 1 ] ] );
    _ID42471::_ID4480( "lbs_near_pch2vol", [ [ var_20, 0.2 ], [ var_21, 1.0 ], [ var_22, 0.2 ] ] );
    _ID42471::_ID4480( "lbs_far_pch2vol", [ [ var_20, 0.2 ], [ var_21, 1.0 ], [ var_22, 0.2 ] ] );
    _ID42471::_ID4480( "lbs_pitch_pch2vol", [ [ var_20, 1 ], [ var_21, 0 ], [ var_22, 1 ] ] );
    _ID42471::_ID4480( "lbs_live_dist2vol", [ [ var_23, 1 ], [ var_24, 0 ] ] );
    _ID42471::_ID4480( "lbs_dist_far_dist2vol", [ [ var_32, 0.0 ], [ var_33 * 0.333, 0.333 ], [ var_33, 0 ] ] );
    _ID42471::_ID4480( "lbs_live1_accel2pch", [ [ var_38, 0.9 ], [ var_39, 1.1 ] ] );
    _ID42471::_ID4480( "lbs_live1_accel2vol", [ [ var_38, 0 ], [ var_39, 1 ] ] );
    _ID42471::_ID4480( "lbs_live1_dst2vol", [ [ var_41, var_44 ], [ var_42, var_43 ] ] );
    _ID42471::_ID4480( "lbs_flyby_vel2vol", [ [ var_3, var_50 ], [ var_6 * 0.25, var_51 * 0.5 ], [ var_5, var_51 ] ] );
    _ID42471::_ID4480( "lbs_flyby_vel2pch", [ [ var_3, var_52 ], [ var_5, var_53 ] ] );
    _ID42471::_ID4480( "lbs_dplr2pch", [ [ 0.0, 0.0 ], [ 2.0, 2.0 ] ] );
    _ID42471::_ID4480( "lbs_dplr2vol", [ [ var_29, var_27 ], [ var_30, var_26 ], [ var_31, var_27 ] ] );
    _ID42471::_ID4480( "lbs_flyby_duck_envelope", [ [ 0.0, 1.0 ], [ 0.4, 0.7 ], [ 0.6, 0.5 ], [ 0.8, 0.7 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4511();
}

_ID22079()
{
    return 0;
}

_ID22078( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["speed"];
    var_4 = var_0["distance2d"];
    var_5 = _ID42471::_ID39469( var_4 );

    if ( var_3 <= 5.1 && var_5 < 100.0 )
        var_2 = 1;

    return var_2;
}

_ID22076( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["speed"];
    var_4 = var_0["distance2d"];
    var_5 = _ID42471::_ID39469( var_4 );

    if ( var_3 > 5.1 && var_5 < 100.0 )
        var_2 = 1;

    return var_2;
}

_ID22074( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID39469( var_3 );

    if ( var_4 >= 100.0 )
        var_2 = 1;

    return var_2;
}

_ID22075( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID39469( var_3 );

    if ( !_func_02F( var_1._ID14624 ) )
    {
        var_1._ID14624 = _func_1A5();
        var_1._ID14624._ID28494 = var_4;
        var_1._ID14624._ID28479 = 0;
    }
    else
    {
        var_5 = var_4 - var_1._ID14624._ID28494;

        if ( var_5 < 0 && var_4 < 6.0 )
            var_2 = 1;

        var_1._ID14624._ID28494 = var_4;
        var_1._ID14624._ID28479 = var_5;
    }

    return var_2;
}

_ID22077( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = var_0["relative_speed"];
    var_5 = _ID42471::_ID39469( var_3 );

    if ( var_5 < 30 )
        var_2 = 1;

    return var_2;
}

_ID22072( var_0, var_1 )
{
    return 0;
}

_ID22073( var_0, var_1 )
{
    return 0;
}
