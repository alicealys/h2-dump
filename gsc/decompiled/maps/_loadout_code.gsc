// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

saveplayerweaponstatepersistent( var_0 )
{
    var_1 = level.player getcurrentweapon();

    if ( !isdefined( var_1 ) || var_1 == "none" )
    {

    }

    game["weaponstates"][var_0]["current"] = var_1;
    var_2 = level.player getcurrentoffhand();
    game["weaponstates"][var_0]["offhand"] = var_2;
    game["weaponstates"][var_0]["list"] = [];
    var_3 = level.player getweaponslistall();

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        game["weaponstates"][var_0]["list"][var_4]["name"] = var_3[var_4];
}

restoreplayerweaponstatepersistent( var_0 )
{
    if ( !isdefined( game["weaponstates"] ) )
        return 0;

    if ( !isdefined( game["weaponstates"][var_0] ) )
        return 0;

    level.player takeallweapons();

    for ( var_1 = 0; var_1 < game["weaponstates"][var_0]["list"].size; var_1++ )
    {
        var_2 = game["weaponstates"][var_0]["list"][var_1]["name"];

        if ( isdefined( level._id_D057 ) )
        {
            if ( !isdefined( level._id_D057[var_2] ) )
                continue;
        }

        if ( var_2 == "c4" )
            continue;

        if ( var_2 == "claymore" )
            continue;

        level.player giveweapon( var_2 );
        level.player givemaxammo( var_2 );
    }

    if ( isdefined( level._id_D057 ) )
    {
        var_2 = game["weaponstates"][var_0]["offhand"];

        if ( isdefined( level._id_D057[var_2] ) )
            level.player switchtooffhand( var_2 );

        var_2 = game["weaponstates"][var_0]["current"];

        if ( isdefined( level._id_D057[var_2] ) )
            level.player switchtoweapon( var_2 );
    }
    else
    {
        level.player switchtooffhand( game["weaponstates"][var_0]["offhand"] );
        level.player switchtoweapon( game["weaponstates"][var_0]["current"] );
    }

    return 1;
}

setdefaultactionslot()
{
    self setactionslot( 1, "" );
    self setactionslot( 2, "" );
    self setactionslot( 3, "altMode" );
    self setactionslot( 4, "" );
}

init_player()
{
    setdefaultactionslot();
    self takeallweapons();
}

get_loadout()
{
    if ( isdefined( level.loadout ) )
        return level.loadout;

    return level.script;
}

persist( var_0, var_1 )
{
    var_2 = get_loadout();

    if ( var_0 != var_2 )
        return;

    if ( !isdefined( game["previous_map"] ) )
        return;

    if ( game["previous_map"] != var_1 )
        return;

    level._lc_persists = 1;
    restoreplayerweaponstatepersistent( var_1 );
    level.has_loadout = 1;
}

loadout( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( isdefined( var_0 ) )
    {
        var_7 = get_loadout();

        if ( var_0 != var_7 )
            return;
    }

    if ( !isdefined( level._lc_persists ) )
    {
        if ( isdefined( var_1 ) )
        {
            level.default_weapon = var_1;
            level.player giveweapon( var_1 );
        }

        if ( isdefined( var_2 ) )
            level.player giveweapon( var_2 );

        if ( isdefined( var_1 ) )
            level.player switchtoweapon( var_1 );
        else if ( isdefined( var_2 ) )
            level.player switchtoweapon( var_2 );
    }

    if ( isdefined( var_3 ) )
    {
        level.player setoffhandprimaryclass( var_3 );
        level.player giveweapon( var_3 );
    }

    if ( isdefined( var_4 ) )
    {
        level.player setoffhandsecondaryclass( var_4 );
        level.player giveweapon( var_4 );
    }

    if ( isdefined( var_5 ) )
        level.player setviewmodel( var_5 );

    if ( isdefined( var_6 ) )
        level.campaign = var_6;

    if ( level.script == "contingency" )
    {
        level._id_A8D0 = var_2;
        level._id_CF8D = var_1;
    }

    level.has_loadout = 1;
}

