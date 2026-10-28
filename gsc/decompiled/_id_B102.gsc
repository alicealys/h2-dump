// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_CD00();
    common_scripts\utility::flag_init( "no_ai_tv_damage" );
    var_0 = 0;
    var_1 = getentarray( "explodable_barrel", "targetname" );

    if ( var_1.size > 0 )
        var_0 = 1;

    var_1 = getentarray( "explodable_barrel", "script_noteworthy" );

    if ( var_1.size > 0 )
        var_0 = 1;

    if ( var_0 )
    {
        _id_ADEF( "barrel", "explode", "fx/props/barrelExp", "explo_metal_barrel" );
        _id_ADEF( "barrel", "burn_start", "fx/props/barrel_ignite" );
        _id_ADEF( "barrel", "burn", "fx/props/barrel_fire_top", "explo_metal_barrel_pre_fire" );
        _id_ADEF( "barrel", "spill", "fx/props/barrel_spill" );
    }

    var_2 = getentarray( "oil_spill", "targetname" );

    if ( var_2.size > 0 )
    {
        _id_ADEF( "oilspill", "burn", "fx/props/barrel_fire" );
        _id_ADEF( "oilspill", "spark", "fx/impacts/small_metalhit_1" );
    }

    var_3 = getentarray( "tincan", "targetname" );

    if ( var_3.size > 0 )
        _id_ADEF( "tincan", undefined, "fx/props/tincan_bounce" );

    var_4 = 0;
    var_5 = getentarray( "breakable", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable_vase", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable box", "targetname" );

    if ( var_5.size > 0 )
        var_4 = 1;

    var_5 = getentarray( "breakable box", "script_noteworthy" );

    if ( var_5.size > 0 )
        var_4 = 1;

    if ( var_4 )
    {
        _id_ADEF( "vase", undefined, "fx/props/vase_water", "bullet_large_vase" );
        _id_ADEF( "bottle", undefined, "fx/props/wine_bottle", "bullet_small_bottle" );
        _id_ADEF( "box", 0, "fx/props/crateExp_dust", "bullet_large_crate" );
        _id_ADEF( "box", 1, "fx/props/crateExp_dust", "bullet_large_crate" );
        _id_ADEF( "box", 2, "fx/props/crateExp_dust", "bullet_large_crate" );
        _id_ADEF( "box", 3, "fx/props/crateExp_ammo", "bullet_large_crate" );
    }

    var_6 = getentarray( "glass", "targetname" );
    var_6 = common_scripts\utility::array_combine( var_6, getentarray( "glass", "script_noteworthy" ) );

    if ( var_6.size > 0 )
    {
        level._id_AEBD = [];
        level._id_AEBD["glass_large"]["breakfx"] = loadfx( "fx/props/car_glass_large" );
        level._id_AEBD["glass_large"]["breaksnd"] = "veh_glass_break_large";
        level._id_AEBD["glass_med"]["breakfx"] = loadfx( "fx/props/car_glass_med" );
        level._id_AEBD["glass_med"]["breaksnd"] = "veh_glass_break_small";
        level._id_AEBD["glass_small"]["breakfx"] = loadfx( "fx/props/car_glass_headlight" );
        level._id_AEBD["glass_small"]["breaksnd"] = "veh_glass_break_small";
    }

    var_7 = getentarray( "interactive_tv", "targetname" );

    if ( var_7.size > 0 )
    {
        precachemodel( "com_tv2_d" );
        precachemodel( "com_tv1" );
        precachemodel( "com_tv1_d" );
        precachemodel( "com_tv2" );
        precachemodel( "com_tv1_testpattern" );
        precachemodel( "com_tv2_testpattern" );
        _id_ADEF( "tv_explode", undefined, "fx/explosions/tv_explosion", "tv_shot_burst" );
    }

    level.tv_lite_array = getentarray( "interactive_tv_light", "targetname" );
    var_8 = getentarray( "destroyable_security_camera", "script_noteworthy" );

    if ( var_8.size > 0 )
    {
        precachemodel( "com_security_camera" );
        precachemodel( "com_security_camera_destroyed" );
        _id_ADEF( "security_camera_explode", undefined, "fx/props/securitycamera_explosion", "security_camera_sparks" );
    }

    var_9 = 25;
    level._id_D01D["orange vase"] = 1;
    level._id_D01D["green vase"] = 1;
    level._id_D01D["bottle"] = 1;
    level._id_C239 = 150;
    level._id_B2B8 = [];
    level._id_D4EF = 0;
    level._id_D2DA = [];
    level._id_D2DA = getentarray( "vase_break_remove", "targetname" );
    level._id_B800 = [];
    level._id_B800 = getentarray( "xenon_auto_aim", "targetname" );
    level._id_CEC4 = getentarray( "xenon_auto_aim_secondary", "targetname" );

    for ( var_10 = 0; var_10 < level._id_B800.size; var_10++ )
        level._id_B800[var_10] notsolid();

    for ( var_10 = 0; var_10 < level._id_CEC4.size; var_10++ )
        level._id_CEC4[var_10] notsolid();

    maps\_utility::set_console_status();

    if ( level.console )
    {
        level._id_B800 = undefined;
        level._id_CEC4 = undefined;
    }

    var_11 = getentarray( "breakable clip", "targetname" );

    for ( var_10 = 0; var_10 < var_11.size; var_10++ )
        level._id_D2DA[level._id_D2DA.size] = var_11[var_10];

    level._id_C4AF = [];
    level._id_B4B7 = 0;
    level._id_B022 = var_9;
    common_scripts\utility::array_thread( getentarray( "tincan", "targetname" ), ::_id_B891 );
    common_scripts\utility::array_thread( getentarray( "helmet_pop", "targetname" ), ::_id_B5E7 );
    common_scripts\utility::array_thread( getentarray( "explodable_barrel", "targetname" ), ::_id_CA4B );
    common_scripts\utility::array_thread( getentarray( "explodable_barrel", "script_noteworthy" ), ::_id_CA4B );
    common_scripts\utility::array_thread( getentarray( "shuddering_entity", "targetname" ), ::_id_C03F );
    common_scripts\utility::array_thread( getentarray( "breakable box", "targetname" ), ::_id_AA3E );
    common_scripts\utility::array_thread( getentarray( "breakable box", "script_noteworthy" ), ::_id_AA3E );
    common_scripts\utility::array_thread( getentarray( "breakable", "targetname" ), ::_id_AA3E );
    common_scripts\utility::array_thread( getentarray( "breakable_vase", "targetname" ), ::_id_AA3E );
    common_scripts\utility::array_thread( getentarray( "oil_spill", "targetname" ), ::_id_C017 );
    common_scripts\utility::array_thread( getentarray( "glass", "targetname" ), ::_id_BC59 );
    common_scripts\utility::array_thread( getentarray( "interactive_tv", "targetname" ), ::tv_logic );
    common_scripts\utility::array_thread( getentarray( "destroyable_security_camera", "script_noteworthy" ), ::_id_B6DD );
    common_scripts\utility::array_thread( getentarray( "hanging_object", "targetname" ), ::_id_AAC7 );
    common_scripts\utility::array_thread( getentarray( "platestack", "targetname" ), ::_id_CC5C );
    _id_CC3D();
}

