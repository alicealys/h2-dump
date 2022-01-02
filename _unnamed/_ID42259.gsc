// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    if ( !isdefined( level._ID30905 ) )
        level._ID30905 = [];

    if ( !isdefined( level._ID30901 ) )
        level._ID30901 = [];

    if ( !isdefined( level._ID30903 ) )
        level._ID30903 = [];

    if ( !isdefined( level._ID30899 ) )
        level._ID30899 = [];

    if ( !isdefined( level._ID30909 ) )
        level._ID30909 = [];

    if ( !isdefined( level._ID30908 ) )
        level._ID30908 = [];

    if ( !isdefined( level._ID30911 ) )
        level._ID30911 = [];

    if ( !isdefined( level._ID30895 ) )
        level._ID30895[0][0] = 0;

    if ( !isdefined( level._ID30908 ) )
        level._ID30908 = [];

    if ( !isdefined( level._ID30902 ) )
        level._ID30902 = [];

    if ( !isdefined( level._ID53525 ) )
        level._ID53525 = [];

    _ID42237::_ID9163( "moreThanThreeHack", 3 );

    if ( _ID42407::_ID20530() )
        _ID42237::_ID9163( "trace_part_for_efx", 12 );
    else
        _ID42237::_ID9163( "trace_part_for_efx" );

    level._ID49070 = _ID48262();
    level._ID53529 = _ID53981();
    level._ID46173 = _ID48616();

    if ( !level._ID46173 )
    {
        setsaveddvar( "ai_grenadeReturn_minDistSqr", squared( 0 ) );
        setsaveddvar( "ai_grenadeReturn_orientToToss", 1 );
    }

    var_0 = _ID53132();
    setsaveddvar( "ai_useCoverMoveUpBehaviour", var_0 );
    var_1 = _ID53652();
    setsaveddvar( "ai_ragdoll_unlink", var_1 );
    level._ID9277 = _ID52047();
    level._ID46221 = _ID49557();
    level._ID49979 = _ID49236();
    var_2 = _ID46076();
    setsaveddvar( "xanim_disableFootIK", !var_2 );
    level._ID54349 = 0.3;
    level._ID43470 = 1;
}

_ID46076()
{
    return 1;
}

_ID53132()
{
    return 1;
}

