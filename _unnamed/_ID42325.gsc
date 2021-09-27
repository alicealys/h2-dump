// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID30753( var_0 )
{
    var_1 = level._ID794 _meth_831C();

    if ( !_func_02F( var_1 ) || var_1 == "none" )
    {

    }

    game["weaponstates"][var_0]["current"] = var_1;
    var_2 = level._ID794 _meth_831E();
    game["weaponstates"][var_0]["offhand"] = var_2;
    game["weaponstates"][var_0]["list"] = [];
    var_3 = level._ID794 _meth_8316();

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        game["weaponstates"][var_0]["list"][var_4]["name"] = var_3[var_4];
}

_ID29876( var_0 )
{
    if ( !_func_02F( game["weaponstates"] ) )
        return 0;

    if ( !_func_02F( game["weaponstates"][var_0] ) )
        return 0;

    level._ID794 _meth_831B();

    for ( var_1 = 0; var_1 < game["weaponstates"][var_0]["list"].size; var_1++ )
    {
        var_2 = game["weaponstates"][var_0]["list"][var_1]["name"];

        if ( _func_02F( level._ID53335 ) )
        {
            if ( !_func_02F( level._ID53335[var_2] ) )
                continue;
        }

        if ( var_2 == "c4" )
            continue;

        if ( var_2 == "claymore" )
            continue;

        level._ID794 _meth_8319( var_2 );
        level._ID794 _meth_833D( var_2 );
    }

    if ( _func_02F( level._ID53335 ) )
    {
        var_2 = game["weaponstates"][var_0]["offhand"];

        if ( _func_02F( level._ID53335[var_2] ) )
            level._ID794 _meth_8323( var_2 );

        var_2 = game["weaponstates"][var_0]["current"];

        if ( _func_02F( level._ID53335[var_2] ) )
            level._ID794 _meth_8320( var_2 );
    }
    else
    {
        level._ID794 _meth_8323( game["weaponstates"][var_0]["offhand"] );
        level._ID794 _meth_8320( game["weaponstates"][var_0]["current"] );
    }

    return 1;
}

_ID32585()
{
    self _meth_8313( 1, "" );
    self _meth_8313( 2, "" );
    self _meth_8313( 3, "altMode" );
    self _meth_8313( 4, "" );
}

_ID19764()
{
    _unknown_01E3();
    self _meth_831B();
}

_ID15823()
{
    if ( _func_02F( level._ID22489 ) )
        return level._ID22489;

    return level._ID912;
}

_ID26588( var_0, var_1 )
{
    var_2 = _unknown_020C();

    if ( var_0 != var_2 )
        return;

    if ( !_func_02F( game["previous_map"] ) )
        return;

    if ( game["previous_map"] != var_1 )
        return;

    level._ID1505 = 1;
    _unknown_01D5( var_1 );
    level._ID18166 = 1;
}

_ID22489( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( _func_02F( var_0 ) )
    {
        var_7 = _unknown_0249();

        if ( var_0 != var_7 )
            return;
    }

    if ( !_func_02F( level._ID1505 ) )
    {
        if ( _func_02F( var_1 ) )
        {
            level._ID10133 = var_1;
            level._ID794 _meth_8319( var_1 );
        }

        if ( _func_02F( var_2 ) )
            level._ID794 _meth_8319( var_2 );

        if ( _func_02F( var_1 ) )
            level._ID794 _meth_8320( var_1 );
        else if ( _func_02F( var_2 ) )
            level._ID794 _meth_8320( var_2 );
    }

    if ( _func_02F( var_3 ) )
    {
        level._ID794 _meth_834F( var_3 );
        level._ID794 _meth_8319( var_3 );
    }

    if ( _func_02F( var_4 ) )
    {
        level._ID794 _meth_8324( var_4 );
        level._ID794 _meth_8319( var_4 );
    }

    if ( _func_02F( var_5 ) )
        level._ID794 _meth_834E( var_5 );

    if ( _func_02F( var_6 ) )
        level._ID6720 = var_6;

    if ( level._ID912 == "contingency" )
    {
        level._ID43216 = var_2;
        level._ID53133 = var_1;
    }

    level._ID18166 = 1;
}