_id_CD00()
{
    var_0 = getentarray( "breakable_h2", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.interactive_type ) )
        {
            _id_BF79( var_2.interactive_type );
            var_2 setcandamage( 1 );
            var_2 thread _id_B7ED();
        }
    }
}

_id_BF79( var_0 )
{
    var_1 = undefined;

    switch ( var_0 )
    {
        case "bottle_wine":
            _id_ADEF( var_0, undefined, "vfx/glass/glass_shatter_wine_red_01", "bullet_small_bottle" );
            break;
        case "bottle_water":
            _id_ADEF( var_0, undefined, "vfx/glass/glass_shatter_water_bottle_01", "bullet_small_bottle" );
            break;
        case "bottle_whisky":
            _id_ADEF( var_0, undefined, "fx/props/h2_whiskey_bottles_child", "bullet_small_bottle" );
            break;
        case "bottle_vodka":
            _id_ADEF( var_0, undefined, "vfx/glass/glass_shatter_vodka_bottle_01", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_04":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_04", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_08":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_08", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_08":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_08", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_09":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_09", "bullet_small_bottle" );
            break;
        case "breakable_h2_emp_bottles_group_10":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_10", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_11":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_11", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_12":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_12", "bullet_small_bottle" );
            break;
        case "fx_h2_emp_bottles_group_13":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_emp_bottles_group_13", "bullet_small_bottle" );
            break;
        case "fx_h2_liquor_box_group_15":
            _id_ADEF( var_0, undefined, "vfx/destructible/vfx_h2_liquor_box_group_15", "bullet_small_bottle" );
            break;
        case "cosmetic":
            _id_ADEF( var_0, undefined, "vfx/destructible/cosmetic_destructible_01", "bullet_small_bottle" );
            break;
        case "rice":
            _id_ADEF( var_0, "default", "fx/props/sack_rice", "bullet_small_cloth" );
            _id_ADEF( var_0, "explosive", "fx/props/sack_rice_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        case "flour":
            _id_ADEF( var_0, "default", "fx/props/sack_flour", "bullet_small_cloth" );
            _id_ADEF( var_0, "explosive", "fx/props/sack_flour_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        case "coffee":
            _id_ADEF( var_0, "default", "fx/props/sack_coffee", "bullet_small_cloth" );
            _id_ADEF( var_0, "explosive", "fx/props/sack_coffee_explode", "bullet_small_cloth" );
            var_1 = 1;
            break;
        default:
            break;
    }

    if ( isdefined( var_1 ) && !isdefined( level.breakables_fx_orient ) )
        level.breakables_fx_orient = 1;
}

_id_B6DD()
{
    self setcandamage( 1 );
    var_0 = undefined;

    switch ( self.model )
    {
        case "com_security_camera":
            var_0 = "com_security_camera_destroyed";
            break;
    }

    self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );
    self setmodel( var_0 );
    playfxontag( level.breakables_fx["security_camera_explode"], self, "tag_deathfx" );

    if ( isdefined( level._id_CBC1["security_camera_explode"] ) )
        thread maps\_utility::play_sound_on_tag_endon_death( level._id_CBC1["security_camera_explode"] );
}

tv_logic()
{
    self setcandamage( 1 );
    self.damagemodel = undefined;
    self.offmodel = undefined;

    if ( issubstr( self.model, "1" ) )
    {
        self.offmodel = "com_tv1";
        self.onmodel = "com_tv1_testpattern";
        self.damagemodel = "com_tv1_d";
    }
    else if ( issubstr( self.model, "2" ) )
    {
        self.damagemodel = "com_tv2_d";
        self.offmodel = "com_tv2";
        self.onmodel = "com_tv2_testpattern";
    }

    if ( isdefined( self.target ) )
    {
        if ( isdefined( level.disable_interactive_tv_use_triggers ) )
        {
            var_0 = getent( self.target, "targetname" );

            if ( isdefined( var_0 ) )
                var_0 delete();
        }
        else
        {
            self.usetrig = getent( self.target, "targetname" );
            self.usetrig usetriggerrequirelookat();
            self.usetrig setcursorhint( "HINT_NOICON" );
        }
    }

    if ( !isdefined( self.script_noteworthy ) || self.script_noteworthy != "nolite" )
    {
        var_1 = common_scripts\utility::get_array_of_closest( self.origin, level.tv_lite_array, undefined, undefined, 64 );

        if ( var_1.size )
        {
            self.lite = var_1[0];
            level.tv_lite_array = common_scripts\utility::array_remove( level.tv_lite_array, self.lite );
            self.liteintensity = self.lite getlightintensity();
            self.lite._id_CBBA = self;
        }
    }

    thread tv_damage();

    if ( isdefined( self.usetrig ) )
        thread tv_off();
}

tv_off()
{
    self.usetrig endon( "death" );

    for (;;)
    {
        wait 0.2;
        self.usetrig waittill( "trigger" );
        thread maps\_utility::play_sound_on_tag_endon_death( "scn_tv_trigger_on_off" );
        self notify( "off" );

        if ( _id_BAFB() )
        {
            thread common_scripts\utility::play_loop_sound_on_entity( "emt_tv_static" );
            self setmodel( self.onmodel );

            if ( isdefined( self.lite ) )
                self.lite setlightintensity( self.liteintensity );

            continue;
        }

        thread common_scripts\utility::stop_loop_sound_on_entity( "emt_tv_static" );
        self setmodel( self.offmodel );

        if ( isdefined( self.lite ) )
            self.lite setlightintensity( 0 );
    }
}

tv_damage()
{
    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( common_scripts\utility::flag( "no_ai_tv_damage" ) )
        {
            if ( !isalive( var_1 ) )
                continue;

            if ( !isplayer( var_1 ) )
                continue;
        }

        break;
    }

    if ( isdefined( level._id_CA98 ) )
        [[ level._id_CA98 ]]();

    self notify( "off" );
    thread common_scripts\utility::stop_loop_sound_on_entity( "emt_tv_static" );

    if ( isdefined( self.usetrig ) )
        self.usetrig notify( "death" );

    self setmodel( self.damagemodel );

    if ( isdefined( self.lite ) )
        self.lite setlightintensity( 0 );

    playfxontag( level.breakables_fx["tv_explode"], self, "tag_fx" );

    if ( isdefined( level._id_CBC1["tv_explode"] ) )
        thread maps\_utility::play_sound_on_tag( level._id_CBC1["tv_explode"], "tag_fx" );

    if ( isdefined( self.usetrig ) )
        self.usetrig delete();
}

