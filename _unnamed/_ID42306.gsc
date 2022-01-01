// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19709()
{
    level._ID18447 = ::_ID18369;
    level._ID7524 = ::_ID7519;
    level._ID7523 = ::_ID7518;
}

_ID7518()
{
    self notify( "mg_off" );
}

_ID7519()
{
    self endon( "death" );
    self endon( "mg_off" );
    var_0 = cos( 55 );

    while ( self._ID486 > 0 )
    {
        var_1 = _ID16258( 16000, var_0, 1, 1 );

        if ( isdefined( var_1 ) )
            thread _ID33779( var_1 );

        wait 2;
    }
}

_ID18369( var_0 )
{
    var_1 = getent( var_0._ID31273, "script_linkname" );
    var_2 = !isdefined( var_1 );

    if ( !isdefined( var_1 ) )
        var_1 = _ID42237::_ID16638( var_0._ID31273, "script_linkname" );

    var_3 = var_0._ID31186;

    if ( var_2 )
        var_1 = var_1 _ID42237::_ID35164();

    switch ( var_3 )
    {
        case "zippy_burst":
            wait 1;
            _ID14269( "hind_zippy", 1, var_1 );
            wait 0.1;
            _ID14269( "hind_zippy", 1, var_1 );
            wait 0.2;
            _ID14269( "hind_zippy", 1, var_1 );
            wait 0.3;
            _ID14269( "hind_zippy", 1, var_1 );
            wait 0.3;
            _ID14269( "hind_zippy", 1, var_1 );
            break;
        case "apache_zippy":
            var_4 = [ 0.1, 0.2, 0.3 ];
            wait 1;
            var_1._ID740 = var_1._ID740 + ( 0, 0, -150 );
            var_1 moveto( var_1._ID740 + ( 0, 0, 150 ), 0.6, 0, 0 );

            foreach ( var_6 in var_4 )
            {
                if ( !isdefined( self ) )
                    continue;

                _ID14269( "apache_zippy", 1, var_1 );
                wait(var_6);
            }

            break;
        case "hind_rpg":
            _ID14269( "hind_rpg", 5, var_1, 0.3 );
            break;
        default:
            if ( self._ID170 == "script_vehicle_littlebird_armed" || self._ID170 == "script_vehicle_littlebird_md500" )
                _ID42508::_ID18368( var_1, 2, 0.25 );
            else
                _ID14269( "hind_zippy", 5, var_1, 0.3 );

            break;
    }

    if ( var_2 )
        var_1 delete();
}

_ID16950()
{
    if ( !isdefined( self._ID1282 ) )
        return;

    var_0 = 0;

    if ( self._ID1282 == "hind" || self._ID1282 == "hind_blackice" || self._ID1282 == "ny_harbor_hind" )
        var_0 = 1;

    if ( self._ID1282 == "cobra" || self._ID1282 == "cobra_player" )
    {
        thread _ID3594( "chopperpilot_hellfire", "cobra_Sidewinder" );

        if ( isdefined( self._ID15076 ) )
            self._ID15076 thread _ID3594( "chopperpilot_hellfire", "cobra_Sidewinder" );

        var_0 = 1;
    }

    if ( !var_0 )
        return;

    level thread _ID14494( self );
    level thread _ID42305::_ID13250( self );

    if ( getdvar( "cobrapilot_wingman_enabled" ) == "1" )
    {
        if ( isdefined( self._ID31528 ) )
        {
            level._ID41794 = self;
            level thread _ID42305::_ID41796( self );
        }
    }
}

