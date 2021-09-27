// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36377()
{
    _unknown_0105();
    thread _unknown_000F();
    _ID42237::_ID3350( _func_1A2( "stealth_clipbrush", "targetname" ), ::_unknown_00DF );
}

_ID37011()
{
    var_0 = "_stealth_spotted";

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_enabled" );
        _ID42237::_ID14413( var_0 );

        if ( !_ID42237::_ID14385( "_stealth_enabled" ) )
            continue;

        _unknown_0064( "spotted" );
        thread _unknown_007F();
        _ID42237::_ID14426( var_0 );

        if ( !_ID42237::_ID14385( "_stealth_enabled" ) )
            continue;

        _unknown_0084( "hidden" );
        waitframe;
    }
}

_ID37007( var_0 )
{
    level._ID1644._ID22585._ID10660 = var_0;
    var_1 = level._ID1644._ID22585._ID30;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        _func_0DB( var_4, var_2[var_0] );
        var_3 = "ai_busyEvent" + _func_127( var_4, 8 );
        _func_0DB( var_3, var_2[var_0] );
    }

    var_clear_3
}

_ID37016()
{
    while ( _ID42237::_ID14385( "_stealth_spotted" ) )
    {
        _ID42237::_ID14413( "_stealth_enabled" );
        var_0 = level._ID1644._ID17437._ID17473;
        var_1 = var_0;

        for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
        {
            var_2 = var_1[var_4];
            var_3 = _ID42386::_ID17450( "_stealth_spotted", var_4 );

            if ( !_ID42237::_ID14385( var_3 ) )
                continue;

            var_2 = _ID42237::_ID3332( var_2 );

            if ( var_2.size > 0 )
            {
                if ( var_2[0]._ID1194 == "allies" )
                    continue;
            }

            thread _unknown_0176( var_4 );
        }

        var_clear_3
        _ID42237::_ID14430( "_stealth_spotted", 1.25 );
    }
}

_ID37017( var_0 )
{
    var_1 = _unknown_01A0( var_0 );

    if ( !var_1 )
        return;

    wait 1;
    var_1 = _unknown_01AC( var_0 );

    if ( !var_1 )
        return;

    _ID42386::_ID17444( "_stealth_spotted", var_0 );
}

_ID37015( var_0 )
{
    var_1 = _ID42386::_ID17448( var_0 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3._ID322 ) )
            continue;

        return 0;
    }

    var_clear_2
    return 1;
}

_ID37012()
{
    _ID42237::_ID14400( "_stealth_player_nade" );
    level._ID1644._ID22585._ID27564 = 0;
    _ID42237::_ID3350( level._ID805, ::_unknown_021E );
}

_ID27446()
{
    for (;;)
    {
        self waittill( "grenade_pullback" );
        _ID42237::_ID14402( "_stealth_player_nade" );
        self waittill( "grenade_fire",  var_0  );
        thread _unknown_024B( var_0 );
    }
}

_ID27447( var_0 )
{
    level._ID1644._ID22585._ID27564++;
    var_0 _ID42237::_ID41123( "death", 10 );
    level._ID1644._ID22585._ID27564--;
    waitframe;

    if ( !level._ID1644._ID22585._ID27564 )
        _ID42237::_ID14388( "_stealth_player_nade" );
}

_ID37010()
{
    _ID42237::_ID3350( _func_1A2( "_stealth_shadow", "targetname" ), ::_unknown_02A7 );
    _ID42237::_ID3350( _func_1A2( "stealth_shadow", "targetname" ), ::_unknown_02B8 );
}

_ID36363()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_0  );

        if ( !_func_1A7( var_0 ) )
            continue;

        if ( !var_0 _ID42407::_ID13023( "_stealth_in_shadow" ) || var_0 _ID42407::_ID13019( "_stealth_in_shadow" ) )
            continue;

        var_0 thread _unknown_0311( self );
    }
}

_ID36362( var_0 )
{
    self endon( "death" );
    _ID42407::_ID13025( "_stealth_in_shadow" );

    while ( _func_02F( var_0 ) && self _meth_80B0( var_0 ) )
        wait 0.05;

    _ID42407::_ID13021( "_stealth_in_shadow" );
}

_ID37008()
{
    self endon( "death" );

    if ( _func_02F( self._ID31197 ) )
        _ID42237::_ID14413( self._ID31197 );

    waitframe;
    var_0 = "_stealth_spotted";
    var_1 = "_stealth_found_corpse";
    var_2 = "_stealth_event";

    if ( _func_02F( self._ID31463 ) )
    {
        _ID42386::_ID17468( _ID42407::_ID36694( self._ID31463 ) );
        var_0 = _ID42386::_ID17450( var_0, self._ID31463 );
        var_1 = _ID42386::_ID17450( var_1, self._ID31463 );
        var_2 = _ID42386::_ID17450( var_2, self._ID31463 );
    }

    self _meth_82CA( 1 );
    _ID42407::_ID1985( _ID42407::_ID41116, "damage" );
    level _ID42407::_ID1985( _ID42237::_ID14413, var_0 );
    level _ID42407::_ID1985( _ID42237::_ID14413, var_1 );
    level _ID42407::_ID1985( _ID42237::_ID14413, var_2 );
    _ID42407::_ID11232();

    if ( self._ID989 & 1 )
        self _meth_805F();

    self _meth_80B7();
}