_id_D233()
{
    return self.model == self.onmodel;
}

_id_BAFB()
{
    return self.model == self.offmodel;
}

_id_B873()
{
    return self.model == self.damagemodel;
}

_id_CBB8()
{
    return _id_D233();
}

_id_CC5C()
{
    _id_ADEF( "platestack_shatter", undefined, self.script_parameters );
    self setcandamage( 1 );
    var_0 = getentarray( self.target, "targetname" );

    for (;;)
    {
        self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

        if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
        {
            playfx( level.breakables_fx["platestack_shatter"], self.origin );

            foreach ( var_7 in var_0 )
                var_7 delete();

            self delete();
        }

        wait 0.01;
    }
}

_id_AAC7()
{
    self setcandamage( 1 );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "destruct" )
    {
        if ( isdefined( self.script_parameters ) )
        {
            var_0 = loadfx( self.script_parameters );

            if ( isdefined( self.target ) )
            {
                var_1 = getent( self.target, "targetname" );
                var_2 = anglestoaxis( var_1.angles );
            }
        }
    }

    if ( isdefined( self._id_A95C ) )
        thread maps\_utility::play_loop_sound_on_tag( self._id_A95C, undefined, 1, 1, 0.2, 0.2 );

    for (;;)
    {
        self waittill( "damage", var_3, var_4, var_5, var_6, var_7 );

        if ( var_7 != "MOD_MELEE" && var_7 != "MOD_IMPACT" )
        {
            self physicslaunchclient( self.origin, ( 0, 0, 0 ) );

            if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "destruct" )
            {
                if ( isdefined( var_0 ) )
                {
                    if ( isdefined( self.target ) )
                        playfx( var_0, var_1.origin, var_2["forward"], var_2["up"] );
                    else
                        playfx( var_0, self.origin );
                }

                self delete();

                if ( isdefined( var_1 ) )
                    var_1 delete();
            }

            break;
        }

        waitframe();
    }
}

_id_BC59()
{
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = 0;

    if ( isdefined( self.target ) )
        var_2 = getent( self.target, "targetname" );

    if ( isdefined( self.script_linkto ) )
    {
        var_4 = common_scripts\utility::get_links();
        var_5 = getent( var_4[0], "script_linkname" );
        self linkto( var_5 );
    }

    switch ( self.destructible_type )
    {
        case "glass_large":
            break;
        case "glass_med":
            break;
        case "glass_small":
            break;
        default:
            break;
    }

    if ( isdefined( var_2 ) )
    {
        var_3 = 99;
        var_2 linkto( self );
        var_2 hide();
        var_1 = var_2 setcontents( 0 );
    }

    if ( isdefined( self.script_health ) )
        var_3 = self.script_health;
    else if ( isdefined( var_2 ) )
        var_3 = 99;
    else
        var_3 = 250;

    self setcandamage( 1 );

    while ( var_3 > 0 )
    {
        self waittill( "damage", var_6, var_7, var_0, var_8, var_9 );

        if ( !isdefined( var_0 ) )
            var_0 = ( 0, 0, 1 );

        if ( !isdefined( var_9 ) )
            var_6 = 100000;
        else if ( var_9 == "MOD_GRENADE_SPLASH" )
            var_6 *= 1.75;
        else if ( var_9 == "MOD_IMPACT" )
            var_6 = 100000;

        var_3 -= var_6;
    }

    var_10 = var_3 * -1;
    self hide();
    self notsolid();

    if ( isdefined( var_2 ) )
    {
        var_2 show();
        var_2 setcandamage( 1 );
        var_3 = 200 - var_10;
        var_2 setcontents( var_1 );

        while ( var_3 > 0 )
        {
            var_2 waittill( "damage", var_6, var_11, var_0, var_8, var_9 );

            if ( !isdefined( var_0 ) )
                var_0 = ( 0, 0, 1 );

            if ( !isdefined( var_9 ) )
                var_6 = 100000;
            else if ( var_9 == "MOD_GRENADE_SPLASH" )
                var_6 *= 1.75;
            else if ( var_9 == "MOD_IMPACT" )
                break;

            var_3 -= var_6;
        }

        var_2 delete();
    }

    _id_BD0D( self getorigin(), self.destructible_type, var_0 );
    self delete();
}

_id_BD0D( var_0, var_1, var_2 )
{
    thread common_scripts\utility::play_sound_in_space( level._id_AEBD[var_1]["breaksnd"], var_0 );
    playfx( level._id_AEBD[var_1]["breakfx"], var_0, var_2 );
    level notify( "glass_shatter" );
}

_id_C017()
{
    self.end = common_scripts\utility::getstruct( self.target, "targetname" );
    self.start = common_scripts\utility::getstruct( self.end.target, "targetname" );
    self.barrel = _id_AD6F( self.start.origin, getentarray( "explodable_barrel", "targetname" ) );

    if ( isdefined( self.barrel ) )
    {
        self.barrel._id_AC84 = 1;
        thread _id_C9F9();
    }

    self._id_AE82 = getent( self.target, "targetname" );
    self setcandamage( 1 );
    var_0 = undefined;

    for (;;)
    {
        self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

        if ( var_5 == "MOD_MELEE" || var_5 == "MOD_IMPACT" )
            continue;

        self.damageowner = var_2;
        playfx( level.breakables_fx["oilspill"]["spark"], var_4, var_3 );
        var_0 = spawn( "script_origin", var_4 );

        if ( isdefined( level._id_CBC1["oilspill"]["spark"] ) )
            var_0 thread maps\_utility::play_sound_on_tag_endon_death( level._id_CBC1["oilspill"]["spark"] );

        var_4 = pointonsegmentnearesttopoint( self.start.origin, self.end.origin, var_4 );
        thread _id_B2B1( var_4 );
        thread _id_BC04( var_4, self.start.origin );
        thread _id_BC04( var_4, self.end.origin );
        break;
    }

    if ( isdefined( self.barrel ) )
        self.barrel waittill( "exploding" );

    if ( isdefined( level._id_CBC1["oilspill"]["spark"] ) )
        var_0 _meth_8561( level._id_CBC1["oilspill"]["spark"] );

    self._id_AE82 delete();
    self hide();
    wait 10;
    var_0 delete();
    self delete();
}