_ID14494( var_0 )
{
    var_0 endon( "death" );
    notifyoncommand( "flare_button", "+frag" );
    notifyoncommand( "flare_button", "+usereload" );
    notifyoncommand( "flare_button", "+activate" );

    while ( var_0._ID486 > 0 )
    {
        if ( isdefined( var_0._ID27777 ) )
            var_0._ID26659 waittill( "flare_button" );
        else
        {
            var_0 waittill( "incomming_missile",  var_1  );

            if ( !isdefined( var_1 ) )
                continue;

            if ( randomint( 3 ) == 0 )
                continue;

            wait(randomfloatrange( 0.5, 1.0 ));
        }

        thread _ID14489( var_0 );
        wait 3.0;
    }
}

_ID14490( var_0, var_1, var_2, var_3 )
{
    var_4 = 1;

    for ( var_5 = 0; var_5 < var_1; var_5++ )
    {
        playfx( level._ID14484[var_0._ID1282], var_0 gettagorigin( "tag_flare" ) );

        if ( isdefined( var_0._ID27777 ) )
        {
            level._ID36218["flares_used"]++;
            var_0 notify( "dropping_flares" );

            if ( var_4 )
                var_0 playsound( "cobra_flare_fire" );

            var_4 = !var_4;
        }

        if ( var_5 <= var_2 - 1 )
            thread _ID14493( var_0, var_3 );

        wait 0.1;
    }
}

_ID14489( var_0 )
{
    var_0 endon( "death" );
    var_1 = 5.0;

    if ( isdefined( var_0._ID14483 ) )
        var_1 = var_0._ID14483;

    _ID14490( var_0, 8, 1, var_1 );
}

_ID9168()
{
    if ( isdefined( self._ID23735 ) )
        missile_deleteattractor( self._ID23735 );

    self._ID23735 = missile_createattractorent( self._ID7192, 10000, 10000 );
}

_ID14493( var_0, var_1 )
{
    var_0 notify( "flares_out" );
    var_0 endon( "death" );
    var_0 endon( "flares_out" );

    if ( !isdefined( var_1 ) )
        var_1 = 5.0;

    var_2 = _ID14491( var_0 );
    var_3 = spawn( "script_origin", var_0 gettagorigin( "tag_flare" ) );
    var_3 movegravity( var_2, var_1 );
    var_4 = undefined;

    if ( isdefined( var_0._ID27777 ) )
    {
        if ( isdefined( var_0._ID23735 ) )
            missile_deleteattractor( var_0._ID23735 );

        var_4 = missile_createattractorent( var_3, 10000, 10000 );
    }

    if ( isdefined( var_0._ID19504 ) )
    {
        for ( var_5 = 0; var_5 < var_0._ID19504.size; var_5++ )
            var_0._ID19504[var_5] missile_settargetent( var_3 );
    }

    wait(var_1);

    if ( isdefined( var_0._ID27777 ) )
    {
        if ( isdefined( var_4 ) )
            missile_deleteattractor( var_4 );

        var_0 thread _ID9168();
    }

    if ( !isdefined( var_0._ID31472 ) )
        var_0._ID31472 = 0;

    var_6 = ( 0, 0, var_0._ID31472 );

    if ( !isdefined( var_0._ID19504 ) )
        return;

    for ( var_5 = 0; var_5 < var_0._ID19504.size; var_5++ )
        var_0._ID19504[var_5] missile_settargetent( var_0, var_6 );
}

_ID14491( var_0 )
{
    var_1 = var_0._ID740;
    wait 0.05;
    var_2 = var_0._ID740 - var_1;
    return var_2 * 20;
}

_ID23698( var_0, var_1 )
{
    var_1 endon( "death" );
    var_0 waittill( "death" );

    if ( !isdefined( var_1._ID19504 ) )
        return;

    var_1._ID19504 = _ID42237::_ID3321( var_1._ID19504, var_0 );
}