loadoutequipment( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( level.script != var_0 )
        return;

    if ( isdefined( var_1 ) )
    {
        level.player giveweapon( var_1 );
        level.player setactionslot( 2, "weapon", var_1 );
    }

    if ( isdefined( var_2 ) )
    {
        level.player giveweapon( var_2 );
        level.player setactionslot( 4, "weapon", var_2 );
    }
}

loadout_complete()
{
    level.loadoutcomplete = 1;
    level notify( "loadout complete" );
}

default_loadout_if_notset()
{
    if ( level.has_loadout )
        return;

    loadout( undefined, "mp5", undefined, "fraggrenade", "flash_grenade", "viewmodel_base_viewhands" );
    level.map_without_loadout = 1;
}

_id_C9FB()
{
    switch ( level.script )
    {
        case "killhouse":
            _id_D53E();
            break;
        case "cargoship":
            break;
        case "coup":
            break;
        case "blackout":
            _id_CDD4();
            break;
        case "armada":
            break;
        case "bog_a":
            break;
        case "hunted":
            break;
        case "ac130":
            break;
        case "bog_b":
            break;
        case "airlift":
            break;
        case "aftermath":
            break;
        case "village_assault":
            break;
        case "scoutsniper":
            _id_AFCC();
            break;
        case "sniperescape":
            _id_C623();
            break;
        case "village_defend":
            _id_A90B();
            break;
        case "ambush":
            _id_C684();
            break;
        case "icbm":
            break;
        case "launchfacility_a":
            _id_C640();
            break;
        case "launchfacility_b":
            _id_B6C0();
            break;
        case "jeepride":
            break;
        case "airplane":
            break;
        case "simplecredits":
            break;
        case "af_caves":
            break;
        case "af_chase":
            break;
        case "airport":
            break;
        case "arcadia":
            break;
        case "boneyard":
            break;
        case "cliffhanger":
            break;
        case "contingency":
            break;
        case "dc_whitehouse":
            break;
        case "dcburning":
            _id_B3F2();
        case "dcemp":
            break;
        case "ending":
            break;
        case "estate":
            _id_ACD4();
        case "favela":
            break;
        case "favela_escape":
            break;
        case "gulag":
            break;
        case "invasion":
            break;
        case "oilrig":
            break;
        case "roadkill":
            break;
    }
}

_id_D53E()
{
    level.player setweaponammoclip( "fraggrenade", 0 );
    level.player setweaponammoclip( "flash_grenade", 0 );
}

_id_CDD4()
{
    level.player givemaxammo( "m4m203_silencer_reflex" );
    level.player givemaxammo( "m14_scoped_silencer_woodland" );
}

_id_AFCC()
{
    level.player givemaxammo( "m14_scoped_silencer" );
    level.player givemaxammo( "usp_silencer" );
}

_id_C623()
{
    if ( level.gameskill >= 2 )
    {
        level.player setweaponammoclip( "claymore", 10 );
        level.player setweaponammoclip( "c4", 6 );
    }
    else
    {
        level.player setweaponammoclip( "claymore", 8 );
        level.player setweaponammoclip( "c4", 3 );
    }
}

_id_A90B()
{
    level.player givemaxammo( "claymore" );
}

_id_C684()
{
    level.player setweaponammostock( "remington700", 10 );
}

_id_C640()
{
    level.player givemaxammo( "claymore" );
}

_id_B6C0()
{
    var_0 = undefined;
    var_1 = 0;
    var_2 = level.player getweaponslistprimaries();

    foreach ( var_4 in var_2 )
    {
        if ( issubstr( var_4, "javelin" ) )
        {
            var_0 = var_4;
            continue;
        }

        if ( issubstr( var_4, "m4m203_silencer_reflex" ) )
            var_1 = 1;
    }

    if ( isdefined( var_0 ) )
    {
        level.player takeweapon( var_0 );

        if ( var_1 )
            level.player giveweapon( "usp_silencer" );
        else
            level.player giveweapon( "m4m203_silencer_reflex" );

        level.player switchtoweaponimmediate( "m4m203_silencer_reflex" );
    }
}

_id_B3F2()
{
    level.player setactionslot( 1, "nightvision" );
    level.player givemaxammo( "claymore" );
}

_id_ACD4()
{
    level.player givemaxammo( "claymore" );
    level.player givemaxammo( "beretta" );
    level.player givemaxammo( "masada_digital_grenadier_eotech" );
}