_id_C9F9()
{
    for (;;)
    {
        self.barrel waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self.damageowner = var_1;
        break;
    }

    self radiusdamage( self.start.origin, 4, 10, 10, self.damageowner );
}

_id_BC04( var_0, var_1 )
{
    var_2 = vectornormalize( var_1 - var_0 );
    var_3 = distance( var_0, var_1 );
    var_4 = 8;
    var_5 = maps\_utility::_id_C32D( var_2, var_4 );
    var_6 = vectortoangles( var_2 );
    var_7 = anglestoright( var_6 );
    var_8 = getentarray( "explodable_barrel", "targetname" );
    var_9 = 484;
    var_10 = spawn( "script_origin", var_0 );
    var_11 = 0;

    for (;;)
    {
        var_3 -= var_4;

        if ( var_3 < var_4 * 0.1 )
            break;

        var_0 += ( var_5 + maps\_utility::_id_C32D( var_7, randomfloatrange( -6, 6 ) ) );
        thread _id_B2B1( var_0 );
        var_11++;

        if ( var_11 == 4 )
        {
            badplace_cylinder( "", 0.5, var_0, 64, 64 );
            var_11 = 0;
        }

        var_10.origin = var_0;
        var_12 = [];
        var_8 = common_scripts\utility::array_removeundefined( var_8 );

        for ( var_13 = 0; var_13 < var_8.size; var_13++ )
        {
            var_14 = anglestoup( var_8[var_13].angles );
            var_15 = var_8[var_13].origin + maps\_utility::_id_C32D( var_14, 22 );
            var_16 = physicstrace( var_15, var_15 + ( 0, 0, -64 ) );

            if ( distancesquared( var_0, var_16 ) < var_9 )
            {
                var_12[var_12.size] = var_8[var_13];
                var_8[var_13] dodamage( 80 + randomfloat( 10 ), var_0 );
            }
        }

        for ( var_13 = 0; var_13 < var_12.size; var_13++ )
            var_8 = common_scripts\utility::array_remove( var_8, var_12[var_13] );

        wait 0.1;
    }

    if ( !isdefined( self.barrel ) )
        return;

    if ( distance( var_0, self.start.origin ) < 32 )
        self.barrel dodamage( 80 + randomfloat( 10 ), var_0 );
}

_id_B2B1( var_0 )
{
    var_1 = 0;
    var_2 = 0;
    playfx( level.breakables_fx["oilspill"]["burn"], var_0 );

    if ( isdefined( level._id_CBC1["oilspill"]["burn"] ) )
        thread maps\_utility::play_loop_sound_on_tag( level._id_CBC1["oilspill"]["burn"], undefined, 1, 1 );
}

_id_CA4B()
{
    if ( self.classname != "script_model" )
        return;

    if ( !isdefined( level._id_B2B8["com_barrel_benzin"] ) )
    {
        level._id_B2B8["com_barrel_benzin"] = 1;
        precachemodel( "com_barrel_piece" );
        precachemodel( "com_barrel_piece2" );
    }

    self endon( "exploding" );
    _id_B134();
    _id_B7BF();
    self.damagetaken = 0;
    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        self.damageowner = var_1;

        if ( level._id_D4EF )
            wait( randomfloat( 1 ) );

        self.damagetaken += var_0;

        if ( self.damagetaken == var_0 )
            thread _id_BD0E();
    }
}

_id_BD0E()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = anglestoup( self.angles );
    var_3 = anglestoup( ( 0, 90, 0 ) );
    var_4 = vectordot( var_2, var_3 );
    var_5 = ( 0, 0, 0 );
    var_6 = maps\_utility::_id_C32D( var_2, 44 );

    if ( var_4 < 0.5 )
    {
        var_5 = maps\_utility::_id_C32D( var_2, 22 ) - ( 0, 0, 30 );
        var_6 = maps\_utility::_id_C32D( var_2, 22 ) + ( 0, 0, 14 );
    }

    var_7 = spawn( "script_origin", self.origin + var_6 );

    while ( self.damagetaken < level._id_C239 )
    {
        if ( !var_1 )
        {
            playfx( level.breakables_fx["barrel"]["burn_start"], self.origin + var_5 );

            if ( isdefined( level._id_CBC1["barrel"]["burn_start"] ) )
                thread maps\_utility::play_sound_on_tag_endon_death( level._id_CBC1["barrel"]["burn_start"] );

            var_1 = 1;
        }

        if ( var_0 > 19 )
            var_0 = 0;

        playfx( level.breakables_fx["barrel"]["burn"], self.origin + var_6 );

        if ( isdefined( level._id_CBC1["barrel"]["burn"] ) )
            var_7 thread maps\_utility::play_loop_sound_on_tag( level._id_CBC1["barrel"]["burn"], undefined, 1, 1 );

        if ( var_0 == 0 )
        {
            self.damagetaken += ( 10 + randomfloat( 10 ) );
            badplace_cylinder( "", 1, self.origin, 128, 250 );
            var_8 = self.damagetaken > level._id_C239 - 10 && self.damagetaken < level._id_C239;

            if ( var_8 )
                playfx( level.breakables_fx["barrel"]["spill"], self.origin + var_5 );
        }

        var_0++;
        wait 0.05;

        if ( !isdefined( self ) )
            return;
    }

    var_7 playrumbleonentity();
    self playrumbleonentity();
    thread _id_CA56();
    wait 1.0;
    var_7 delete();
}

_id_CA56()
{
    self notify( "exploding" );
    self notify( "death" );
    var_0 = anglestoup( self.angles );
    var_1 = anglestoup( ( 0, 90, 0 ) );
    var_2 = vectordot( var_0, var_1 );
    var_3 = ( 0, 0, 0 );

    if ( var_2 < 0.5 )
    {
        var_4 = self.origin + maps\_utility::_id_C32D( var_0, 22 );
        var_5 = physicstrace( var_4, var_4 + ( 0, 0, -64 ) );
        var_3 = var_5 - self.origin;
    }

    var_3 += ( 0, 0, 4 );
    playfx( level.breakables_fx["barrel"]["explode"], self.origin + var_3 );

    if ( isdefined( level._id_CBC1["barrel"]["explode"] ) )
        thread maps\_utility::play_sound_on_tag_endon_death( level._id_CBC1["barrel"]["explode"] );

    physicsexplosionsphere( self.origin + var_3, 100, 80, 1 );
    level._id_D4EF = 1;

    if ( isdefined( self._id_CDCF ) )
    {
        self._id_CDCF connectpaths();
        self._id_CDCF delete();
    }

    var_6 = 1;
    var_7 = 250;
    var_8 = 250;

    if ( isdefined( self.radius ) )
        var_8 = self.radius;

    var_9 = undefined;

    if ( isdefined( self.damageowner ) )
    {
        var_9 = self.damageowner;

        if ( isplayer( var_9 ) )
            maps\_utility::_id_D4F3( self.origin, "rifle", 150 );
    }

    level.lastexplodingbarrel["time"] = gettime();
    level.lastexplodingbarrel["origin"] = self.origin + ( 0, 0, 30 );
    level.lastexplodingbarrel["radius"] = var_8;
    self radiusdamage( self.origin + ( 0, 0, 30 ), var_8, var_7, var_6, var_9 );

    if ( randomint( 2 ) == 0 )
        self setmodel( "com_barrel_piece" );
    else
        self setmodel( "com_barrel_piece2" );

    if ( var_2 < 0.5 )
    {
        var_4 = self.origin + maps\_utility::_id_C32D( var_0, 22 );
        var_10 = physicstrace( var_4, var_4 + ( 0, 0, -64 ) );
        self.origin = var_10;
        self.angles += ( 0, 0, 90 );
    }

    wait 0.05;
    level._id_D4EF = 0;
}