_ID53981()
{
    var_0 = _ID42407::_ID16247( "ai_bulletWhizbyEnable", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID48262()
{
    var_0 = _ID42407::_ID16247( "ai_turnAnimsOverride", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID48616()
{
    var_0 = _ID42407::_ID16247( "ai_grenadeReturn_improvements", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID53374()
{
    var_0 = _ID42407::_ID16247( "ai_forcedTeleportToAnimStart", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 1;
}

_ID49236()
{
    var_0 = _ID42407::_ID16247( "ai_coverArrival_ignorePlayer", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 0;
}

_ID53652()
{
    switch ( level.script )
    {
        case "dcburning":
            return 0;
    }

    return 1;
}

_ID52047()
{
    var_0 = _ID42407::_ID16247( "ai_use_rpg_repulsors", 1 );
    return var_0 > 0;
}

_ID49557()
{
    var_0 = _ID42407::_ID16247( "ai_use_grenade_dist_checks", 0 );

    if ( var_0 != 0 )
        return var_0 > 0;

    return 0;
}

_ID12733( var_0, var_1 )
{
    self waittill( var_0 );

    foreach ( var_3 in var_1 )
    {
        var_4 = var_3["guy"];

        if ( !isdefined( var_4 ) )
            continue;

        var_4._ID1363--;
        var_4._ID1502 = gettime();
    }
}

_ID3016( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _ID42237::_ID3315( var_0, ::_ID3017, var_1, var_4, var_5 );
}

_ID3023( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    thread _ID3017( var_0, var_1, var_4, var_5, "generic" );
}

_ID51641( var_0, var_1 )
{
    _ID46198( var_0.origin, var_1 );
}

_ID46198( var_0, var_1 )
{
    self endon( "death" );

    while ( !_ID42237::_ID14446( var_1 ) )
    {
        self orientmode( "face point", var_0 );
        waittillframeend;
    }

    self orientmode( "face default" );
}

_ID3020( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3099( var_3, var_1, var_2, 0, "generic" );
}

_ID3024( var_0, var_1, var_2 )
{
    var_3 = var_0.allowpain;
    var_0 _ID42407::_ID10949();
    _ID3021( var_0, "gravity", var_1, var_2 );

    if ( var_3 )
        var_0 _ID42407::_ID12508();
}

_ID3029( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3099( var_3, var_1, var_2, 0.25, "generic" );
}

_ID3027( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3061( var_3, var_1, var_2, "generic" );
}

_ID3028( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3078( var_3, var_1, var_2, "generic", ::_ID29042, ::_ID29046 );
}

_ID3067( var_0, var_1, var_2 )
{
    _ID3078( var_0, var_1, var_2, undefined, ::_ID29043, ::_ID29046 );
}

_ID3068( var_0, var_1, var_2 )
{
    _ID3078( var_0, var_1, var_2, undefined, ::_ID29044, ::_ID29046 );
}

_ID3025( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_2 ) && isdefined( self.model ) && _ID42407::_ID18252( self.model, var_2 ) )
    {
        var_4 = var_2;
        var_2 = var_3;
        var_3 = var_4;
    }

    var_5 = [];
    var_5["guy"] = var_0;
    var_5["entity"] = self;
    var_5["tag"] = var_3;
    var_6[0] = var_5;
    _ID3042( var_6, var_1, var_2, "generic" );
}

_ID2996( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15565( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = undefined;

    foreach ( var_9 in var_0 )
    {
        var_7 = var_9;
        thread _ID2999( var_9, var_1, var_2, var_5, var_6, var_9._ID3189, 0 );
    }

    var_7 _ID40955( var_2 );
    self notify( var_2 );
}

_ID2997( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15565( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];

    foreach ( var_8 in var_0 )
        thread _ID2999( var_8, var_1, var_2, var_5, var_6, var_8._ID3189, 1 );

    var_0[0] _ID40955( var_2 );
    self notify( var_2 );
}

_ID40955( var_0 )
{
    self endon( "finished_custom_animmode" + var_0 );
    self waittill( "death" );
}

_ID3021( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15565( var_3, var_2 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    thread _ID2999( var_0, var_1, var_2, var_7, var_8, "generic", 0, var_4, var_5 );
    var_0 _ID40955( var_2 );
    self notify( var_2 );
}

_ID3022( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15565( var_3, var_2 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    thread _ID2999( var_0, var_1, var_2, var_7, var_8, "generic", 1, var_4, var_5 );
    var_0 _ID40955( var_2 );
    self notify( var_2 );
}

_ID3000( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _ID2996( var_4, var_1, var_2, var_3 );
}

_ID2998( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4[0] = var_0;
    _ID2997( var_4, var_1, var_2, var_3 );
}

_ID3018( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15565( var_2, var_1 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    thread _ID3017( var_0, var_1, var_5, var_6, var_3 );
}

_ID3038( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3016( var_3, var_1, var_2 );
    _ID3096( var_3, var_1, 1.0 );
}

_ID3417( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._ID3189;

    var_2 = 0;

    if ( isdefined( level._ID30895[var_1] ) )
    {
        var_2 = 1;

        if ( isdefined( level._ID30895[var_1][var_0] ) )
            return;
    }

    var_3 = 0;

    if ( isdefined( level._ID30909[var_1] ) )
    {
        var_3 = 1;

        if ( isdefined( level._ID30909[var_1][var_0] ) )
            return;
    }

    if ( var_2 || var_3 )
    {
        if ( var_2 )
        {
            var_4 = getarraykeys( level._ID30895[var_1] );

            foreach ( var_6 in var_4 )
            {

            }
        }

        if ( var_3 )
        {
            var_4 = getarraykeys( level._ID30909[var_1] );

            foreach ( var_6 in var_4 )
            {

            }
        }

        return;
    }

    var_10 = getarraykeys( level._ID30895 );
    var_10 = _ID42237::_ID3296( var_10, getarraykeys( level._ID30909 ) );

    foreach ( var_12 in var_10 )
    {

    }
}

_ID3017( var_0, var_1, var_2, var_3, var_4 )
{
    var_0._ID14354 = gettime();

    if ( isdefined( var_4 ) )
        var_5 = var_4;
    else
        var_5 = var_0._ID3189;

    var_0 _ID32454( var_1, var_2, var_3, var_5 );

    if ( isai( var_0 ) )
    {
        var_0._ID1456 = var_1;
        var_0._ID1366 = var_5;
        var_0 animcustom( animscripts\first_frame::main );
    }
    else
    {
        var_0 stopanimscripted();

        if ( isarray( level._ID30895[var_5][var_1] ) )
        {
            var_0 setanimknob( level._ID30895[var_5][var_1][0], 1, 0, 0 );
            var_0 setanimtime( level._ID30895[var_5][var_1][0], 0 );
        }
        else
        {
            var_0 setanimknob( level._ID30895[var_5][var_1], 1, 0, 0 );
            var_0 setanimtime( level._ID30895[var_5][var_1], 0 );
        }
    }
}

_ID2999( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( isai( var_0 ) && var_0 _ID42407::_ID11498() )
        return;

    var_9 = undefined;

    if ( isdefined( var_5 ) )
        var_9 = var_5;
    else
        var_9 = var_0._ID3189;

    if ( !isdefined( var_8 ) || !var_8 )
        var_0 _ID32454( var_2, var_3, var_4, var_5, var_6 );

    var_0._ID1365 = var_1;
    var_0._ID1402 = var_2;
    var_0._ID1651 = self;
    var_0._ID1364 = var_2;
    var_0._ID1366 = var_9;
    var_0._ID1403 = var_6;
    var_0._ID1404 = var_7;
    var_0 animcustom( animscripts\animmode::main );
}

_ID3040( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];

    foreach ( var_7 in var_0 )
    {
        var_8 = [];
        var_8["guy"] = var_7;
        var_8["entity"] = self;
        var_8["tag"] = var_3;
        var_8["origin_offset"] = var_4;
        var_5[var_5.size] = var_8;
    }

    _ID3042( var_5, var_1, var_2 );
}

_ID3043( var_0, var_1, var_2 )
{
    var_3 = [];
    var_3[0] = var_0;
    _ID3042( var_3, var_1, var_2 );
}

_ID3042( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( var_0.size <= 0 )
        return;

    foreach ( var_5 in var_0 )
    {
        var_6 = var_5["guy"];

        if ( !isdefined( var_6 ) )
            continue;

        if ( !isdefined( var_6._ID1363 ) )
            var_6._ID1363 = 0;

        var_6 endon( "death" );
        var_6._ID1363++;
    }

    var_8 = var_0[0]["guy"];

    if ( !isdefined( var_2 ) )
        var_2 = "stop_loop";

    thread _ID12733( var_2, var_0 );
    self endon( var_2 );
    var_9 = "looping anim";
    var_10 = undefined;

    if ( isdefined( var_3 ) )
        var_10 = var_3;
    else
        var_10 = var_8._ID3189;

    if ( !_ID3419( var_1, var_10 ) )
        return;

    var_11 = 0;
    var_12 = 0;

    for (;;)
    {
        for ( var_11 = _ID3147( var_10, var_1 ); var_11 == var_12 && var_11 != 0; var_11 = _ID3147( var_10, var_1 ) )
        {

        }

        var_12 = var_11;
        var_13 = undefined;
        var_14 = 999999;
        var_15 = undefined;
        var_6 = undefined;

        foreach ( var_34, var_5 in var_0 )
        {
            var_17 = var_5["entity"];
            var_6 = var_5["guy"];
            var_18 = var_17 _ID15565( var_5["tag"], var_1 );
            var_19 = var_18["origin"];
            var_20 = var_18["angles"];

            if ( isdefined( var_5["origin_offset"] ) )
            {
                var_21 = var_5["origin_offset"];
                var_22 = anglestoforward( var_20 );
                var_23 = anglestoright( var_20 );
                var_24 = anglestoup( var_20 );
                var_19 += var_22 * var_21[0];
                var_19 += var_23 * var_21[1];
                var_19 += var_24 * var_21[2];
            }

            if ( isdefined( var_6._ID29521 ) )
            {
                var_6._ID29521 = undefined;
                var_0[var_34] = undefined;
                continue;
            }

            var_25 = 0;
            var_26 = 0;
            var_27 = 0;
            var_28 = 0;
            var_29 = undefined;
            var_30 = undefined;
            var_31 = undefined;

            if ( isdefined( var_3 ) )
                var_31 = var_3;
            else
                var_31 = var_6._ID3189;

            if ( isdefined( level._ID30901[var_31] ) && isdefined( level._ID30901[var_31][var_1] ) && isdefined( level._ID30901[var_31][var_1][var_11] ) )
            {
                var_25 = 1;
                var_29 = level._ID30901[var_31][var_1][var_11];
            }

            if ( isdefined( level._ID30909[var_31] ) && isdefined( level._ID30909[var_31][var_1] ) && isdefined( level._ID30909[var_31][var_1][var_11] ) )
            {
                var_26 = 1;
                var_30 = level._ID30909[var_31][var_1][var_11];
            }

            if ( isdefined( level._ID30899[var_31] ) && isdefined( level._ID30899[var_31][var_11 + var_1] ) )
                var_6 playsound( level._ID30899[var_31][var_11 + var_1] );

            if ( isdefined( level._ID30895[var_31] ) && isdefined( level._ID30895[var_31][var_1] ) && ( !isai( var_6 ) || !var_6 _ID42407::_ID11498() ) )
                var_27 = 1;

            if ( var_27 )
            {
                if ( isdefined( level._ID30902[var_31] ) && isdefined( level._ID30902[var_31][var_1] ) )
                    var_32 = level._ID30902[var_31][var_1];
                else
                    var_32 = 0.2;

                if ( _ID44809( level._ID30895[var_31][var_1][var_11] ) )
                    var_6 _meth_83d4( level._ID30895[var_31][var_1][var_11], 1.0 );

                var_6 _ID21772( var_1, var_31 );
                var_6 animscripted( var_9, var_19, var_20, level._ID30895[var_31][var_1][var_11], undefined, undefined, var_32 );
                var_33 = getanimlength( level._ID30895[var_31][var_1][var_11] );

                if ( var_33 < var_14 )
                {
                    var_14 = var_33;
                    var_13 = var_34;
                }

                thread _ID35866( var_6, var_9, var_1, var_31, level._ID30895[var_31][var_1][var_11] );
                thread _ID3201( var_6, var_9, var_1 );
            }

            if ( var_25 || var_26 )
            {
                if ( isai( var_6 ) )
                {
                    if ( var_27 )
                        var_6 animscripts\face::_ID30763( var_29, var_30, 1.0 );
                    else
                        var_6 animscripts\face::_ID30763( var_29, var_30, 1.0, var_9 );
                }
                else
                    var_6 _ID42407::_ID27079( var_30 );

                var_15 = var_34;
            }
        }

        if ( !isdefined( var_6 ) )
            break;

        if ( isdefined( var_13 ) )
        {
            var_0[var_13]["guy"] waittillmatch( var_9,  "end"  );
            waitframe;
            continue;
        }

        if ( isdefined( var_15 ) )
            var_0[var_15]["guy"] waittill( var_9 );
    }
}

_ID35866( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 notify( "stop_sequencing_notetracks" );
    thread _ID25024( var_0, var_1, self, var_2, var_3, var_4 );
}

_ID3103( var_0, var_1 )
{

}

_ID3102( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
        var_3 thread _ID3103( self, var_1 );
}

_ID3099( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    _ID3104( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID3109( var_0, var_1, var_2, var_3 )
{
    _ID3104( var_0, var_1, var_2, 0.25, var_3 );
}

_ID3104( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    foreach ( var_9 in var_0 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        if ( !isdefined( var_9._ID1363 ) )
            var_9._ID1363 = 0;

        var_9._ID1363++;
    }

    var_11 = _ID15565( var_2, var_1 );
    var_12 = var_11["origin"];
    var_13 = var_11["angles"];

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    var_14 = undefined;
    var_15 = 999999;

    if ( var_5 )
        var_15 = 0;

    var_16 = undefined;
    var_17 = undefined;
    var_18 = undefined;

    if ( isdefined( var_6 ) && var_6 )
        var_19 = undefined;
    else
        var_19 = "single anim";

    var_7 = _ID42237::_ID37527( isdefined( var_7 ), var_7, 1 );

    foreach ( var_32, var_9 in var_0 )
    {
        var_21 = 0;
        var_22 = 0;
        var_23 = 0;
        var_24 = 0;
        var_25 = undefined;
        var_26 = undefined;
        var_27 = undefined;

        if ( isdefined( var_4 ) )
            var_27 = var_4;
        else
            var_27 = var_9._ID3189;

        if ( isdefined( level._ID30901[var_27] ) && isdefined( level._ID30901[var_27][var_1] ) )
        {
            var_21 = 1;
            var_26 = level._ID30901[var_27][var_1];
            var_18 = var_26;
        }

        if ( isdefined( level._ID30909[var_27] ) && isdefined( level._ID30909[var_27][var_1] ) )
        {
            var_22 = 1;
            var_25 = level._ID30909[var_27][var_1];
        }

        if ( isdefined( level._ID30895[var_27] ) && isdefined( level._ID30895[var_27][var_1] ) && ( !isai( var_9 ) || !var_9 _ID42407::_ID11498() ) )
            var_23 = 1;

        if ( isdefined( level._ID30899[var_27] ) && isdefined( level._ID30899[var_27][var_1] ) )
            var_9 playsound( level._ID30899[var_27][var_1] );

        if ( var_23 )
        {
            if ( isdefined( level._ID30902[var_27] ) && isdefined( level._ID30902[var_27][var_1] ) )
                var_28 = level._ID30902[var_27][var_1];
            else
                var_28 = 0.2;

            var_9 _ID21772( var_1, var_27 );

            if ( isplayernumber( var_9 ) )
            {
                var_29 = level._ID30895[var_27]["root"];
                var_9 setanim( var_29, 0, var_28 );
                var_30 = level._ID30895[var_27][var_1];
                var_9 setflaggedanim( var_19, var_30, 1, var_28 );
            }
            else if ( var_9.code_classname == "misc_turret" )
            {
                var_30 = level._ID30895[var_27][var_1];
                var_9 setflaggedanim( var_19, var_30, 1, var_28 );
            }
            else
            {
                var_30 = level._ID30895[var_27][var_1];

                if ( !var_21 && animscripts\face::_ID3186( var_30 ) )
                    var_9 animscripts\face::_ID51415();

                if ( _ID44809( var_30 ) )
                    var_9 _meth_83d4( var_30, 1.0 );

                var_9 animscripted( var_19, var_12, var_13, var_30, undefined, undefined, var_28, !isdefined( var_19 ), var_7 );
            }

            var_31 = getanimlength( level._ID30895[var_27][var_1] );

            if ( var_31 < var_15 && !var_5 || var_31 > var_15 && var_5 )
            {
                var_15 = var_31;
                var_14 = var_32;
            }

            if ( isdefined( var_19 ) )
            {
                thread _ID35866( var_9, var_19, var_1, var_27, level._ID30895[var_27][var_1] );
                thread _ID3201( var_9, var_19, var_1 );
            }
        }

        if ( var_21 || var_22 )
        {
            if ( var_21 )
            {
                if ( var_22 )
                    var_9 thread _ID10210( var_1, var_21, var_25, level._ID30901[var_27][var_1] );

                thread _ID3013( var_9, var_1, level._ID30901[var_27][var_1] );
                var_17 = var_32;
            }
            else if ( isai( var_9 ) )
            {
                if ( var_23 )
                    var_9 animscripts\face::_ID30763( var_26, var_25, 1.0 );
                else
                {
                    if ( !isdefined( var_9._ID11027 ) || !var_9._ID11027 )
                        var_9 thread _ID3015( "single dialogue" );

                    var_9 animscripts\face::_ID30763( var_26, var_25, 1.0, "single dialogue" );
                }
            }
            else
                var_9 thread _ID42407::_ID27079( var_25, "single dialogue" );

            var_16 = var_32;
        }
    }

    if ( isdefined( var_14 ) )
    {
        var_33 = spawnstruct();
        var_33 thread _ID3001( var_0[var_14], var_1 );
        var_33 thread _ID2988( var_0[var_14], var_1, var_15, var_3 );
        var_33 waittill( var_1 );
    }
    else if ( isdefined( var_17 ) )
    {
        var_33 = spawnstruct();
        var_33 thread _ID3001( var_0[var_17], var_1 );
        var_33 thread _ID3014( var_0[var_17], var_1, var_18 );
        var_33 waittill( var_1 );
    }
    else if ( isdefined( var_16 ) )
    {
        var_33 = spawnstruct();
        var_33 thread _ID3001( var_0[var_16], var_1 );
        var_33 thread _ID3003( var_0[var_16], var_1 );
        var_33 waittill( var_1 );
    }

    foreach ( var_9 in var_0 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        if ( isplayernumber( var_9 ) )
        {
            var_27 = undefined;

            if ( isdefined( var_4 ) )
                var_27 = var_4;
            else
                var_27 = var_9._ID3189;

            if ( isdefined( level._ID30895[var_27][var_1] ) )
            {
                var_29 = level._ID30895[var_27]["root"];
                var_9 setanim( var_29, 1, 0.2 );
                var_30 = level._ID30895[var_27][var_1];
                var_9 clearanim( var_30, 0.2 );
            }
        }

        var_9._ID1363--;
        var_9._ID1502 = gettime();
    }

    self notify( var_1 );
}

_ID3001( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "death" );

    if ( isdefined( var_0._ID3036 ) && var_0._ID3036 )
        return;

    self notify( var_1 );
}

_ID3014( var_0, var_1, var_2 )
{
    self endon( var_1 );
    var_3 = getanimlength( var_2 );
    wait(var_3);
    self notify( var_1 );
}

_ID3003( var_0, var_1 )
{
    self endon( var_1 );
    var_0 waittill( "single dialogue" );
    self notify( var_1 );
}

_ID2988( var_0, var_1, var_2, var_3 )
{
    self endon( var_1 );
    var_0 endon( "death" );
    var_2 -= var_3;

    if ( var_3 > 0 && var_2 > 0 )
    {
        var_0 _ID42407::_ID41115( "single anim", "end", var_2 );
        var_0 stopanimscripted();
    }
    else
        var_0 waittillmatch( "single anim",  "end"  );

    self notify( var_1 );
}

_ID3201( var_0, var_1, var_2 )
{
    if ( isdefined( var_0._ID11572 ) && var_0._ID11572 )
        return;

    var_0 endon( "stop_sequencing_notetracks" );
    var_0 endon( "death" );
    var_0 animscripts\shared::_ID11529( var_1, undefined, undefined, 1 );
}

_ID1846( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID3208; var_1++ )
    {
        if ( isdefined( self._ID3213[var_1] ) )
            continue;

        self._ID3213[var_1] = var_0;
        return;
    }

    var_2 = getarraykeys( self._ID3213 );
    var_3 = var_2[0];
    var_4 = self._ID3213[var_3]._ID12629;

    for ( var_1 = 1; var_1 < var_2.size; var_1++ )
    {
        var_5 = var_2[var_1];

        if ( self._ID3213[var_5]._ID12629 < var_4 )
        {
            var_4 = self._ID3213[var_5]._ID12629;
            var_3 = var_5;
        }
    }

    self._ID3213[var_3] = var_0;
}

_ID3206( var_0, var_1 )
{
    var_1 = tolower( var_1 );
    var_2 = getarraykeys( self._ID3213 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( self._ID3213[var_4]._ID3183 != var_0 )
            continue;

        if ( self._ID3213[var_4]._ID24954 != var_1 )
            continue;

        self._ID3213[var_4]._ID12629 = gettime() + 60000;
        return 1;
    }

    return 0;
}

_ID3212( var_0, var_1, var_2 )
{
    var_1 = tolower( var_1 );
    _ID1959();

    if ( var_1 == "end" )
        return;

    if ( _ID3206( var_0, var_1 ) )
        return;

    var_3 = spawnstruct();
    var_3._ID3183 = var_0;
    var_3._ID24954 = var_1;
    var_3._ID3189 = var_2;
    var_3._ID12629 = gettime() + 60000;
    _ID1846( var_3 );
}

_ID3209( var_0, var_1 )
{
    _ID1959();
    var_2 = spawnstruct();
    var_2._ID3183 = var_0;
    var_2._ID24954 = "#" + var_0;
    var_2._ID3189 = var_1;
    var_2._ID12629 = gettime() + 60000;

    if ( _ID3206( var_0, var_2._ID24954 ) )
        return;

    _ID1846( var_2 );
}

_ID3210( var_0, var_1, var_2 )
{
    _ID1959();
    var_0 = var_1 + var_0;
    var_3 = spawnstruct();
    var_3._ID3183 = var_0;
    var_3._ID24954 = "#" + var_0;
    var_3._ID3189 = var_2;
    var_3._ID12629 = gettime() + 60000;

    if ( _ID3206( var_0, var_3._ID24954 ) )
        return;

    _ID1846( var_3 );
}

_ID25024( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( "stop_sequencing_notetracks" );
    var_0 endon( "death" );

    if ( isdefined( var_2 ) )
        var_6 = var_2;
    else
        var_6 = self;

    var_7 = undefined;

    if ( isdefined( var_4 ) )
        var_7 = var_4;
    else
        var_7 = var_0._ID3189;

    var_8 = spawnstruct();
    var_8._ID10730 = [];
    var_9 = [];

    if ( isdefined( var_7 ) && isdefined( level._ID30905[var_7] ) )
    {
        if ( isdefined( var_3 ) && isdefined( level._ID30905[var_7][var_3] ) )
            var_9[var_3] = level._ID30905[var_7][var_3];

        if ( isdefined( level._ID30905[var_7]["any"] ) )
            var_9["any"] = level._ID30905[var_7]["any"];
    }

    foreach ( var_18, var_11 in var_9 )
    {
        foreach ( var_13 in level._ID30905[var_7][var_18] )
        {
            foreach ( var_15 in var_13 )
            {
                if ( isdefined( var_15["dialog"] ) )
                {
                    var_8._ID10730[var_15["dialog"]] = 1;
                    continue;
                }

                if ( isdefined( var_15["dialog_radio"] ) )
                    var_8._ID10730[var_15["dialog_radio"]] = 1;
            }
        }
    }

    var_22 = 0;
    var_23 = 0;

    for (;;)
    {
        var_8._ID10828 = 0;
        var_20 = undefined;

        if ( !var_22 && isdefined( var_7 ) && isdefined( var_3 ) )
        {
            var_22 = 1;
            var_24 = undefined;
            var_23 = isdefined( level._ID30905[var_7] ) && isdefined( level._ID30905[var_7][var_3] ) && isdefined( level._ID30905[var_7][var_3]["start"] );

            if ( !var_23 )
                continue;

            var_20 = "start";
        }
        else
            var_0 waittill( var_1,  var_20  );

        if ( var_20 == "end" )
            return;

        foreach ( var_18, var_11 in var_9 )
        {
            if ( isdefined( level._ID30905[var_7][var_18][var_20] ) )
            {
                if ( getdvarint( "enableMW1GetArrayKeysAndForEach" ) != 0 )
                {
                    for ( var_26 = 0; var_26 < level._ID30905[var_7][var_18][var_20].size; var_26++ )
                    {
                        var_15 = level._ID30905[var_7][var_18][var_20][var_26];
                        _ID3033( var_15, var_0, var_8, var_6 );
                    }

                    continue;
                }

                foreach ( var_15 in level._ID30905[var_7][var_18][var_20] )
                    _ID3033( var_15, var_0, var_8, var_6 );
            }
        }

        var_29 = getsubstr( var_20, 0, 3 );

        if ( var_29 == "ps_" )
        {
            var_30 = getsubstr( var_20, 3 );

            if ( isdefined( var_0._ID3051 ) )
                var_0 thread [[ var_0._ID3051 ]]( var_30, "j_head", 1 );
            else
                var_0 thread _ID42407::_ID27080( var_30, undefined, 1 );

            continue;
        }

        if ( var_29 == "vo_" )
        {
            var_30 = getsubstr( var_20, 3 );

            if ( isdefined( var_0._ID3051 ) )
                var_0 thread [[ var_0._ID3051 ]]( var_30, "j_head", 1 );
            else
                var_0 thread _ID42407::_ID27080( var_30, "j_head", 1 );

            continue;
        }

        if ( var_29 == "sd_" )
        {
            var_30 = getsubstr( var_20, 3 );
            var_0 thread _ID42407::_ID34400( var_30 );
            continue;
        }

        if ( var_29 == "fx_" )
        {
            if ( _ID50705( var_20, var_0 ) )
                continue;
        }

        var_29 = getsubstr( var_20, 0, 4 );

        if ( var_29 == "psr_" )
        {
            var_30 = getsubstr( var_20, 4 );
            _ID42407::_ID28864( var_30 );
            continue;
        }

        switch ( var_20 )
        {
            case "ignoreall true":
                self.ignoreall = 1;
                continue;
            case "ignoreall false":
                self.ignoreall = 0;
                continue;
            case "ignoreme true":
                self.ignoreme = 1;
                continue;
            case "ignoreme false":
                self.ignoreme = 0;
                continue;
            case "allowdeath true":
                self.allowdeath = 1;
                continue;
            case "allowdeath false":
                self.allowdeath = 0;
                continue;
        }
    }
}

_ID50705( var_0, var_1 )
{
    var_2 = strtok( tolower( getsubstr( var_0, 3 ) ), ",() " );

    if ( var_2.size == 2 )
    {
        if ( var_2[0] == "exploder" )
        {
            _ID42234::_ID13611( var_2[1] );
            return 1;
        }
        else if ( var_2[0] == "stop_exploder" )
        {
            _ID42407::_ID36481( var_2[1] );
            return 1;
        }
        else
        {
            playfxontag( _ID42237::_ID16299( var_2[0] ), var_1, var_2[1] );
            return 1;
        }
    }
    else if ( var_2.size == 3 )
    {
        if ( var_2[0] == "playfxontag" )
        {
            playfxontag( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "stopfxontag" )
        {
            stopfxontag( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "killfxontag" )
        {
            killfxontag( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "attachmodel" )
        {
            var_1 attach( var_2[1], var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "detachmodel" )
        {
            var_1 detach( var_2[1], var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "stopfxontagwithoffset" )
        {
            _ID42237::_ID44034( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
        else if ( var_2[0] == "killfxontagwithoffset" )
        {
            _ID42237::_ID49360( _ID42237::_ID16299( var_2[1] ), var_1, var_2[2] );
            return 1;
        }
    }
    else if ( var_2[0] == "playfx" && ( var_2.size == 5 || var_2.size == 8 || var_2.size == 11 ) )
    {
        var_3 = _ID42237::_ID16299( var_2[1] );
        var_4 = ( float( var_2[2] ), float( var_2[3] ), float( var_2[4] ) );
        var_5 = undefined;
        var_6 = undefined;

        if ( var_2.size >= 8 )
            var_5 = ( float( var_2[5] ), float( var_2[6] ), float( var_2[7] ) );

        if ( var_2.size == 11 )
            var_6 = ( float( var_2[8] ), float( var_2[9] ), float( var_2[10] ) );

        if ( !isdefined( var_5 ) )
            playfx( var_3, var_4 );
        else if ( !isdefined( var_6 ) )
            playfx( var_3, var_4, var_5 );
        else
            playfx( var_3, var_4, var_5, var_6 );

        return 1;
    }
    else if ( var_2[0] == "playfxontagwithoffset" && ( var_2.size == 6 || var_2.size == 9 ) )
    {
        var_3 = _ID42237::_ID16299( var_2[1] );
        var_7 = var_2[2];
        var_8 = undefined;
        var_9 = ( float( var_2[3] ), float( var_2[4] ), float( var_2[5] ) );

        if ( var_2.size == 9 )
            var_8 = ( float( var_2[6] ), float( var_2[7] ), float( var_2[8] ) );

        _ID42237::_ID49667( var_3, var_1, var_7, var_9, var_8 );
        return 1;
    }

    return 0;
}

_ID3033( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0["function"] ) )
    {
        if ( !isdefined( var_0["function_args"] ) )
            self thread [[ var_0["function"] ]]( var_1 );
        else
            self thread [[ var_0["function"] ]]( var_1, var_0["function_args"] );
    }

    if ( isdefined( var_0["flag"] ) )
        _ID42237::_ID14402( var_0["flag"] );

    if ( isdefined( var_0["flag_clear"] ) )
        _ID42237::_ID14388( var_0["flag_clear"] );

    if ( isdefined( var_0["notify"] ) )
        level notify( var_0["notify"] );

    if ( isdefined( var_0["attach gun left"] ) )
    {
        var_1 _ID17506();
        return;
    }

    if ( isdefined( var_0["attach gun right"] ) )
    {
        var_1 _ID17507();
        return;
    }

    if ( isdefined( var_0["detach gun"] ) )
    {
        var_1 _ID17502( var_0 );
        return;
    }

    if ( isdefined( var_0["attach model"] ) )
    {
        if ( isdefined( var_0["selftag"] ) )
            var_1 attach( var_0["attach model"], var_0["selftag"] );
        else
            var_3 attach( var_0["attach model"], var_0["tag"] );

        return;
    }

    if ( isdefined( var_0["detach model"] ) )
    {
        waitframe;

        if ( isdefined( var_0["selftag"] ) )
            var_1 detach( var_0["detach model"], var_0["selftag"] );
        else
            var_3 detach( var_0["detach model"], var_0["tag"] );
    }

    if ( isdefined( var_0["sound"] ) )
    {
        var_4 = undefined;

        if ( !isdefined( var_0["sound_stays_death"] ) )
            var_4 = 1;

        var_5 = undefined;

        if ( isdefined( var_0["sound_on_tag"] ) )
            var_5 = var_0["sound_on_tag"];

        var_1 thread _ID42407::_ID27080( var_0["sound"], var_5, var_4 );
    }

    if ( isdefined( var_0["playersound"] ) )
        level.player playsound( var_0["playersound"] );

    if ( !var_2._ID10828 )
    {
        if ( isdefined( var_0["dialog"] ) && isdefined( var_2._ID10730[var_0["dialog"]] ) )
        {
            var_6 = undefined;

            if ( isdefined( var_0["dialog_do_notify_on_end"] ) && var_0["dialog_do_notify_on_end"] )
                var_6 = var_0["dialog"];

            var_1 animscripts\face::_ID30763( undefined, var_0["dialog"], 1.0, var_6 );
            var_2._ID10730[var_0["dialog"]] = undefined;
            var_2._ID10828 = 1;
        }
        else if ( isdefined( var_0["dialog_radio"] ) && isdefined( var_2._ID10730[var_0["dialog_radio"]] ) )
        {
            thread _ID42407::_ID28864( var_0["dialog_radio"] );
            var_2._ID10730[var_0["dialog_radio"]] = undefined;
            var_2._ID10828 = 1;
        }
    }

    if ( isdefined( var_0["create model"] ) )
        _ID2987( var_1, var_0 );
    else if ( isdefined( var_0["delete model"] ) )
        _ID3080( var_1, var_0 );

    if ( isdefined( var_0["selftag"] ) )
    {
        if ( isdefined( var_0["effect"] ) )
        {
            var_7 = isdefined( var_0["moreThanThreeHack"] );

            if ( var_7 )
                _ID42237::_ID22529( "moreThanThreeHack" );

            playfxontag( level._ID1426[var_0["effect"]], var_1, var_0["selftag"] );

            if ( var_7 )
                _ID42237::_ID39496( "moreThanThreeHack" );
        }

        if ( isdefined( var_0["stop_effect"] ) )
            stopfxontag( level._ID1426[var_0["stop_effect"]], var_1, var_0["selftag"] );

        if ( isdefined( var_0["swap_part_to_efx"] ) )
        {
            playfxontag( level._ID1426[var_0["swap_part_to_efx"]], var_1, var_0["selftag"] );
            var_1 hidepart( var_0["selftag"] );
        }

        if ( isdefined( var_0["trace_part_for_efx"] ) )
        {
            var_8 = undefined;
            var_9 = _ID42237::_ID16299( var_0["trace_part_for_efx"] );

            if ( isdefined( var_0["trace_part_for_efx_water"] ) )
                var_8 = _ID42237::_ID16299( var_0["trace_part_for_efx_water"] );

            var_10 = 0;

            if ( isdefined( var_0["trace_part_for_efx_delete_depth"] ) )
                var_10 = var_0["trace_part_for_efx_delete_depth"];

            var_1 thread _ID38037( var_0["selftag"], var_9, var_8, var_10 );
        }

        if ( isdefined( var_0["trace_part_for_efx_canceling"] ) )
            var_1 thread _ID38038( var_0["selftag"] );
    }

    if ( isdefined( var_0["tag"] ) && isdefined( var_0["effect"] ) )
        playfxontag( level._ID1426[var_0["effect"]], var_3, var_0["tag"] );

    if ( isdefined( var_0["selftag"] ) && isdefined( var_0["effect_looped"] ) )
        playfxontag( level._ID1426[var_0["effect_looped"]], var_1, var_0["selftag"] );

    if ( isdefined( var_0["lui_notify"] ) )
        luinotifyevent( var_0["lui_notify"], 0 );

    if ( isdefined( var_0["omnvar"] ) )
        setomnvar( var_0["omnvar"], var_0["value"] );
}

_ID38038( var_0 )
{
    self notify( "cancel_trace_for_part_" + var_0 );
}

_ID38037( var_0, var_1, var_2, var_3 )
{
    var_4 = "trace_part_for_efx";
    self endon( "cancel_trace_for_part_" + var_0 );
    var_5 = self gettagorigin( var_0 );
    var_6 = 0;
    var_7 = spawnstruct();
    var_7._ID21837 = self gettagorigin( var_0 );
    var_7._ID18722 = 0;
    var_7._ID26268 = var_0;
    var_7._ID18724 = 0;
    var_7._ID12315 = var_1;
    var_7._ID36216 = 0;
    var_7._ID21830 = gettime();

    while ( isdefined( self ) && !var_7._ID18722 )
    {
        _ID42237::_ID22529( var_4 );
        _ID37552( var_7 );
        _ID42237::_ID39501( var_4 );

        if ( var_7._ID36216 == 1 && gettime() - var_7._ID21830 > 3000 )
            return;
    }

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_2 ) && var_7._ID18724 )
        var_1 = var_2;

    playfx( var_1, var_7._ID21837 );

    if ( var_3 == 0 )
        self hidepart( var_0 );
    else
        thread _ID18560( var_7._ID21837[2] - var_3, var_0 );
}

_ID18560( var_0, var_1 )
{
    self endon( "entitydeleted" );

    while ( self gettagorigin( var_1 )[2] > var_0 )
        wait 0.05;

    self hidepart( var_1 );
}

_ID37552( var_0 )
{
    var_1 = undefined;

    if ( !isdefined( self ) )
        return;

    var_0._ID9464 = self gettagorigin( var_0._ID26268 );

    if ( var_0._ID9464 != var_0._ID21837 )
    {
        var_0._ID21830 = gettime();
        var_0._ID36216 = 0;

        if ( !bullettracepassed( var_0._ID21837, var_0._ID9464, 0, self ) )
        {
            var_2 = bullettrace( var_0._ID21837, var_0._ID9464, 0, self );

            if ( var_2["fraction"] < 1.0 )
            {
                var_0._ID21837 = var_2["position"];
                var_0._ID18724 = var_2["surfacetype"] == "water";
                var_0._ID18722 = 1;
                return;
                jump loc_2326
            }
        }
    }
    else
        var_0._ID36216 = 1;

    var_0._ID21837 = var_0._ID9464;
}

_ID2987( var_0, var_1 )
{
    if ( !isdefined( var_0._ID31557 ) )
        var_0._ID31557 = [];

    var_2 = var_0._ID31557.size;
    var_0._ID31557[var_2] = spawn( "script_model", ( 0, 0, 0 ) );
    var_0._ID31557[var_2] setmodel( var_1["create model"] );
    var_0._ID31557[var_2].origin = var_0 gettagorigin( var_1["selftag"] );
    var_0._ID31557[var_2].angles = var_0 gettagangles( var_1["selftag"] );
}

_ID3080( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0._ID31557.size; var_2++ )
    {
        if ( isdefined( var_1["explosion"] ) )
        {
            var_3 = anglestoforward( var_0._ID31557[var_2].angles );
            var_3 *= 120;
            var_3 += var_0._ID31557[var_2].origin;
            playfx( level._ID1426[var_1["explosion"]], var_0._ID31557[var_2].origin );
            radiusdamage( var_0._ID31557[var_2].origin, 350, 700, 50 );
        }

        var_0._ID31557[var_2] delete();
    }
}

_ID17506()
{
    if ( !isdefined( self._ID17505 ) )
        return;

    self._ID17505 delete();
    self.dropweapon = 1;
    animscripts\shared::_ID26732( self.weapon, "left" );
}

_ID17507()
{
    if ( !isdefined( self._ID17505 ) )
        return;

    self._ID17505 delete();
    self.dropweapon = 1;
    animscripts\shared::_ID26732( self.weapon, "right" );
}

_ID17502( var_0 )
{
    if ( isdefined( self._ID17505 ) )
        return;

    var_1 = self gettagorigin( var_0["tag"] );
    var_2 = self gettagangles( var_0["tag"] );
    var_3 = 0;

    if ( isdefined( var_0["suspend"] ) )
        var_3 = var_0["suspend"];

    var_4 = spawn( "weapon_" + self.weapon, var_1, var_3 );
    var_4.angles = var_2;
    self._ID17505 = var_4;
    animscripts\shared::_ID26732( self.weapon, "none" );
    self.dropweapon = 0;
}

_ID3419( var_0, var_1 )
{
    if ( !isdefined( level._ID30895[var_1][var_0] ) )
        return 0;

    if ( !isarray( level._ID30895[var_1][var_0] ) )
        return 0;

    return 1;
}

_ID3147( var_0, var_1 )
{
    var_2 = level._ID30895[var_0][var_1].size;
    var_3 = randomint( var_2 );

    if ( var_2 > 1 )
    {
        var_4 = 0;
        var_5 = 0;

        for ( var_6 = 0; var_6 < var_2; var_6++ )
        {
            if ( isdefined( level._ID30895[var_0][var_1 + "weight"] ) )
            {
                if ( isdefined( level._ID30895[var_0][var_1 + "weight"][var_6] ) )
                {
                    var_4++;
                    var_5 += level._ID30895[var_0][var_1 + "weight"][var_6];
                }
            }
        }

        if ( var_4 == var_2 )
        {
            var_7 = randomfloat( var_5 );
            var_5 = 0;

            for ( var_6 = 0; var_6 < var_2; var_6++ )
            {
                var_5 += level._ID30895[var_0][var_1 + "weight"][var_6];

                if ( var_7 < var_5 )
                {
                    var_3 = var_6;
                    break;
                }
            }
        }
    }

    return var_3;
}

_ID3065( var_0, var_1, var_2, var_3, var_4 )
{
    thread _ID3061( var_0, var_1, var_4 );
    var_5 = spawnstruct();
    var_5._ID29048 = 0;

    foreach ( var_7 in var_0 )
    {
        var_5._ID29048++;
        thread _ID19318( var_7, var_2, var_3, var_4, var_5 );
    }

    for (;;)
    {
        var_5 waittill( "reached_position" );

        if ( var_5._ID29048 <= 0 )
            return;
    }
}

_ID40872()
{
    self endon( "death" );
    self waittill( "anim_reach_complete" );
}

_ID19318( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _ID40872();
    var_4._ID29048--;
    var_4 notify( "reached_position" );

    if ( isalive( var_0 ) )
        _ID3044( var_0, var_1, var_2, var_3 );
}

_ID15565( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    if ( _ID46255( var_0 ) )
    {
        var_2 = self gettagorigin( var_0 );
        var_3 = self gettagangles( var_0 );
    }
    else if ( isdefined( level._ID53525[var_1] ) )
    {
        if ( isarray( level._ID53525[var_1] ) )
        {
            var_3 = level._ID53525[var_1]["angles"];
            var_2 = level._ID53525[var_1]["origin"];
        }
        else
        {
            var_3 = level._ID53525[var_1].angles;
            var_2 = level._ID53525[var_1].origin;
        }
    }
    else
    {
        var_2 = self.origin;
        var_3 = self.angles;

        if ( !isdefined( var_3 ) )
            var_3 = ( 0, 0, 0 );
    }

    var_4 = [];
    var_4["angles"] = var_3;
    var_4["origin"] = var_2;
    return var_4;
}

_ID46255( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !_ID54080( self ) )
        return 0;

    var_1 = self _meth_83c5();

    if ( !isdefined( var_1 ) )
        return 0;

    if ( var_1 == "" )
        return 0;

    if ( !_ID42407::_ID18252( var_1, var_0 ) )
        return 0;

    return 1;
}

_ID54080( var_0 )
{
    return isdefined( var_0.classname );
}

_ID3076( var_0, var_1, var_2, var_3 )
{
    thread _ID23887( var_0 );
    _ID3078( var_0, var_1, var_2, var_3, ::_ID29045, ::_ID29046 );
}

_ID23887( var_0 )
{
    var_1 = 0.3;
    waitframe;

    for (;;)
    {
        var_0 = _ID42407::_ID29506( var_0 );
        var_2 = [];
        var_3 = 0;

        foreach ( var_8, var_5 in var_0 )
        {
            var_6 = var_5.goalpos;

            if ( isdefined( var_5._ID29041 ) )
                var_6 = var_5._ID29041;

            var_7 = distance( var_5.origin, var_6 );
            var_2[var_5._ID39468] = var_7;

            if ( var_7 <= 4 )
            {
                var_0[var_8] = undefined;
                continue;
            }

            var_3 += var_7;
        }

        if ( var_0.size <= 1 )
            break;

        var_3 /= var_0.size;

        foreach ( var_5 in var_0 )
        {
            var_10 = var_2[var_5._ID39468] - var_3;
            var_11 = var_10 * 0.003;

            if ( var_11 > var_1 )
                var_11 = var_1;
            else if ( var_11 < var_1 * -1 )
                var_11 = var_1 * -1;

            var_5._ID24424 = 1 + var_11;
        }

        wait 0.05;
    }

    foreach ( var_5 in var_0 )
    {
        if ( isalive( var_5 ) )
            var_5._ID24424 = 1;
    }
}

_ID3071( var_0, var_1 )
{
    if ( isarray( var_0 ) )
    {
        foreach ( var_3 in var_0 )
            thread _ID3071( var_3, var_1 );

        return;
    }

    var_3 = var_0;
    var_3 endon( "new_anim_reach" );
    wait(var_1);
    var_3 notify( "goal" );
}

_ID3061( var_0, var_1, var_2, var_3, var_4 )
{
    return _ID3078( var_0, var_1, var_2, var_3, ::_ID29045, ::_ID29046, undefined, var_4 );
}

_ID3078( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _ID42407::_ID50092();
    var_9 = _ID15565( var_2, var_1 );
    var_10 = var_9["origin"];
    var_11 = var_9["angles"];

    if ( isdefined( var_6 ) )
    {
        self.type = var_6;
        self._ID3370 = "stand";
    }

    var_12 = spawnstruct();
    var_13 = 0;
    var_14 = 0;

    foreach ( var_16 in var_0 )
    {
        if ( isdefined( var_6 ) )
            var_16.scriptedarrivalent = self;

        if ( isdefined( var_3 ) )
            var_17 = var_3;
        else
            var_17 = var_16._ID3189;

        if ( isdefined( level._ID30895[var_17][var_1] ) )
        {
            if ( isarray( level._ID30895[var_17][var_1] ) )
                var_18 = getstartorigin( var_10, var_11, level._ID30895[var_17][var_1][0] );
            else
                var_18 = getstartorigin( var_10, var_11, level._ID30895[var_17][var_1] );
        }
        else
            var_18 = var_10;

        var_14++;
        var_16 thread _ID4976( var_12, var_18, var_4, var_5, var_1, var_7, var_8 );
    }

    var_20 = 1;
    var_12 thread _ID24057( thisthread, var_0, self, var_6, var_8 );

    while ( var_14 )
    {
        var_12 waittill( "reach_notify",  var_16, var_21, var_22  );

        if ( isdefined( var_16 ) )
            var_16._ID3075 = var_21;

        if ( !var_21 )
            var_20 = 0;

        var_14--;
    }

    _ID3069( var_0, self, var_6 );
    var_12 notify( "end_reach_thread_monitor" );
    return var_20;
}

_ID3069( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0 )
    {
        if ( isalive( var_4 ) && var_4._ID3075 )
        {
            var_4.goalradius = var_4._ID25551;
            var_4.scriptedarrivalent = undefined;
            var_4.stopanimdistsq = 0;
        }

        if ( isdefined( var_4 ) )
            var_4._ID3075 = undefined;
    }

    if ( isdefined( var_2 ) )
        var_1.type = undefined;
}

_ID24057( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "end_reach_thread_monitor" );

    while ( isdefined( var_0 ) )
        waittillframeend;

    foreach ( var_6 in var_1 )
    {
        if ( isdefined( var_6 ) )
        {
            var_6._ID3075 = 1;
            var_6._ID29039 = 1;
            var_6 notify( "goal",  var_4  );

            if ( isdefined( var_6.name ) )
                jump loc_2B9C

            continue;
        }
    }

    _ID3069( var_1, var_2, var_3 );
}

_ID3070( var_0 )
{
    if ( !isalive( var_0 ) )
        return;

    if ( isdefined( var_0._ID25551 ) )
        var_0.goalradius = var_0._ID25551;

    var_0.scriptedarrivalent = undefined;
    var_0.stopanimdistsq = 0;
}

_ID3141( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];

    foreach ( var_7 in var_0 )
    {
        var_8 = getstartorigin( var_4, var_5, level._ID30895[var_7._ID3189][var_1] );
        var_9 = getstartangles( var_4, var_5, level._ID30895[var_7._ID3189][var_1] );

        if ( isai( var_7 ) )
        {
            var_7 teleport( var_8 );
            continue;
        }

        var_7.origin = var_8;
        var_7.angles = var_9;
    }
}

_ID3047( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15565( var_2, var_1 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];

    foreach ( var_10 in var_0 )
    {
        var_11 = getstartorigin( var_7, var_8, level._ID30895[var_10._ID3189][var_1] );
        var_12 = getstartangles( var_7, var_8, level._ID30895[var_10._ID3189][var_1] );

        if ( isai( var_10 ) )
            continue;

        var_10 moveto( var_11, var_3, var_4, var_5 );
        var_10 rotateto( var_12, var_3, var_4, var_5 );
    }
}

_ID3030( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = getstartorigin( var_4, var_5, level._ID30895["generic"][var_1] );
    var_7 = getstartangles( var_4, var_5, level._ID30895["generic"][var_1] );

    if ( isai( var_0 ) )
        var_0 teleport( var_6 );
    else
    {
        var_0.origin = var_6;
        var_0.angles = var_7;
    }
}

_ID3126( var_0, var_1, var_2 )
{
    return _ID3127( var_0, "generic", var_1, var_2 );
}

_ID3127( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15565( var_3, var_2 );
    var_5 = var_4["origin"];
    var_6 = var_4["angles"];
    var_7 = getstartorigin( var_5, var_6, level._ID30895[var_1][var_2] );
    var_8 = getstartorigin( var_5, var_6, level._ID30895[var_1][var_2] );
    var_9 = spawn( "script_model", var_7 );
    var_9 setmodel( var_0 );
    var_9.angles = var_8;
    return var_9;
}

_ID3128( var_0, var_1 )
{
    self attach( var_0, var_1 );
}

_ID3039( var_0, var_1 )
{
    var_2 = self gettagorigin( var_1 );
    var_3 = spawn( "script_model", var_2 );
    var_3 setmodel( var_0 );
    var_3 linkto( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    return var_3;
}

_ID3129( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    var_6 = spawnstruct();

    foreach ( var_8 in var_0 )
    {
        var_9 = getstartorigin( var_4, var_5, level._ID30895[var_8._ID3189][var_1] );
        var_8.origin = var_9;
    }
}

_ID29040( var_0, var_1, var_2 )
{
    _ID42237::_ID41098( "death", "goal" );
    var_3 = isalive( self ) && distancesquared( self.origin, var_1 ) <= 2500;
    var_0 notify( "reach_notify",  self, var_3, var_2  );
}

_ID4976( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );
    self endon( "new_anim_reach" );
    var_1 = [[ var_2 ]]( var_1 );
    thread _ID29040( var_0, var_1, var_6 );
    _ID42407::_ID32336( var_1 );
    self._ID29041 = var_1;
    self.goalradius = 0;

    if ( isdefined( self._ID7._ID50527 ) )
        self.goalradius = self._ID7._ID50527;

    self waittill( "goal" );

    if ( isdefined( self._ID29039 ) )
        self._ID29039 = undefined;

    self notify( "anim_reach_complete" );
    [[ var_3 ]]();
    self notify( "new_anim_reach" );
}

_ID29045( var_0 )
{
    if ( isdefined( self._ID9501 ) )
    {

    }

    self._ID25551 = self.goalradius;
    self._ID25568 = self.pathenemyfightdist;
    self._ID25569 = self.pathenemylookahead;
    self.pathenemyfightdist = 128;
    self.pathenemylookahead = 128;

    if ( !isdefined( self._ID26574 ) )
        _ID42407::_ID10871();

    _ID2995( 1 );
    self._ID14383 = self.fixednode;
    self.fixednode = 0;

    if ( !isdefined( self.scriptedarrivalent ) )
    {
        self._ID25504 = self._ID10998;
        self._ID10998 = 1;
    }

    self._ID29041 = undefined;
    self._ID9501 = 1;
    return var_0;
}

_ID29046()
{
    _ID2995( 0 );
    self.fixednode = self._ID14383;
    self._ID14383 = undefined;
    self.pathenemyfightdist = self._ID25568;
    self.pathenemylookahead = self._ID25569;
    self._ID10998 = self._ID25504;
    self._ID9501 = undefined;
}

_ID2995( var_0 )
{
    if ( isdefined( self._ID11568 ) )
        return;

    self pushplayer( var_0 );
    return;
}

_ID29042( var_0 )
{
    var_0 = _ID29045( var_0 );
    self._ID10998 = 0;
    return var_0;
}

_ID29043( var_0 )
{
    var_1 = self getdroptofloorposition( var_0 );
    var_0 = var_1;
    var_0 = _ID29045( var_0 );
    self._ID10998 = 1;
    return var_0;
}

_ID29044( var_0 )
{
    var_1 = self getdroptofloorposition( var_0 );
    var_0 = var_1;
    var_0 = _ID29045( var_0 );
    self._ID10998 = 0;
    return var_0;
}

_ID32556()
{
    self useanimtree( level._ID30900[self._ID3189] );
}

_ID3111( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );
    var_7[0] = var_0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    _ID3099( var_7, var_1, var_2, var_3, var_4, undefined, var_5, var_6 );
}

_ID3116( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _ID3099( var_3, var_1, var_2, 0.25 );
}

_ID3110( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    _ID3099( var_4, var_1, var_2, 0.25 );
}

_ID3066( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5[0] = var_0;
    _ID3065( var_5, var_1, var_2, var_3, var_4 );
}

_ID3074( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    return _ID3061( var_4, var_1, var_2, undefined, var_3 );
}

_ID3064( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4[0] = var_0;
    _ID3062( var_4, var_1, var_2, var_3 );
}

_ID3063( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );
    var_5[0] = var_0;
    var_6 = _ID15565( var_2, var_1 );
    var_7 = var_6["origin"];
    var_8 = var_6["angles"];
    var_9 = var_0._ID3189;

    if ( isdefined( level._ID30895[var_9][var_1] ) )
    {
        if ( isarray( level._ID30895[var_9][var_1] ) )
            var_10 = level._ID30895[var_9][var_1][0];
        else
            var_10 = level._ID30895[var_9][var_1];

        var_7 = getstartorigin( var_7, var_8, var_10 );
    }

    var_11 = spawn( "script_origin", var_7 );
    var_11.angles = var_8;

    if ( isdefined( var_3 ) )
        var_11.type = var_3;
    else
        var_11.type = self.type;

    if ( isdefined( var_4 ) )
        var_11._ID3370 = var_4;
    else
        var_11._ID3370 = self gethighestnodestance();

    var_0.scriptedarrivalent = var_11;
    _ID3062( var_5, var_1, var_2 );
    var_0.scriptedarrivalent = undefined;
    var_11 delete();

    while ( var_0._ID7._ID24414 != "stop" )
        wait 0.05;
}

_ID47538( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID15565( undefined, var_1 );
    var_6 = var_5["origin"];
    var_7 = var_5["angles"];

    if ( !isdefined( var_4 ) )
        var_4 = var_0._ID3189;

    if ( isdefined( level._ID30895[var_4][var_1] ) )
    {
        if ( isarray( level._ID30895[var_4][var_1] ) )
            var_8 = level._ID30895[var_4][var_1][0];
        else
            var_8 = level._ID30895[var_4][var_1];

        var_6 = getstartorigin( var_6, var_7, var_8 );
        var_7 = getstartangles( var_6, var_7, var_8 );
    }

    if ( !isdefined( var_2 ) )
        var_2 = "exposed";

    var_9 = !isdefined( var_0._ID31209 ) && isdefined( var_0._ID25508 );
    var_10 = var_7[1];
    var_11 = spawnstruct();
    var_0 _ID42407::_ID2286();
    var_0.scriptedarrivalent = undefined;
    var_0 _ID29045( var_6 );
    var_0 _ID48244( var_11, var_10, var_6, var_10, var_2 );
    var_12 = var_10 - var_0 animscripts\utility::_ID22635( "cover_trans_angles", var_2, var_11._ID54606 );

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_0 _ID48735( var_2, var_11, var_12, var_3 );
    var_0 _ID29046();
    var_0 _ID42407::_ID2358( undefined, var_9 );
}

_ID48735( var_0, var_1, var_2, var_3 )
{
    var_4 = animscripts\utility::_ID22630( "cover_trans", var_0 )[var_1._ID54606];
    var_5 = getanimlength( var_4 );
    self._ID3262 = var_1._ID54606;
    self._ID3263 = var_0;
    self startcoverarrival( var_1._ID35897, var_2, 0 );
    wait(var_5 - var_3);
}

_ID48244( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( var_3 == "exposed" )
        var_5 = anim._ID3277["soldier"]["longestExposedApproachDist"];
    else
        var_5 = anim._ID3277["soldier"]["CoverTransLongestDist"][var_3];

    _ID42407::_ID32336( var_2 );
    self._ID29041 = var_2;
    self.goalradius = 0;
    var_6 = var_5 * var_5;

    while ( distancesquared( self.origin, var_2 ) > var_6 )
        wait 0.05;

    var_0._ID54606 = _ID43521( self, var_2, var_1, var_3 );
    var_0._ID35897 = animscripts\cover_arrival::_ID16137( var_2, var_1, var_3, var_0._ID54606 );
    var_6 = lengthsquared( animscripts\utility::_ID22635( "cover_trans_dist", var_3, var_0._ID54606 ) );

    while ( distancesquared( self.origin, var_2 ) > var_6 )
        wait 0.05;
}

_ID43521( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = "exposed";

    var_4 = vectornormalize( var_1 - var_0.origin );
    var_5 = spawnstruct();
    animscripts\exit_node::_ID6632( var_5, var_3, 1, var_2, var_4, 9, -1 );
    var_6 = 1;

    for ( var_7 = 2; var_7 <= 9; var_7++ )
    {
        if ( var_5._ID38684[var_7] > var_5._ID38684[var_6] )
            var_6 = var_7;
    }

    return var_5._ID38671[var_6];
}

_ID3062( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    _ID3078( var_0, var_1, var_2, undefined, ::_ID29042, ::_ID29046, var_3 );
}

_ID3044( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( isdefined( var_2 ) && isdefined( self.model ) && _ID42407::_ID18252( self.model, var_2 ) )
    {
        var_6 = var_2;
        var_2 = var_3;
        var_3 = var_6;
    }

    var_7 = [];
    var_7["guy"] = var_0;
    var_7["entity"] = self;
    var_7["tag"] = var_3;
    var_7["origin_offset"] = var_5;
    var_8[0] = var_7;
    _ID3042( var_8, var_1, var_2, var_4 );
}

_ID3142( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3[0] = var_0;
    _ID3141( var_3, var_1, var_2 );
}

_ID1845( var_0, var_1 )
{
    if ( !isdefined( level._ID8406 ) )
        level._ID8406[var_0][0] = var_1;
    else if ( !isdefined( level._ID8406[var_0] ) )
        level._ID8406[var_0][0] = var_1;
    else
    {
        for ( var_2 = 0; var_2 < level._ID8406[var_0].size; var_2++ )
        {
            if ( level._ID8406[var_0][var_2] == var_1 )
                return;
        }

        level._ID8406[var_0][level._ID8406[var_0].size] = var_1;
    }
}

_ID3108( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( isdefined( var_0._ID21839 ) )
        _ID42407::_ID40847( var_0._ID21839, 0.5 );

    _ID42407::_ID15093( ::_ID3111, var_0, var_1, var_2, var_3 );

    if ( isalive( var_0 ) )
        var_0._ID21839 = gettime();
}

_ID3026( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 endon( "death" );

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( isdefined( var_0._ID21839 ) )
        _ID42407::_ID40847( var_0._ID21839, 0.5 );

    if ( isdefined( var_4 ) )
        _ID42407::_ID15099( var_4, ::_ID3111, var_0, var_1, var_2, var_3, "generic" );
    else
        _ID42407::_ID15093( ::_ID3111, var_0, var_1, var_2, var_3, "generic" );

    if ( isalive( var_0 ) )
        var_0._ID21839 = gettime();
}

_ID3005( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 pushplayer( 0 );
}

_ID3059( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 pushplayer( 1 );
}

_ID29631( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_5 = level._ID30905[var_0][var_2][var_1];
    var_2 = _ID15753( var_2 );
    var_6 = -1;

    if ( !isdefined( var_5 ) || !isarray( var_5 ) || var_5.size < 1 )
        return;

    for ( var_7 = 0; var_7 < var_5.size; var_7++ )
    {
        if ( isdefined( var_5[var_7][var_3] ) )
        {
            if ( !isdefined( var_4 ) || var_5[var_7][var_3] == var_4 )
            {
                var_6 = var_7;
                break;
            }
        }
    }

    if ( var_6 < 0 )
        return;

    if ( var_5.size == 1 )
        var_5 = [];
    else
        var_5 = _ID42407::_ID3325( var_5, var_6 );

    level._ID30905[var_0][var_2][var_1] = var_5;
}

_ID2062( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_5 = _ID1920( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_5] = [];
    level._ID30905[var_0][var_2][var_1][var_5]["dialog"] = var_3;
    level._ID30905[var_0][var_2][var_1][var_5]["dialog_do_notify_on_end"] = var_4;
}

_ID50350( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_4 = _ID1920( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_4] = [];
    level._ID30905[var_0][var_2][var_1][var_4]["dialog_radio"] = var_3;
}

_ID1920( var_0, var_1, var_2 )
{
    var_1 = tolower( var_1 );
    _ID1921( var_0, var_1, var_2 );
    return level._ID30905[var_0][var_2][var_1].size;
}

_ID1921( var_0, var_1, var_2 )
{
    var_1 = tolower( var_1 );

    if ( !isdefined( level._ID30905 ) )
        level._ID30905 = [];

    if ( !isdefined( level._ID30905[var_0] ) )
        level._ID30905[var_0] = [];

    if ( !isdefined( level._ID30905[var_0][var_2] ) )
        level._ID30905[var_0][var_2] = [];

    if ( !isdefined( level._ID30905[var_0][var_2][var_1] ) )
        level._ID30905[var_0][var_2][var_1] = [];
}

_ID2069( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_6 = _ID1920( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_6] = [];
    level._ID30905[var_0][var_2][var_1][var_6]["sound"] = var_3;

    if ( isdefined( var_4 ) )
        level._ID30905[var_0][var_2][var_1][var_6]["sound_stays_death"] = 1;

    if ( isdefined( var_5 ) )
        level._ID30905[var_0][var_2][var_1][var_6]["sound_on_tag"] = var_5;
}

_ID24948( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID15664();
    _ID2069( var_4._ID3189, var_0, var_4._ID3091, var_1, var_2, var_3 );
}

_ID2067( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_4 = _ID1920( var_0, var_1, var_2 );
    level._ID30905[var_0][var_2][var_1][var_4] = [];
    level._ID30905[var_0][var_2][var_1][var_4]["playersound"] = var_3;
}

_ID15753( var_0 )
{
    if ( !isdefined( var_0 ) )
        return "any";

    return var_0;
}

_ID2075( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID30899[var_0] ) )
        level._ID30899[var_0] = [];

    level._ID30899[var_0][var_1] = var_2;
}

_ID2056( var_0, var_1, var_2, var_3 )
{
    var_2 = tolower( var_2 );
    var_1 = _ID15753( var_1 );
    var_4 = _ID1920( var_0, var_2, var_1 );
    var_5 = [];
    var_5["sound"] = var_3;
    var_5["created_by_animSound"] = 1;
    level._ID30905[var_0][var_1][var_2][var_4] = var_5;
}

_ID2057( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_4 = _ID15753( var_4 );
    var_5 = _ID1920( var_0, var_1, var_4 );
    var_6 = [];
    var_6["attach model"] = var_2;
    var_6["selftag"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}

_ID2059( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_4 = _ID15753( var_4 );
    var_5 = _ID1920( var_0, var_1, var_4 );
    var_6 = [];
    var_6["detach model"] = var_2;
    var_6["selftag"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}

_ID2060( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_4 = _ID1920( var_0, var_1, var_2 );
    var_5 = [];
    var_5["detach gun"] = 1;
    var_5["tag"] = "tag_weapon_right";

    if ( isdefined( var_3 ) )
        var_5["suspend"] = var_3;

    level._ID30905[var_0][var_2][var_1][var_4] = var_5;
}

_ID2058( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_5 = _ID1920( var_0, var_1, var_3 );
    var_6 = [];
    var_6["function"] = var_2;
    var_6["function_args"] = var_4;
    level._ID30905[var_0][var_3][var_1][var_5] = var_6;
}

_ID2070( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_6 = _ID1920( var_0, var_1, var_2 );
    var_7 = [];
    var_7["effect"] = var_3;
    var_7["selftag"] = var_4;

    if ( isdefined( var_5 ) )
        var_7["moreThanThreeHack"] = var_5;

    level._ID30905[var_0][var_2][var_1][var_6] = var_7;
}

_ID2071( var_0, var_1, var_2, var_3, var_4 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_5 = _ID1920( var_0, var_1, var_2 );
    var_6 = [];
    var_6["stop_effect"] = var_3;
    var_6["selftag"] = var_4;
    level._ID30905[var_0][var_2][var_1][var_5] = var_6;
}

_ID24950( var_0, var_1, var_2 )
{
    var_3 = _ID15664();
    _ID42237::_ID1891( var_1, var_1 );
    _ID2072( var_3._ID3189, var_0, var_3._ID3202, var_1, var_2 );
}

_ID24949( var_0, var_1, var_2 )
{
    var_3 = _ID15664();
    _ID42237::_ID1891( var_1, var_1 );
    _ID2071( var_3._ID3189, var_0, var_3._ID3202, var_1, var_2 );
}

_ID2072( var_0, var_1, var_2, var_3, var_4 )
{
    _ID42237::_ID16299( var_3 );
    var_1 = tolower( var_1 );
    var_2 = _ID15753( var_2 );
    var_5 = _ID1920( var_0, var_1, var_2 );
    var_6 = [];
    var_6["swap_part_to_efx"] = var_3;
    var_6["selftag"] = var_4;
    level._ID30905[var_0][var_2][var_1][var_5] = var_6;
}

_ID24951( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15664();

    if ( var_0 != "start" && !animhasnotetrack( var_6 _ID42407::_ID16120( var_6._ID3091 ), var_0 ) )
        return;

    _ID42237::_ID1891( var_3, var_3 );

    if ( isdefined( var_4 ) )
        _ID42237::_ID1891( var_4, var_4 );

    _ID2073( var_6._ID3189, var_0, var_1, var_6._ID3091, var_2, var_3, var_4, var_5 );
}

_ID24947( var_0, var_1, var_2 )
{
    var_3 = _ID15664();

    if ( var_0 != "start" && !animhasnotetrack( var_3 _ID42407::_ID16120( var_3._ID3091 ), var_0 ) )
        return;

    _ID42237::_ID1891( var_2, var_2 );
    _ID2070( var_3._ID3189, var_0, var_3._ID3091, var_2, var_1, 1 );
}

_ID15664()
{
    var_0 = level._ID9434;
    return var_0;
}

_ID2073( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID42237::_ID16299( var_5 );
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_8 = _ID1920( var_0, var_1, var_3 );
    var_9 = [];
    var_9["trace_part_for_efx"] = var_5;
    var_9["trace_part_for_efx_water"] = var_6;
    var_9["trace_part_for_efx_cancel"] = var_2;
    var_9["trace_part_for_efx_delete_depth"] = var_7;
    var_9["selftag"] = var_4;
    level._ID30905[var_0][var_3][var_1][var_8] = var_9;

    if ( isdefined( var_2 ) )
    {
        var_9 = [];
        var_9["trace_part_for_efx_canceling"] = var_2;
        var_9["selftag"] = var_4;
        var_8 = _ID1920( var_0, var_2, var_3 );
        level._ID30905[var_0][var_3][var_2][var_8] = var_9;
    }
}

_ID2063( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_4 = _ID1920( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;

    if ( !isdefined( level._ID14385 ) || !isdefined( level._ID14385[var_2] ) )
        _ID42237::_ID14400( var_2 );
}

_ID2064( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_4 = _ID1920( var_0, var_1, var_3 );
    var_5 = [];
    var_5["flag_clear"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;

    if ( !isdefined( level._ID14385 ) || !isdefined( level._ID14385[var_2] ) )
        _ID42237::_ID14400( var_2 );
}

_ID2066( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_4 = _ID1920( var_0, var_1, var_3 );
    var_5 = [];
    var_5["notify"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;
}

_ID2065( var_0, var_1, var_2, var_3 )
{
    var_1 = tolower( var_1 );
    var_3 = _ID15753( var_3 );
    var_4 = _ID1920( var_0, var_1, var_3 );
    var_5 = [];
    var_5["lui_notify"] = var_2;
    level._ID30905[var_0][var_3][var_1][var_4] = var_5;
}

_ID2068( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 = tolower( var_1 );
    var_4 = _ID15753( var_4 );
    var_5 = _ID1920( var_0, var_1, var_4 );
    var_6 = [];
    var_6["omnvar"] = var_2;
    var_6["value"] = var_3;
    level._ID30905[var_0][var_4][var_1][var_5] = var_6;
}
#using_animtree("generic_human");

_ID11015( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 )
    {
        self._ID4956 = 1;
        self clearanim( %head, 0.2 );
        self._ID13770 = undefined;
    }
    else
        self._ID4956 = undefined;
}

_ID3013( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    self endon( var_1 );
    var_3 = 0.05;
    var_0 notify( "newLookTarget" );
    waitframe;
    _ID11015();
    var_0 setanim( %scripted_talking, level._ID43470, 0.2 );
    var_4 = "face_done_" + var_1;
    var_0 setflaggedanimknobrestart( var_4, var_2, 1, 0, 1 );
    thread _ID14745( var_0, var_1, var_2 );
    thread _ID7918( var_0, var_4, var_1 );
}

_ID14745( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_0 endon( "stop_loop" );
    self endon( var_1 );

    for (;;)
    {
        _ID11015();
        var_0 setanim( %scripted_talking, level._ID43470, 0.4 );
        var_0 setflaggedanimknoblimited( "face_done_" + var_1, var_2, 1, 0, 1 );
        wait 0.05;
    }
}

_ID3015( var_0, var_1 )
{
    self endon( "death" );

    if ( isai( self ) && !isalive( self ) )
        return;

    var_2 = 0.05;
    self notify( "newLookTarget" );
    self endon( "newLookTarget" );
    waitframe;

    if ( !isdefined( var_1 ) && isdefined( self._ID606 ) )
        var_1 = self._ID606;

    if ( self _meth_84fd() )
        var_3 = %generic_talker_blend;
    else
    {
        var_4 = self _meth_844f( "jnt_lips_L" );

        if ( var_4 != -1 )
            var_3 = %generic_talker_bs;
        else if ( self isbadguy() )
            var_3 = %generic_talker_axis;
        else
            var_3 = %generic_talker_allies;
    }

    self setanimknoblimitedrestart( var_3, 1, 0, 1 );
    self setanim( %scripted_talking, level._ID43470, 0.4 );
    _ID11015();
    _ID32465( var_0, var_3 );
    var_2 = 0.3;
    self clearanim( %scripted_talking, level._ID54349 );
    _ID11015( 0 );
}

_ID32465( var_0, var_1 )
{
    self endon( var_0 );

    for (;;)
    {
        wait 0.2;
        self setanimknoblimited( var_1, 1, 0, 1 );
        self setanim( %scripted_talking, level._ID43470, 0.4 );
        _ID11015();
    }
}

_ID37173( var_0 )
{
    self endon( "death" );
    var_1 = %generic_talker_allies;

    if ( self isbadguy() )
        var_1 = %generic_talker_axis;

    var_2 = self _meth_844f( "jnt_lips_L" );

    if ( var_2 != -1 )
        var_1 = %generic_talker_bs;

    self setanimknoblimitedrestart( var_1, 1, 0, 1 );
    self setanim( %scripted_talking, level._ID43470, 0.4 );
    _ID11015();
    wait(var_0);
    var_3 = 0.3;
    self clearanim( %scripted_talking, level._ID54349 );
    _ID11015( 0 );
}

_ID16758( var_0, var_1 )
{
    var_2 = var_0[1] - var_1[1];
    var_2 = angleclamp180( var_2 );
    return var_2;
}

_ID22628( var_0, var_1 )
{
    self notify( "lookline" );
    self endon( "lookline" );
    self endon( var_1 );
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_ID3073( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3.count = var_0.size;

    foreach ( var_5 in var_0 )
        thread _ID29049( var_5, var_1, var_2, var_3 );

    while ( var_3.count )
        var_3 waittill( "reached_goal" );

    self notify( "stopReachIdle" );
}

_ID29049( var_0, var_1, var_2, var_3 )
{
    _ID3074( var_0, var_1 );
    var_3.count--;
    var_3 notify( "reached_goal" );

    if ( var_3.count > 0 )
        _ID3044( var_0, var_2, "stopReachIdle" );
}

_ID10210( var_0, var_1, var_2, var_3 )
{
    if ( animhasnotetrack( var_3, "dialog" ) )
        self waittillmatch( "face_done_" + var_0,  "dialog"  );

    if ( var_1 )
        animscripts\face::_ID30763( undefined, var_2, 1.0 );
    else
        animscripts\face::_ID30763( undefined, var_2, 1.0, "single dialogue" );
}

_ID7918( var_0, var_1, var_2 )
{
    var_0 endon( "death" );
    var_0 waittillmatch( var_1,  "end"  );
    var_3 = 0.3;
    var_0 clearanim( %scripted_talking, level._ID54349 );
    _ID11015( 0 );
}

_ID3132( var_0, var_1, var_2 )
{
    var_3 = _ID15565( var_2, var_1 );
    var_4 = var_3["origin"];
    var_5 = var_3["angles"];
    _ID42237::_ID3350( var_0, ::_ID32454, var_1, var_4, var_5 );
}

_ID3133( var_0, var_1, var_2 )
{
    var_3[0] = var_0;
    _ID3132( var_3, var_1, var_2 );
}

_ID32454( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = undefined;

    if ( isdefined( var_3 ) )
        var_5 = var_3;
    else
        var_5 = self._ID3189;

    if ( isdefined( var_4 ) && var_4 )
        var_6 = level._ID30895[var_5][var_0][0];
    else if ( isarray( level._ID30895[var_5][var_0] ) )
        var_6 = _ID42237::_ID28945( level._ID30895[var_5][var_0] );
    else
        var_6 = level._ID30895[var_5][var_0];

    if ( isai( self ) )
    {
        var_7 = getstartorigin( var_1, var_2, var_6 );
        var_8 = getstartangles( var_1, var_2, var_6 );

        if ( isdefined( self._ID3131 ) )
            var_7 = _ID42407::_ID17434( var_7 );

        self forceteleport( var_7, var_8 );
    }
    else if ( self.code_classname == "script_vehicle" )
        self vehicle_teleport( getstartorigin( var_1, var_2, var_6 ), getstartangles( var_1, var_2, var_6 ) );
    else
    {
        self.origin = getstartorigin( var_1, var_2, var_6 );
        self.angles = getstartangles( var_1, var_2, var_6 );
    }
}

_ID2991( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = self;
    return var_2;
}

_ID2990( var_0, var_1 )
{
    var_2 = [];
    var_2["guy"] = self;
    var_2["entity"] = var_0;
    var_2["tag"] = var_1;
    return var_2;
}

_ID1959()
{
    if ( !isdefined( self._ID3213 ) )
        self._ID3213 = [];

    var_0 = 0;

    for ( var_1 = 0; var_1 < level._ID3213.size; var_1++ )
    {
        if ( self == level._ID3213[var_1] )
        {
            var_0 = 1;
            break;
        }
    }

    if ( !var_0 )
        level._ID3213[level._ID3213.size] = self;
}

_ID3094( var_0, var_1, var_2 )
{
    var_0 thread _ID3093( var_1, var_2 );
}

_ID3092( var_0, var_1, var_2 )
{
    _ID42237::_ID3350( var_0, ::_ID3093, var_1, var_2 );
}

_ID3093( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( isdefined( var_2 ) )
        var_3 = var_2;
    else
        var_3 = self._ID3189;

    var_4 = _ID42407::_ID16121( var_0, var_3 );

    if ( isarray( var_4 ) )
        var_4 = var_4[0];

    self setflaggedanim( "single anim", var_4, 1, 0, var_1 );
}

_ID3096( var_0, var_1, var_2 )
{
    _ID42237::_ID3350( var_0, ::_ID3090, var_1, var_2 );
}

_ID3090( var_0, var_1 )
{
    var_2 = _ID42407::_ID16120( var_0 );
    self setanimtime( var_2, var_1 );
}

_ID21772( var_0, var_1 )
{
    if ( !isdefined( self._ID21771 ) )
    {
        self._ID21771 = gettime();
        return;
    }

    var_2 = gettime();

    if ( self._ID21771 == var_2 )
    {
        self endon( "death" );
        wait 0.05;
    }

    self._ID21771 = var_2;
}

_ID32256( var_0, var_1 )
{
    var_0._ID9575 = animscripts\cover_arrival::_ID9576;
    var_0._ID36146 = level._ID30895[var_0._ID3189][var_1];
}

_ID9116( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_3 ) )
        var_3 = "generic";
    else
        level._ID30900[var_3] = var_0;

    var_5 = spawnstruct();
    var_5._ID3217 = var_0;
    var_5.model = var_4;

    if ( isdefined( var_4 ) )
        level._ID30904[var_3] = var_4;

    if ( isdefined( var_2 ) )
        level._ID30895[var_3][var_1] = var_2;

    var_5._ID3189 = var_3;
    var_5._ID3091 = var_1;
    level._ID9434 = var_5;
}

_ID44809( var_0 )
{
    return animhasnotetrack( var_0, "animrate_forcedefault" );
}

_ID46811( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0 ) )
        self endon( var_0 );

    var_4 = 0.05;
    var_5 = floor( var_3 / var_4 );

    for ( var_6 = 0; var_6 <= var_5; var_6++ )
    {
        var_7 = vectorlerp( var_1.origin, var_2.origin, var_6 / var_5 );
        var_8 = _ID42407::_ID13198( var_1.angles, var_2.angles, var_6 / var_5 );
        self _meth_8598( var_7, var_8 );
        wait(var_4);
    }
}

_ID45303( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( var_0 );
    var_5 = 0.05;
    var_6 = floor( var_4 / var_5 );

    for ( var_7 = 0; var_7 <= var_6; var_7++ )
    {
        var_8 = var_2 gettagorigin( var_3 );
        var_9 = var_2 gettagangles( var_3 );
        var_10 = vectorlerp( var_1.origin, var_8, var_7 / var_6 );
        var_11 = _ID42407::_ID13198( var_1.angles, var_9, var_7 / var_6 );
        self _meth_8598( var_10, var_11 );
        wait(var_5);
    }

    for (;;)
    {
        var_8 = var_2 gettagorigin( var_3 );
        var_9 = var_2 gettagangles( var_3 );
        self _meth_8598( var_8, var_9 );
        wait(var_5);
    }
}

_ID46741( var_0, var_1, var_2, var_3 )
{
    self endon( var_0 );
    var_4 = _func_315( var_3.origin, var_3.angles, var_1 );
    var_5 = playerphysicstrace( var_4 + ( 0, 0, 40 ), var_4 + ( 0, 0, -40 ) );
    var_6 = var_4[2] - var_5[2];
    var_7 = spawnstruct();
    var_7.angles = var_3.angles;
    var_7.origin = var_3.origin - ( 0, 0, var_6 );
    wait(var_2);
    var_8 = getanimlength( var_1 );
    _ID46811( var_0, var_3, var_7, var_8 - var_2 );
}

_ID45613( var_0 )
{
    self endon( "death" );
    var_1 = self getcurrentweapon();
    self disableweaponpickup();

    if ( !self _meth_84eb() )
    {
        self _meth_80fa( var_1, "drop" );
        wait 0.1;
        wait(self _meth_859b() / 1000 - 0.1);
    }
    else
        waittillframeend;

    self notify( "viewmodelAnimStart" );
    self _meth_84c4( var_0 );
    self _meth_84c6( 1 );
    wait 0.1;
    self _meth_84c6( 0 );
    wait(self _meth_859b() / 1000 - 0.1);
    self switchtoweaponimmediate( var_1 );
    wait 0.1;
    self enableweaponpickup();
    wait(self _meth_859b() / 1000 - 0.05);
    self notify( "viewmodelAnimRaiseEnd" );
}

_ID53505( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0.05;
    var_6 = var_0 gettagangles( "tag_player" );
    var_7 = length( self.origin - var_0.origin );
    var_8 = self getplayerangles() - var_6;
    var_8 = ( animscripts\utility::_ID1735( var_8[0] ), animscripts\utility::_ID1735( var_8[1] ), animscripts\utility::_ID1735( var_8[2] ) );
    var_9 = var_4 - var_3;
    var_10 = length( var_8 );
    var_11 = var_9 * clamp( var_7 / var_1, 0, 1 );
    var_12 = var_9 * clamp( var_10 / var_2, 0, 1 );
    var_13 = _ID42237::_ID37527( var_11 > var_12, var_11, var_12 );
    return floor( ( var_13 + var_3 ) / var_5 ) * var_5;
}
