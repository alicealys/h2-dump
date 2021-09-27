// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "weapon_c4";

    if ( !_func_02F( var_2 ) )
        var_2 = "weapon_c4_obj";

    if ( !_func_02F( var_0 ) )
        level._ID6511 = "c4";
    else
        level._ID6511 = var_0;

    _func_14C( var_1 );
    _func_14C( var_2 );
    _func_14E( level._ID6511 );
    _func_150( &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES" );
    _func_150( &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM" );

    if ( _func_02F( level._ID43419 ) )
        level._ID1426["c4_explosion"] = level._ID43419;
    else
        level._ID1426["c4_explosion"] = _func_155( "fx/explosions/c4exp_default" );
}

_ID53929( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14 )
{
    var_15 = undefined;

    if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 0, 0 );

    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !_func_02F( var_4 ) )
        var_4 = "weapon_c4";

    if ( !_func_02F( var_5 ) )
        var_5 = "weapon_c4_obj";

    if ( _func_02F( var_8 ) && !_func_02F( var_9 ) )
        var_9 = 60;

    if ( _func_02F( var_0 ) )
        var_15 = self _meth_818C( var_0 );
    else if ( _func_02F( var_3 ) )
        var_15 = var_3;
    else
    {

    }

    var_16 = _func_06A( "script_model", var_15 + var_1 );
    var_16 _meth_80B8( var_5 );

    if ( _func_02F( var_0 ) )
        var_16 _meth_8053( self, var_0, var_1, var_2 );
    else if ( _func_02F( var_11 ) )
        var_16._ID65 = var_11;
    else
        var_16._ID65 = self._ID65;

    var_16._ID1224 = _unknown_0343();

    if ( _func_02F( level._ID48066 ) )
    {
        if ( _func_02F( level._ID50999 ) )
            var_16._ID1224 thread _ID42237::_ID44574( level._ID794, level._ID48066, level._ID50999, "trigger" );
        else
            var_16._ID1224 _meth_80E2( level._ID48066 );
    }
    else
        var_16._ID1224 thread _ID42237::_ID44574( level._ID794, &"SCRIPT_PLATFORM_HINT_PLANTEXPLOSIVES", &"SCRIPT_PLATFORM_HINTSTR_PLANTEXPLOSIVES_KBM", "trigger" );

    if ( _func_02F( var_0 ) )
    {
        var_16._ID1224 _meth_8053( self, var_0, var_1, var_2 );
        var_16._ID1224._ID47568 = 1;
    }
    else
        var_16._ID1224._ID740 = var_16._ID740;

    var_16 thread _unknown_0252( self, var_4, var_3, var_6, var_7, var_8, var_9, var_10, var_12, var_13, var_14 );
    var_16 thread _unknown_024A( self, var_4 );

    if ( !_func_02F( self._ID46579 ) )
        var_16 thread _unknown_0338( self );

    var_16 thread _unknown_036F( self );
    return var_16;
}