_id_C03F()
{
    var_0 = 0;

    if ( self.model == "prop_helmet_german_normandy" )
        var_0 = 1;

    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage", var_1, var_2, var_3, var_4 );

        if ( var_0 )
            self vibrate( var_3, 20, 0.6, 0.75 );
        else
            self vibrate( var_3, 0.4, 0.4, 0.4 );

        self waittill( "rotatedone" );
    }
}

_id_B891()
{
    if ( self.classname != "script_model" )
        return;

    self setcandamage( 1 );
    self waittill( "damage", var_0, var_1 );

    if ( isai( var_1 ) || isplayer( var_1 ) )
        var_2 = var_1 geteye() - ( 0, 0, randomint( 50 ) + 50 );
    else
        var_2 = var_1.origin;

    var_3 = vectornormalize( self.origin - var_2 );
    var_3 = maps\_utility::_id_C32D( var_3, 0.5 + randomfloat( 1 ) );
    self notify( "death" );
    playfx( level.breakables_fx["tincan"], self.origin, var_3 );

    if ( isdefined( level._id_CBC1["tincan"] ) )
        thread common_scripts\utility::play_sound_in_space( level._id_CBC1["tincan"], self.origin );

    self delete();
}

_id_B5E7()
{
    if ( self.classname != "script_model" )
        return;

    _id_B7BF();
    self setcandamage( 1 );
    thread _id_AFA0();
}

_id_AFA0()
{
    self waittill( "damage", var_0, var_1 );

    if ( isai( var_1 ) )
        var_2 = var_1 geteye();
    else
        var_2 = var_1.origin;

    var_3 = vectornormalize( self.origin - var_2 );

    if ( !isdefined( self._id_C096 ) && isplayer( var_1 ) )
    {
        thread animscripts\death::helmetlaunch( var_3 );
        return;
    }

    self notsolid();
    self hide();
    var_4 = spawn( "script_model", self.origin + ( 0, 0, 5 ) );
    var_4.angles = self.angles;
    var_4 setmodel( self.model );
    var_4 thread animscripts\death::helmetlaunch( var_3 );
    self._id_C096 = 0;
    self notify( "ok_remove" );
}

_id_CE0D( var_0 )
{
    if ( !isdefined( level._id_AED5 ) )
        return 1;

    if ( level._id_AED5.size == 0 )
        return 0;
    else
    {
        for ( var_1 = 0; var_1 < level._id_AED5.size; var_1++ )
        {
            if ( var_0 == level._id_AED5[var_1] )
                return 1;
        }

        return 0;
    }

    return 1;
}

_id_A925( var_0 )
{
    for (;;)
    {
        self waittill( "trigger", var_1 );
        var_0 notify( "damage", 100, var_1 );
    }
}

_id_AA3E()
{
    if ( self.classname != "script_model" )
        return;

    if ( !isdefined( self.model ) )
        return;

    var_0 = undefined;

    if ( self.model == "egypt_prop_vase1" || self.model == "egypt_prop_vase3" || self.model == "egypt_prop_vase4" )
    {
        if ( !isdefined( level._id_B2B8["egypt_prop_vase_o"] ) )
        {
            level._id_B2B8["egypt_prop_vase_o"] = 1;
            precachemodel( "egypt_prop_vase_br2" );
            precachemodel( "egypt_prop_vase_br5" );
            precachemodel( "egypt_prop_vase_br7" );
        }

        var_0 = "orange vase";
        _id_B134();
        _id_B7BF();
    }
    else if ( self.model == "egypt_prop_vase2" || self.model == "egypt_prop_vase5" || self.model == "egypt_prop_vase6" )
    {
        if ( !isdefined( level._id_B2B8["egypt_prop_vase_g"] ) )
        {
            level._id_B2B8["egypt_prop_vase_g"] = 1;
            precachemodel( "egypt_prop_vase_br1" );
            precachemodel( "egypt_prop_vase_br3" );
            precachemodel( "egypt_prop_vase_br4" );
            precachemodel( "egypt_prop_vase_br6" );
        }

        var_0 = "green vase";
        _id_B134();
        _id_B7BF();
    }
    else if ( self.model == "prop_crate_dak1" || self.model == "prop_crate_dak2" || self.model == "prop_crate_dak3" || self.model == "prop_crate_dak4" || self.model == "prop_crate_dak5" || self.model == "prop_crate_dak6" || self.model == "prop_crate_dak7" || self.model == "prop_crate_dak8" || self.model == "prop_crate_dak9" )
    {
        if ( !isdefined( level._id_B2B8["prop_crate_dak_shard"] ) )
        {
            level._id_B2B8["prop_crate_dak_shard"] = 1;
            precachemodel( "prop_crate_dak_shard" );
        }

        var_0 = "wood box";
        _id_B134();
        _id_B7BF();
    }
    else if ( self.model == "prop_winebottle_breakable" )
    {
        if ( !isdefined( level._id_B2B8["prop_winebottle"] ) )
        {
            level._id_B2B8["prop_winebottle"] = 1;
            precachemodel( "prop_winebottle_broken_top" );
            precachemodel( "prop_winebottle_broken_bot" );
        }

        var_0 = "bottle";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_roundfloral" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenfloral"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._id_D560 = "round_floral";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_roundplain" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenplain"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._id_D560 = "round_plain";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_roundstack" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenplain"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenfloral"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._id_D560 = "round_stack";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_ovalfloral" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenfloral"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._id_D560 = "oval_floral";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_ovalplain" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenplain"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        var_0 = "plate";
        self._id_D560 = "oval_plain";
        _id_B7BF();
    }
    else if ( self.model == "prop_diningplate_ovalstack" )
    {
        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenplain"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenplain"] = 1;
            precachemodel( "prop_diningplate_brokenplain1" );
            precachemodel( "prop_diningplate_brokenplain2" );
            precachemodel( "prop_diningplate_brokenplain3" );
            precachemodel( "prop_diningplate_brokenplain4" );
        }

        if ( !isdefined( level._id_B2B8["prop_diningplate_brokenfloral"] ) )
        {
            level._id_B2B8["prop_diningplate_brokenfloral"] = 1;
            precachemodel( "prop_diningplate_brokenfloral1" );
            precachemodel( "prop_diningplate_brokenfloral2" );
            precachemodel( "prop_diningplate_brokenfloral3" );
            precachemodel( "prop_diningplate_brokenfloral4" );
        }

        var_0 = "plate";
        self._id_D560 = "oval_stack";
        _id_B7BF();
    }

    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( self.target ) )
    {
        var_1 = getent( self.target, "targetname" );

        if ( isdefined( var_1 ) && var_1.classname == "trigger_multiple" )
            var_1 thread _id_A925( self );
    }

    self setcandamage( 1 );
    thread _id_B98B( var_0 );
}