_ID22494( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( level._ID912 != var_0 )
        return;

    if ( _func_02F( var_1 ) )
    {
        level._ID794 _meth_8319( var_1 );
        level._ID794 _meth_8313( 2, "weapon", var_1 );
    }

    if ( _func_02F( var_2 ) )
    {
        level._ID794 _meth_8319( var_2 );
        level._ID794 _meth_8313( 4, "weapon", var_2 );
    }
}

_ID22491()
{
    level._ID22493 = 1;
    level notify( "loadout complete" );
}

_ID10118()
{
    if ( level._ID18166 )
        return;

    _unknown_0351( undefined, "mp5", undefined, "fraggrenade", "flash_grenade", "viewmodel_base_viewhands" );
    level._ID22920 = 1;
}

_ID51707()
{
    switch ( level._ID912 )
    {

    }

    case "roadkill":
    case "oilrig":
    case "invasion":
    case "favela_escape":
    case "estate":
    case "ending":
    case "dcemp":
    case "dcburning":
    case "dc_whitehouse":
    case "contingency":
    case "cliffhanger":
    case "boneyard":
    case "arcadia":
    case "airport":
    case "af_chase":
    case "af_caves":
    case "village_defend":
    case "village_assault":
    case "sniperescape":
    case "simplecredits":
    case "scoutsniper":
    case "launchfacility_b":
    case "launchfacility_a":
    case "killhouse":
    case "jeepride":
    case "icbm":
    case "hunted":
    case "coup":
    case "cargoship":
    case "bog_b":
    case "bog_a":
    case "blackout":
    case "armada":
    case "airplane":
    case "airlift":
    case "aftermath":
    case "ac130":
    case "gulag":
    case "ambush":
    case "favela":
}

_ID54590()
{
    level._ID794 _meth_8301( "fraggrenade", 0 );
    level._ID794 _meth_8301( "flash_grenade", 0 );
}

_ID52692()
{
    level._ID794 _meth_833D( "m4m203_silencer_reflex" );
    level._ID794 _meth_833D( "m14_scoped_silencer_woodland" );
}

_ID45004()
{
    level._ID794 _meth_833D( "m14_scoped_silencer" );
    level._ID794 _meth_833D( "usp_silencer" );
}

_ID50723()
{
    if ( level._ID15361 >= 2 )
    {
        level._ID794 _meth_8301( "claymore", 10 );
        level._ID794 _meth_8301( "c4", 6 );
    }
    else
    {
        level._ID794 _meth_8301( "claymore", 8 );
        level._ID794 _meth_8301( "c4", 3 );
    }
}

_ID43275()
{
    level._ID794 _meth_833D( "claymore" );
}

_ID50820()
{
    level._ID794 _meth_8302( "remington700", 10 );
}

_ID50752()
{
    level._ID794 _meth_833D( "claymore" );
}

_ID46784()
{
    var_0 = undefined;
    var_1 = 0;
    var_2 = level._ID794 _meth_8317();
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_125( var_4, "javelin" ) )
        {
            var_0 = var_4;
            continue;
        }

        if ( _func_125( var_4, "m4m203_silencer_reflex" ) )
            var_1 = 1;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_0 ) )
    {
        level._ID794 _meth_831A( var_0 );

        if ( var_1 )
            level._ID794 _meth_8319( "usp_silencer" );
        else
            level._ID794 _meth_8319( "m4m203_silencer_reflex" );

        level._ID794 _meth_8321( "m4m203_silencer_reflex" );
    }
}

_ID46066()
{
    level._ID794 _meth_8313( 1, "nightvision" );
    level._ID794 _meth_833D( "claymore" );
}

_ID44244()
{
    level._ID794 _meth_833D( "claymore" );
    level._ID794 _meth_833D( "beretta" );
    level._ID794 _meth_833D( "masada_digital_grenadier_eotech" );
}