_ID16258( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 1;

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    var_7 = [];
    var_8 = undefined;
    var_9 = _ID42237::_ID15698( self._ID31474 );
    var_10 = [];

    if ( var_4 )
    {
        for ( var_11 = 0; var_11 < level._ID40317[var_9].size; var_11++ )
            var_10[var_10.size] = level._ID40317[var_9][var_11];
    }

    if ( var_2 )
    {
        var_12 = getaiarray( var_9 );

        for ( var_11 = 0; var_11 < var_12.size; var_11++ )
        {
            if ( isdefined( var_12[var_11]._ID19381 ) )
                continue;

            var_10[var_10.size] = var_12[var_11];
        }

        if ( var_9 == "allies" )
        {
            for ( var_11 = 0; var_11 < level._ID805.size; var_11++ )
                var_10[var_10.size] = level._ID805[var_11];
        }
    }

    if ( isdefined( var_6 ) )
        var_10 = _ID42407::_ID3306( var_10, var_6 );

    if ( var_5 )
        var_10 = _ID42237::_ID3320( var_10 );

    var_13 = anglestoforward( self._ID65 );

    for ( var_11 = 0; var_11 < var_10.size; var_11++ )
    {
        if ( issentient( var_10[var_11] ) && issentient( self ) && self getthreatbiasgroup() != "" )
        {
            var_14 = getthreatbias( var_10[var_11] getthreatbiasgroup(), self getthreatbiasgroup() );

            if ( var_14 <= -1000000 )
                continue;
        }

        if ( isdefined( var_0 ) && var_0 > 0 )
        {
            if ( distance( self._ID740, var_10[var_11]._ID740 ) > var_0 )
                continue;
        }

        if ( isdefined( var_1 ) )
        {
            var_15 = vectornormalize( var_10[var_11]._ID740 - self._ID740 );
            var_16 = vectordot( var_13, var_15 );

            if ( var_16 <= var_1 )
                continue;
        }

        if ( var_3 )
        {
            var_17 = 0;

            if ( isai( var_10[var_11] ) )
                var_18 = 48;
            else
                var_18 = 150;

            var_17 = sighttracepassed( self._ID740, var_10[var_11]._ID740 + ( 0, 0, var_18 ), 0, self );

            if ( !var_17 )
                continue;
        }

        var_7[var_7.size] = var_10[var_11];
    }

    if ( var_7.size == 0 )
    {
        self notify( "gunner_new_target",  var_8  );
        return var_8;
    }

    if ( var_7.size == 1 )
    {
        self notify( "gunner_new_target",  var_7[0]  );
        return var_7[0];
    }

    var_19 = _ID42237::_ID16182( self._ID740, var_7 );
    self notify( "gunner_new_target",  var_19  );
    return var_19;
}

_ID33779( var_0 )
{
    self endon( "death" );
    self endon( "mg_off" );
    var_0 endon( "death" );
    self endon( "gunner_new_target" );

    if ( isdefined( self._ID27777 ) )
        self endon( "gunner_stop_firing" );

    var_1 = ( 0, 0, 0 );

    if ( isdefined( var_0._ID31472 ) )
        var_1 += ( 0, 0, var_0._ID31472 );
    else if ( issentient( var_0 ) )
        var_1 = ( 0, 0, 32 );

    self setturrettargetent( var_0, var_1 );

    while ( self._ID486 > 0 )
    {
        var_2 = randomintrange( 1, 25 );

        if ( getdvar( "cobrapilot_debug" ) == "1" )
            iprintln( "randomShots = " + var_2 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            if ( isdefined( self._ID27777 ) )
            {
                if ( isdefined( level._ID8194 ) && level._ID8194.size > 0 )
                    self setvehweapon( level._ID17531 );
            }

            thread _ID33780( self, "tag_turret", var_0, var_1, ( 1, 1, 0 ), 0.05 );
            self fireweapon( "tag_flash" );

            if ( isdefined( self._ID27777 ) )
                self setvehweapon( level._ID8194[self._ID26659._ID9520]._ID40005["weapon"] );

            wait 0.05;
        }

        wait(randomfloatrange( 0.25, 2.5 ));
    }
}