_id_B7ED()
{
    self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );
    var_5 = undefined;
    var_6 = undefined;

    if ( isdefined( level.breakables_fx[self.interactive_type] ) )
    {
        if ( isarray( level.breakables_fx[self.interactive_type] ) )
        {
            switch ( var_4 )
            {
                case "MOD_EXPLOSIVE_BULLET":
                case "MOD_PROJECTILE_SPLASH":
                case "MOD_PROJECTILE":
                case "MOD_GRENADE_SPLASH":
                case "MOD_GRENADE":
                    var_5 = level.breakables_fx[self.interactive_type]["explosive"];
                    var_6 = level._id_CBC1[self.interactive_type]["explosive"];
                    break;
                case "MOD_RIFLE_BULLET":
                case "MOD_PISTOL_BULLET":
                    var_5 = level.breakables_fx[self.interactive_type]["bullet"];
                    var_6 = level._id_CBC1[self.interactive_type]["bullet"];
                    break;
                case "MOD_MELEE_ALT":
                case "MOD_MELEE":
                    var_5 = level.breakables_fx[self.interactive_type]["melee"];
                    var_6 = level._id_CBC1[self.interactive_type]["melee"];
                    break;
            }

            if ( !isdefined( var_5 ) )
                var_5 = level.breakables_fx[self.interactive_type]["default"];

            if ( !isdefined( var_6 ) )
                var_6 = level._id_CBC1[self.interactive_type]["default"];
        }
        else
        {
            var_5 = level.breakables_fx[self.interactive_type];
            var_6 = level._id_CBC1[self.interactive_type];
        }
    }

    if ( isdefined( var_5 ) )
    {
        if ( isdefined( level.breakables_fx_orient ) )
        {
            var_7 = anglestoaxis( self.angles );
            playfx( var_5, self.origin, var_7["forward"], var_7["up"] );
        }
        else
            playfx( var_5, self.origin );
    }

    if ( isdefined( var_6 ) )
        thread common_scripts\utility::play_sound_in_space( var_6, self.origin );

    if ( !isdefined( self._id_C096 ) )
        self delete();
    else
    {
        self._id_C096 = 0;
        self notify( "ok_remove" );
    }
}

_id_B98B( var_0 )
{
    var_1 = undefined;

    for (;;)
    {
        self waittill( "damage", var_2, var_1 );

        if ( isdefined( var_1 ) && var_1.code_classname == "script_vehicle" )
            var_1 joltbody( self.origin + ( 0, 0, -90 ), 0.2 );

        if ( var_0 == "wood box" )
        {
            if ( !_id_CE0D( var_1 ) )
                continue;

            if ( !isdefined( level.flags ) || !isdefined( level.flags["Breakable Boxes"] ) )
                break;

            if ( isdefined( level.flags["Breakable Boxes"] ) && level.flags["Breakable Boxes"] == 1 )
                break;
        }
        else
            break;
    }

    self notify( "death" );
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;

    switch ( var_0 )
    {
        case "green vase":
        case "orange vase":
            if ( isdefined( level._id_CBC1["vase"] ) )
                var_3 = level._id_CBC1["vase"];
            else
                var_3 = "bullet_large_vase";

            var_4 = level.breakables_fx["vase"];
            break;
        case "wood box":
            var_6 = randomint( level.breakables_fx["box"].size );

            if ( isdefined( level._id_CBC1["box"][var_6] ) )
                var_3 = level._id_CBC1["box"][var_6];
            else
                var_3 = "bullet_large_crate";

            var_4 = level.breakables_fx["box"][var_6];
            var_5 = 1;
            break;
        case "bottle":
            if ( isdefined( level._id_CBC1["bottle"] ) )
                var_3 = level._id_CBC1["bottle"];
            else
                var_3 = "bullet_small_bottle";

            var_4 = level.breakables_fx["bottle"];
            break;
        case "plate":
            if ( isdefined( level._id_CBC1["plate"] ) )
                var_3 = level._id_CBC1["plate"];
            else
                var_3 = "bullet_small_plate";

            break;
    }

    thread common_scripts\utility::play_sound_in_space( var_3, self.origin );
    thread _id_C035( self, var_0 );

    if ( isdefined( var_4 ) )
        playfx( var_4, self.origin );

    if ( var_5 )
    {
        var_7 = getentarray( "breakable", "targetname" );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            var_9 = var_7[var_8];
            var_10 = abs( self.origin[0] - var_9.origin[0] );
            var_11 = abs( self.origin[1] - var_9.origin[1] );

            if ( var_10 <= 20 && var_11 <= 20 )
            {
                var_12 = self.origin[2] - var_9.origin[2];

                if ( var_12 <= 0 )
                    var_9 notify( "damage", var_2, var_1 );
            }
        }
    }

    if ( isdefined( self._id_CDCF ) )
    {
        self._id_CDCF connectpaths();
        self._id_CDCF delete();
    }

    if ( !isdefined( self._id_C096 ) )
        self delete();
    else
        self._id_C096 = 0;

    self notify( "ok_remove" );
}

_id_B7BF()
{
    if ( isdefined( level._id_B800 ) && level._id_B800.size > 0 )
        self._id_D3D3 = _id_A88C( self.origin, level._id_B800 );

    if ( isdefined( self._id_D3D3 ) )
    {
        level._id_B800 = common_scripts\utility::array_remove( level._id_B800, self._id_D3D3 );
        thread _id_A97B();
    }
}

_id_CE14()
{
    self notify( "entered_xenon_auto_aim_stop_logic" );
    self endon( "entered_xenon_auto_aim_stop_logic" );
    self._id_D3D3 waittill( "xenon_auto_aim_stop_logic" );
    self._id_C096 = undefined;
}