_ID37009()
{
    _ID42237::_ID14400( "_stealth_spotted" );
    _ID42237::_ID14400( "_stealth_event" );
    _ID42237::_ID14400( "_stealth_enabled" );
    _ID42237::_ID14402( "_stealth_enabled" );
    level._ID1644 = _func_1A5();
    level._ID1644._ID22585 = _func_1A5();
    level._ID1644._ID17437 = _func_1A5();
    level._ID1644._ID17437._ID14446 = [];
    level._ID1644._ID17437._ID17473 = [];
    level._ID1644._ID22585._ID10660 = "hidden";
    level._ID1644._ID22585._ID10641 = [];
    level._ID1644._ID22585._ID10641["hidden"] = [];
    level._ID1644._ID22585._ID10641["spotted"] = [];
    _unknown_04F1();
    level._ID1644._ID22585._ID30 = [];
    level._ID1644._ID22585._ID30["ai_eventDistDeath"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistPain"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistExplosion"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistBullet"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistFootstep"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistFootstepWalk"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistFootstepSprint"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistGunShot"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistGunShotTeam"] = [];
    level._ID1644._ID22585._ID30["ai_eventDistNewEnemy"] = [];
    _unknown_05D3();
    _unknown_044E( "hidden" );
    _unknown_04AF();
    _unknown_04D9();
    _ID42389::_ID36243( 0.5 );
}

_ID37005()
{
    var_0 = [];
    var_0["prone"] = 70;
    var_0["crouch"] = 600;
    var_0["stand"] = 1024;
    var_1 = [];
    var_1["prone"] = 512;
    var_1["crouch"] = 5000;
    var_1["stand"] = 8000;
    _unknown_05F0( var_0, var_1 );
}

_ID37013( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
    {
        level._ID1644._ID22585._ID10641["hidden"]["prone"] = var_0["prone"];
        level._ID1644._ID22585._ID10641["hidden"]["crouch"] = var_0["crouch"];
        level._ID1644._ID22585._ID10641["hidden"]["stand"] = var_0["stand"];
    }

    if ( _func_02F( var_1 ) )
    {
        level._ID1644._ID22585._ID10641["spotted"]["prone"] = var_1["prone"];
        level._ID1644._ID22585._ID10641["spotted"]["crouch"] = var_1["crouch"];
        level._ID1644._ID22585._ID10641["spotted"]["stand"] = var_1["stand"];
    }
}

_ID37006()
{
    var_0["ai_eventDistDeath"] = [];
    var_0["ai_eventDistPain"] = [];
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistBullet"] = [];
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistGunShot"] = [];
    var_0["ai_eventDistGunShotTeam"] = [];
    var_0["ai_eventDistNewEnemy"] = [];
    var_0["ai_eventDistDeath"]["spotted"] = _func_039( "ai_eventDistDeath" );
    var_0["ai_eventDistDeath"]["hidden"] = 512;
    var_0["ai_eventDistPain"]["spotted"] = _func_039( "ai_eventDistPain" );
    var_0["ai_eventDistPain"]["hidden"] = 256;
    var_0["ai_eventDistExplosion"]["spotted"] = 4000;
    var_0["ai_eventDistExplosion"]["hidden"] = 4000;
    var_0["ai_eventDistBullet"]["spotted"] = 96;
    var_0["ai_eventDistBullet"]["hidden"] = 64;
    var_0["ai_eventDistFootstep"]["spotted"] = 350;
    var_0["ai_eventDistFootstep"]["hidden"] = 64;
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 256;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 32;
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    var_0["ai_eventDistGunShot"]["spotted"] = 2048;
    var_0["ai_eventDistGunShot"]["hidden"] = 2048;
    var_0["ai_eventDistGunShotTeam"]["spotted"] = 750;
    var_0["ai_eventDistGunShotTeam"]["hidden"] = 750;
    var_0["ai_eventDistNewEnemy"]["spotted"] = 750;
    var_0["ai_eventDistNewEnemy"]["hidden"] = 750;
    _unknown_085F( var_0 );
}

_ID37014( var_0 )
{
    var_1 = var_0;

    for ( var_6 = _func_1DA( var_1 ); _func_02F( var_6 ); var_6 = _func_1BF( var_1, var_6 ) )
    {
        var_2 = var_1[var_6];
        var_3 = var_2;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            level._ID1644._ID22585._ID30[var_6][var_5] = var_4;
        }

        var_clear_3
    }

    var_clear_5
}