_ID27192()
{
    self endon( "death" );
    wait 0.1;
    _func_157( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID53589( var_0, var_1 )
{
    var_0 endon( "clear_c4" );

    if ( !_func_02F( var_0._ID46579 ) )
        var_0 endon( "c4_planted" );

    if ( !_func_02F( var_1 ) )
        var_1 = "weapon_c4";

    var_0 waittill( "c4_anim_plant" );
    self _meth_805A();
    self _meth_80B8( var_1 );
}

_ID52248( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_0 endon( "clear_c4" );

    if ( !_func_02F( var_1 ) )
        var_1 = "weapon_c4";

    if ( !_func_02F( var_0._ID46579 ) )
        var_0 endon( "c4_planted" );

    if ( !_func_02F( var_0._ID49689 ) )
        var_0._ID49689 = 0;

    var_0._ID49689++;
    self._ID1224 _meth_8187();
    var_11 = undefined;

    if ( _func_02F( var_3 ) || _func_02F( var_9 ) )
    {
        level._ID49805 = 0;

        if ( _func_02F( var_5 ) && _func_02F( var_6 ) )
            self._ID1224 thread _unknown_03DB( var_5, var_6 );

        self._ID1224 waittill( "trigger",  var_11  );

        if ( _func_02F( var_9 ) )
            var_3 = level._ID794 [[ var_9 ]]( self, var_8 );

        level notify( "c4_placement_started" );
        var_12 = level._ID794._ID11579;
        level._ID794._ID11579 = 1;

        if ( _func_02F( var_10 ) )
            var_13 = [[ var_10 ]]( var_8 );
        else if ( _func_02F( var_4 ) )
            var_13 = [[ var_4 ]]();
        else
        {
            var_13 = _func_06A( "script_origin", self._ID740 );
            var_13._ID65 = self._ID65;
        }

        var_14 = 0;
        var_15 = level._ID794 _meth_8188();

        if ( var_15 == "crouch" )
            var_14 = 0.25;
        else if ( var_15 == "prone" )
            var_14 = 0.85;

        level._ID794 _meth_8121( 1 );
        level._ID794 _meth_8122( 0 );
        level._ID794 _meth_8123( 0 );
        wait(var_14);
        var_16 = "worldhands";

        if ( _func_02F( var_7 ) )
            var_16 = "worldbody";

        level._ID794._ID49929 = _ID42407::_ID35028( var_16, level._ID794._ID740, level._ID794 _meth_8346() );
        level._ID794._ID49929 _meth_805A();
        level._ID794._ID49929 _meth_801D( var_1, "tag_weapon_left", 1 );
        level._ID794._ID49479 = self;
        var_13 _ID42259::_ID3018( level._ID794._ID49929, var_3, "tag_origin", var_16 );
        waittillframeend;
        var_0 notify( "c4_anim_plant" );
        _func_0DB( "ammoCounterHide", "1" );
        _func_0DB( "hud_showStance", 0 );
        _func_0DB( "actionSlotsHide", "1" );
        var_13 _ID42407::_ID49392( var_3, var_8, 0, 0.25, 1, 0 );
        level._ID794 _meth_8122( 1 );
        level._ID794 _meth_8123( 1 );
        _func_0DB( "ammoCounterHide", "0" );
        _func_0DB( "hud_showStance", 1 );
        _func_0DB( "actionSlotsHide", "0" );
        level._ID794 _meth_8328();
        level._ID49805 = 1;
        level._ID794._ID11579 = var_12;
    }
    else
        self._ID1224 waittill( "trigger",  var_11  );

    level notify( "c4_in_place",  self  );
    self._ID1224 _meth_8055();
    self._ID1224 _unknown_062B();
    self _meth_80A1( "c4_bounce_default" );
    self _meth_80B8( var_1 );
    thread _unknown_0491();
    var_0._ID49689--;

    if ( !_func_02F( var_0._ID46579 ) || !var_0._ID49689 )
        var_11 _ID51815();

    thread _unknown_05AA( var_0, var_11 );
    var_0 notify( "c4_planted",  self  );
}

_ID49585( var_0, var_1 )
{
    while ( !_func_02F( level._ID49805 ) && level._ID49805 )
    {
        if ( _unknown_05B4( level._ID794._ID65[1], var_0, var_1 ) )
            self _meth_80C6();
        else
            self _meth_80C7();

        waittillframeend;
    }
}

_ID52793( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        return 0;

    if ( var_1 < var_2 )
        var_1 += 360;

    if ( var_0 < var_2 )
        var_0 += 360;

    return var_0 > var_1 - var_2 && var_0 < var_1 + var_2;
}

_ID51815( var_0 )
{
    var_0 endon( "clear_c4" );
    self._ID1224 endon( "trigger" );
    var_1 waittill( "c4_planted",  var_1  );
    self._ID1224 _meth_8055();
    self._ID1224 _unknown_06E3();
    self _meth_80B7();
}

_ID44229( var_0, var_1 )
{
    var_0 endon( "clear_c4" );
    var_1 waittill( "detonate" );
    _func_156( level._ID1426["c4_explosion"], self._ID740 );
    var_2 = _func_06A( "script_origin", self._ID740 );

    if ( _func_02F( level._ID51256 ) )
        var_2 _meth_80A1( "detpack_explo_main", "sound_done" );

    self _meth_81E1( self._ID740, 256, 200, 50 );
    _func_192( 0.4, 1, self._ID740, 1000 );

    if ( _func_02F( self ) )
        self _meth_80B7();

    var_1 thread _ID54117();
    var_0 notify( "c4_detonation" );
    var_2 waittill( "sound_done" );
    var_2 _meth_80B7();
}

_ID54117( var_0 )
{
    var_0 endon( "c4_detonation" );
    var_0 waittill( "clear_c4" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID1224._ID526 ) && self._ID1224._ID526 )
        self._ID1224 _unknown_0781();

    if ( _func_02F( self ) )
        self _meth_80B7();

    level._ID794 thread _unknown_0715();
}

_ID48890()
{
    level endon( "c4_in_place" );
    wait 1;
    var_0 = 0;

    if ( level._ID6511 == self _meth_831C() && _func_02F( self._ID25540 ) )
    {
        if ( self._ID25540 == "none" )
        {
            var_0 = 1;
            self _meth_8320( self _meth_8317()[0] );
        }
        else if ( self _meth_831F( self._ID25540 ) && self._ID25540 != level._ID6511 )
            self _meth_8320( self._ID25540 );
        else
            self _meth_8320( self _meth_8317()[0] );
    }

    self._ID25540 = undefined;

    if ( 0 != self _meth_818B( level._ID6511 ) )
        return;

    while ( self _meth_831C() == level._ID6511 )
        waittillframeend;

    self _meth_831A( level._ID6511 );
}

_ID52240()
{
    var_0 = undefined;

    if ( !_func_02F( self._ID25540 ) )
        self._ID25540 = self _meth_831C( 1 );

    var_1 = self _meth_8316();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] != level._ID6511 )
            continue;

        var_0 = var_1[var_2];
    }

    if ( !_func_02F( var_0 ) )
    {
        self _meth_8319( level._ID6511 );

        if ( _func_03A( "sf_use_ignoreammo" ) == 1 )
            _func_0DB( "player_sustainAmmo", 0 );

        self _meth_8301( level._ID6511, 0 );

        if ( _func_03A( "sf_use_ignoreammo" ) == 1 )
            _func_0DB( "player_sustainAmmo", 1 );

        self _meth_8313( 2, "weapon", level._ID6511 );
    }

    var_3 = self _meth_8303( self._ID25540 );
    var_4 = self _meth_8304( self._ID25540 );
    self _meth_831A( self._ID25540 );
    wait 0.05;
    self _meth_8329();
    self _meth_8320( level._ID6511 );
    wait 0.1;
    self _meth_8319( self._ID25540 );
    self _meth_8301( self._ID25540, var_3 );
    self _meth_8302( self._ID25540, var_4 );
}

_ID47248()
{
    var_0 = _func_1A2( "generic_use_trigger", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( _func_02F( var_0[var_1]._ID526 ) && var_0[var_1]._ID526 )
            continue;

        if ( !_func_02F( var_0[var_1]._ID526 ) )
            var_0[var_1] _meth_8070();

        var_0[var_1]._ID526 = 1;
        var_0[var_1]._ID25567 = var_0[var_1]._ID740;
        return var_0[var_1];
    }
}

_ID53088()
{
    if ( _func_02F( self._ID47568 ) )
        self _meth_8055();

    self._ID47568 = undefined;
    self._ID740 = self._ID25567;
    self._ID526 = 0;
}