_id_A97B( var_0 )
{
    thread _id_CE14();
    self endon( "xenon_auto_aim_stop_logic" );
    self._id_D3D3 endon( "xenon_auto_aim_stop_logic" );
    self notify( "xenon_remove_auto_aim" );
    self._id_D3D3 thread _id_D092( var_0 );
    self._id_C096 = 1;
    self waittill( "damage", var_1, var_2 );
    self._id_D3D3 disableaimassist();
    self._id_D3D3 delete();

    if ( self._id_C096 )
        self waittill( "ok_remove" );

    self delete();
}

_id_D092( var_0 )
{
    self endon( "xenon_auto_aim_stop_logic" );
    self endon( "death" );

    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( isdefined( self.script_noteworthy ) && var_0 )
    {
        var_1 = "enable_xenon_autoaim_" + self.script_noteworthy;
        level waittill( var_1 );
    }

    self._id_C541 = 0;

    if ( isdefined( self._id_B6DA ) && self._id_B6DA == 1 )
        self waittill( "recreate" );

    self enableaimassist();
}

_id_B134()
{
    if ( isdefined( self.target ) )
    {
        var_0 = getent( self.target, "targetname" );

        if ( var_0.classname == "script_brushmodel" )
        {
            self._id_CDCF = var_0;
            return;
        }
    }

    if ( isdefined( level._id_D2DA ) && level._id_D2DA.size > 0 )
        self._id_CDCF = _id_AD6F( self.origin, level._id_D2DA );

    if ( isdefined( self._id_CDCF ) )
        level._id_D2DA = common_scripts\utility::array_remove( level._id_D2DA, self._id_CDCF );
}