_ID33780( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( getdvar( "cobrapilot_debug" ) != "1" )
        return;

    if ( !isdefined( var_4 ) )
        var_4 = ( 0, 0, 0 );

    var_2 endon( "death" );
    self endon( "gunner_new_target" );

    if ( !isdefined( var_3 ) )
        var_3 = ( 0, 0, 0 );

    if ( isdefined( var_5 ) )
    {
        var_5 = gettime() + var_5 * 1000;

        while ( gettime() < var_5 )
            wait 0.05;
    }
    else
    {
        for (;;)
            wait 0.05;
    }
}

_ID3594( var_0, var_1, var_2, var_3 )
{
    self._ID18207 = 1;
    var_4 = [];
    var_4[0] = var_0;

    if ( isdefined( var_1 ) )
        var_4[1] = var_1;

    if ( isdefined( var_2 ) )
        var_4[2] = var_2;

    if ( isdefined( var_3 ) )
        var_4[3] = var_3;

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        for ( var_6 = 0; var_6 < level._ID8192[var_4[var_5]].size; var_6++ )
            self attach( level._ID8191[var_4[var_5]], level._ID8192[var_4[var_5]][var_6] );
    }
}

_ID14269( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    var_5 = undefined;
    var_6 = undefined;
    var_7 = "cobra_20mm";
    var_8 = [];

    switch ( var_0 )
    {
        case "f15_missile":
            var_5 = "cobra_Sidewinder";
            var_8[0] = "le_side_wing_jnt";
            var_8[1] = "ri_side_wing_jnt";
            break;
        case "mi28_seeker":
            var_5 = "cobra_seeker";
            var_8[0] = "tag_store_L_1_a";
            var_8[1] = "tag_store_R_1_a";
            var_8[2] = "tag_store_L_2_a";
            var_8[3] = "tag_store_R_2_a";
            break;
        case "ffar":
            var_5 = "cobra_FFAR";
            var_8[0] = "tag_store_r_2";
            break;
        case "seeker":
            var_5 = "cobra_seeker";
            var_8[0] = "tag_store_r_2";
            break;
        case "ffar_bog_a_lite":
            var_5 = "cobra_ffar_bog_a_lite";
            var_8[0] = "tag_store_r_2";
            break;
        case "ffar_airlift":
            var_5 = "cobra_ffar_airlift";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "ffar_airlift_map_overwrite":
            var_5 = "cobra_ffar_airlift_map_overwrite";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "ffar_airlift_nofx":
            var_5 = "cobra_ffar_airlift_nofx";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "cobra_zippy":
            var_5 = "zippy_rockets";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "apache_zippy":
            var_5 = "zippy_rockets_apache";
            var_8[0] = "tag_flash_2";
            var_8[1] = "tag_flash_3";
            break;
        case "apache_zippy_nd":
            var_5 = "zippy_rockets_apache_nodamage";
            var_8[0] = "tag_flash_2";
            var_8[1] = "tag_flash_3";
            break;
        case "mi28_zippy":
            var_5 = "zippy_rockets_apache";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "mi28_zippy_cheap":
            var_5 = "zippy_rockets_apache_cheap";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "cobra_turret":
            var_5 = "hind_turret_penetration";
            var_8[0] = "tag_store_L_wing";
            var_8[1] = "tag_store_R_wing";
            break;
        case "ffar_hind":
            var_7 = "hind_turret";
            var_5 = "hind_ffar";
            var_8[0] = "tag_missile_left";
            var_8[1] = "tag_missile_right";
            break;
        case "hind_zippy":
            var_7 = "hind_turret";
            var_5 = "zippy_rockets";
            var_8[0] = "tag_missile_left";
            var_8[1] = "tag_missile_right";
            break;
        case "hind_rpg":
            var_7 = "hind_turret";
            var_5 = "rpg";
            var_8[0] = "tag_missile_left";
            var_8[1] = "tag_missile_right";
            break;
        case "hind_rpg_cheap":
            var_7 = "hind_turret";
            var_5 = "rpg_cheap";
            var_8[0] = "tag_missile_left";
            var_8[1] = "tag_missile_right";
            break;
        case "ffar_hind_nodamage":
            var_7 = "hind_turret";
            var_5 = "hind_FFAR_nodamage";
            var_8[0] = "tag_missile_left";
            var_8[1] = "tag_missile_right";
            break;
        case "ffar_mi28_village_assault":
            var_7 = "hind_turret";
            var_5 = "mi28_ffar_village_assault";
            var_8[0] = "tag_store_L_2_a";
            var_8[1] = "tag_store_R_2_a";
            var_8[2] = "tag_store_L_2_b";
            var_8[3] = "tag_store_R_2_b";
            var_8[4] = "tag_store_L_2_c";
            var_8[5] = "tag_store_R_2_c";
            var_8[6] = "tag_store_L_2_d";
            var_8[7] = "tag_store_R_2_d";
            break;
        case "ffar_co_rescue":
            var_5 = "cobra_ffar_bog_a_lite";
            var_8[0] = "tag_store_R_2_a";
            var_8[1] = "tag_store_L_2_a";
            break;
        default:
            break;
    }

    var_6 = weaponfiretime( var_5 );

    if ( isdefined( self._ID24792 ) )
        var_9 = self._ID24792;
    else
        var_9 = -1;

    for ( var_10 = 0; var_10 < var_1; var_10++ )
    {
        var_9++;
        var_9 %= var_8.size;

        if ( var_0 == "ffar_mi28_village_assault" )
        {
            if ( isdefined( var_2 ) && isdefined( var_2._ID740 ) )
            {
                var_11 = self gettagorigin( var_8[var_9] );
                var_12 = vectornormalize( var_2._ID740 - var_11 );
                var_12 *= 50;
                magicbullet( var_5, var_11 + var_12, var_2._ID740 );

                if ( isdefined( level._ID1426["ffar_mi28_muzzleflash"] ) )
                    playfxontag( _ID42237::_ID16299( "ffar_mi28_muzzleflash" ), self, var_8[var_9] );

                thread _ID10204( 0.1, 0.5, 0.2, var_2._ID740, 1600 );
            }
        }
        else
        {
            self setvehweapon( var_5 );

            if ( isdefined( var_2 ) )
            {
                var_13 = self fireweapon( var_8[var_9], var_2 );
                _ID42463::_ID10405( "missile_fired", var_13 );

                switch ( var_0 )
                {
                    case "ffar":
                    case "ffar_bog_a_lite":
                        var_13 thread _ID42407::_ID27080( "weap_lau61c_fire", undefined, 1 );
                    case "ffar_airlift":
                    case "ffar_airlift_map_overwrite":
                        var_13 thread _ID23745( 0.1 );
                        break;
                    case "apache_zippy":
                    case "apache_zippy_nd":
                    case "mi28_zippy":
                    case "mi28_zippy_cheap":
                    case "apache_zippy_wall":
                        if ( !isdefined( var_4 ) )
                            var_13 thread _ID23745( 0.6 );
                        else
                            var_13 thread _ID23745( var_4 );

                        break;
                    default:
                        break;
                }
            }
            else
                var_13 = self fireweapon( var_8[var_9] );

            self notify( "missile_fired",  var_13  );
        }

        self._ID24792 = var_9;

        if ( var_10 < var_1 - 1 )
            wait(var_6);

        if ( isdefined( var_3 ) )
            wait(var_3);
    }

    self setvehweapon( var_7 );
}

_ID10204( var_0, var_1, var_2, var_3, var_4 )
{
    wait(var_0);
    earthquake( var_1, var_2, var_3, var_4 );
}

_ID23745( var_0 )
{
    self endon( "death" );
    wait(var_0);

    if ( isdefined( self ) )
        self missile_cleartarget();
}