_id_C035( var_0, var_1 )
{
    var_2 = anglestoright( var_0.angles );
    var_3 = anglestoforward( var_0.angles );
    var_4 = anglestoup( var_0.angles );
    var_5 = [];

    switch ( var_1 )
    {
        case "orange vase":
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -7, 0, 22, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br2" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 13, -6, 28, var_0, ( 0, 245.1, 0 ), "egypt_prop_vase_br7" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 12, 10, 27, var_0, ( 0, 180, 0 ), "egypt_prop_vase_br7" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, 2, 0, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br5" );
            break;
        case "green vase":
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -6, -1, 26, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br1" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 12, 1, 31, var_0, ( 0, 348.5, 0 ), "egypt_prop_vase_br3" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 6, 13, 29, var_0, ( 0, 153.5, 0 ), "egypt_prop_vase_br6" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, 1, 0, var_0, ( 0, 0, 0 ), "egypt_prop_vase_br4" );
            break;
        case "wood box":
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -10, 10, 25, var_0, ( 0, 0, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 10, 10, 25, var_0, ( 0, 90, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 10, -10, 25, var_0, ( 0, 180, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -10, -10, 25, var_0, ( 0, 270, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 10, 10, 5, var_0, ( 180, 0, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 10, -10, 5, var_0, ( 180, 90, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -10, -10, 5, var_0, ( 180, 180, 0 ), "prop_crate_dak_shard" );
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -10, 10, 5, var_0, ( 180, 270, 0 ), "prop_crate_dak_shard" );
            break;
        case "bottle":
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 0, 0, 10, var_0, ( 0, 0, 0 ), "prop_winebottle_broken_top" );
            var_5[var_5.size - 1].type = "bottle_top";
            var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 0, 0, 0, var_0, ( 0, 0, 0 ), "prop_winebottle_broken_bot" );
            var_5[var_5.size - 1].type = "bottle_bot";
            break;
        case "plate":
            switch ( var_0._id_D560 )
            {
                case "round_floral":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
                case "round_plain":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
                case "round_stack":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -4, 0.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, -2, 0.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 1, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 2, 0.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 3, 2.5, var_0, ( 0, 60, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -1, -3, 2.5, var_0, ( 0, 59.8, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 2, -1, 2.5, var_0, ( 0, 60.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 2, 4, 2.5, var_0, ( 0, 56.8, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -4, 4.5, var_0, ( 0, 150, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, -2, 4.5, var_0, ( 0, 149.8, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 1, 2, 4.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 2, 4.5, var_0, ( 0, 146.8, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
                case "oval_floral":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
                case "oval_plain":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
                case "oval_stack":
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, -4, 0.5, var_0, ( 0, 205.9, 0 ), "prop_diningplate_brokenfloral1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -6, 1, 0.5, var_0, ( 0, 352.2, 0 ), "prop_diningplate_brokenfloral2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 4, 2, 0.5, var_0, ( 0, 150.2, 0 ), "prop_diningplate_brokenfloral3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -2, 5, 0.5, var_0, ( 0, 102.3, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -3, -3, 0.5, var_0, ( 0, 246.7, 0 ), "prop_diningplate_brokenfloral4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, 5, 2.5, var_0, ( 0, 25.9, 0 ), "prop_diningplate_brokenplain1" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 6, 0, 2.5, var_0, ( 0, 172.2, 0 ), "prop_diningplate_brokenplain2" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, -4, -1, 2.5, var_0, ( 0, 330.2, 0 ), "prop_diningplate_brokenplain3" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 2, -4, 2.5, var_0, ( 0, 282.3, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    var_5[var_5.size] = _id_BA30( var_2, var_3, var_4, 3, 4, 2.5, var_0, ( 0, 66.7, 0 ), "prop_diningplate_brokenplain4" );
                    var_5[var_5.size - 1].type = "plate";
                    break;
            }

            break;
        default:
            return;
    }

    common_scripts\utility::array_thread( var_5, ::_id_CEAF, var_0.origin );

    if ( isdefined( level._id_D01D[var_1] ) && level._id_D01D[var_1] == 1 )
    {
        var_6 = var_5[0].origin[2];

        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( var_6 > var_5[var_7].origin[2] )
                var_6 = var_5[var_7].origin[2];
        }

        common_scripts\utility::array_thread( var_5, ::_id_B0AD, var_6 );
    }
    else
    {
        wait 2;

        for ( var_7 = 0; var_7 < var_5.size; var_7++ )
        {
            if ( isdefined( var_5[var_7] ) )
                var_5[var_7] delete();
        }
    }
}

_id_B540( var_0 )
{
    if ( isdefined( level._id_C4AF[level._id_B4B7] ) )
        level._id_C4AF[level._id_B4B7] delete();

    level._id_C4AF[level._id_B4B7] = var_0;
    level._id_B4B7++;

    if ( !( level._id_B4B7 < level._id_B022 ) )
        level._id_B4B7 = 0;
}

_id_CEAF( var_0 )
{
    self endon( "do not kill" );

    if ( isdefined( self.type ) && self.type == "bottle_bot" )
        return;

    var_1 = spawn( "script_origin", self.origin );
    self linkto( var_1 );
    var_2 = self.origin + ( randomfloat( 10 ) - 5, randomfloat( 10 ) - 5, randomfloat( 10 ) + 5 );
    var_3 = undefined;

    if ( isdefined( self.type ) && self.type == "bottle_top" )
    {
        var_3 = ( randomfloat( 40 ) - 20, randomfloat( 40 ) - 20, 70 + randomfloat( 15 ) );
        var_4 = 1;
        var_5 = 1;
        var_6 = 1;

        if ( randomint( 100 ) > 50 )
            var_4 = -1;

        if ( randomint( 100 ) > 50 )
            var_5 = -1;

        if ( randomint( 100 ) > 50 )
            var_6 = -1;

        var_1 rotatevelocity( ( 250 * var_4, 250 * var_5, randomfloat( 100 ) * var_6 ), 2, 0, 0.5 );
    }
    else if ( isdefined( self.type ) && self.type == "plate" )
    {
        var_3 = vectornormalize( var_2 - var_0 );
        var_3 = maps\_utility::_id_C32D( var_3, 125 + randomfloat( 25 ) );

        if ( randomint( 100 ) > 50 )
            var_1 rotateroll( ( 800 + randomfloat( 4000 ) ) * -1, 5, 0, 0 );
        else
            var_1 rotateroll( 800 + randomfloat( 4000 ), 5, 0, 0 );
    }
    else
    {
        var_3 = vectornormalize( var_2 - var_0 );
        var_3 = maps\_utility::_id_C32D( var_3, 60 + randomfloat( 50 ) );

        if ( randomint( 100 ) > 50 )
            var_1 rotateroll( ( 800 + randomfloat( 1000 ) ) * -1, 5, 0, 0 );
        else
            var_1 rotateroll( 800 + randomfloat( 1000 ), 5, 0, 0 );
    }

    var_1 movegravity( var_3, 5 );
    wait 5;

    if ( isdefined( self ) )
        self unlink();

    var_1 delete();
}

_id_B0AD( var_0 )
{
    self endon( "death" );
    wait 0.1;
    var_1 = bullettrace( self.origin, self.origin - ( 0, 0, 50000 ), 0, undefined );
    var_2 = var_1["position"];

    while ( self.origin[2] > var_2[2] )
        wait 0.05;

    self unlink();
    self.origin = ( self.origin[0], self.origin[1], var_2[2] );
    self notify( "do not kill" );
    self unlink();
}

_id_BA30( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    var_9 = 1;
    var_10 = var_0;
    var_11 = var_1;
    var_12 = var_2;
    var_10 = maps\_utility::_id_C32D( var_10, var_4 * var_9 );
    var_11 = maps\_utility::_id_C32D( var_11, var_3 * var_9 );
    var_12 = maps\_utility::_id_C32D( var_12, var_5 * var_9 );
    var_13 = var_6.origin + var_10 + var_11 + var_12;
    var_14 = spawn( "script_model", var_13 );
    var_14 setmodel( var_8 );
    var_14.modelscale = var_9;
    var_14.angles = var_6.angles + var_7;
    _id_B540( var_14 );
    return var_14;
}

_id_D191( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = distance( var_1[0] getorigin(), var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 < var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_id_AD6F( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 256;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_id_A88C( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 8;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_id_B046( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = 1000000;
    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_id_ADEF( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level.breakables_fx ) )
        level.breakables_fx = [];

    if ( !isdefined( level._id_CBC1 ) )
        level._id_CBC1 = [];

    if ( isdefined( var_1 ) && isdefined( level.breakables_fx[var_0] ) && isdefined( level.breakables_fx[var_0][var_1] ) )
        return;
    else if ( !isdefined( var_1 ) && isdefined( level.breakables_fx[var_0] ) )
        return;

    if ( isdefined( level._id_ACBB ) && isdefined( level._id_ACBB[var_2] ) )
        var_2 = level._id_ACBB[var_2];

    if ( isdefined( level._id_C143 ) && isdefined( level._id_C143[var_0] ) )
        var_3 = level._id_C143[var_0];

    if ( isdefined( var_1 ) )
    {
        level.breakables_fx[var_0][var_1] = loadfx( var_2 );
        level._id_CBC1[var_0][var_1] = var_3;
    }
    else
    {
        level.breakables_fx[var_0] = loadfx( var_2 );
        level._id_CBC1[var_0] = var_3;
    }
}

_id_CC3D()
{
    common_scripts\utility::array_thread( getentarray( "com_wall_fan_blade_rotate_slow", "targetname" ), ::fan_blade_rotate, "veryslow" );
    common_scripts\utility::array_thread( getentarray( "com_wall_fan_blade_rotate", "targetname" ), ::fan_blade_rotate, "slow" );
    common_scripts\utility::array_thread( getentarray( "com_wall_fan_blade_rotate_fast", "targetname" ), ::fan_blade_rotate, "fast" );
    common_scripts\utility::array_thread( getentarray( "com_wall_fan_blade_rotate_custom", "targetname" ), ::_id_B409 );
}

fan_blade_rotate( var_0 )
{
    if ( !isdefined( self ) )
        return;

    var_1 = 0;
    var_2 = 20000;
    var_3 = 1.0;

    if ( isdefined( self.speed ) )
        var_3 = self.speed;

    if ( var_0 == "slow" )
    {
        if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "lockedspeed" )
            var_1 = 180;
        else
            var_1 = randomfloatrange( 100 * var_3, 360 * var_3 );
    }
    else if ( var_0 == "fast" )
        var_1 = randomfloatrange( 720 * var_3, 1000 * var_3 );
    else if ( var_0 == "veryslow" )
        var_1 = randomfloatrange( 1 * var_3, 2 * var_3 );
    else
    {

    }

    if ( !isdefined( self.script_noteworthy ) || self.script_noteworthy == "lockedspeed" )
        wait( randomfloatrange( 0, 1 ) );

    var_4 = self.angles;
    var_5 = anglestoright( self.angles ) * 100;
    var_5 = vectornormalize( var_5 );

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "reverse" )
        var_1 *= -1;

    for (;;)
    {
        var_6 = abs( vectordot( var_5, ( 1, 0, 0 ) ) );
        var_7 = abs( vectordot( var_5, ( 0, 1, 0 ) ) );
        var_8 = abs( vectordot( var_5, ( 0, 0, 1 ) ) );

        if ( var_6 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_7 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_8 > 0.9 )
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );
        else
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );

        wait( var_2 );
    }
}

_id_B409()
{
    for (;;)
    {
        self addyaw( 24 );
        wait 0.05;
    }
}
