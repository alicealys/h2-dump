// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID14920()
{
    self endon( "death" );
    self notify( "stop_friendly_bubbles" );
    self endon( "stop_friendly_bubbles" );
    thread _unknown_003B();
    var_0 = "TAG_EYE";
    self._ID31566 = _ID42237::_ID35164();
    self._ID31566 _meth_8053( self, "tag_eye", ( 5, 0, -6 ), ( -90, 0, 0 ) );

    for (;;)
    {
        wait(3.5 + _func_0B8( 3 ));
        _func_157( _ID42237::_ID16299( "scuba_bubbles_friendly" ), self._ID31566, "tag_origin" );
    }
}

_ID14923()
{
    self notify( "stop_friendly_bubbles" );
    self._ID31566 _meth_80B7();
}

_ID14922()
{
    _ID42237::_ID41098( "death", "stop_friendly_bubbles" );
    self._ID31566 _meth_80B7();
}

_ID14921()
{
    self endon( "death" );
    self waittillmatch( "single anim",  "surfacing"  );
    self notify( "stop_friendly_bubbles" );
}

_ID39444( var_0 )
{
    wait 0.05;

    if ( var_0 == 1 )
    {
        _func_0DB( "hud_showStance", "0" );
        _func_0DB( "compass", "0" );
        _func_0DB( "ammoCounterHide", "1" );
        _func_0DB( "g_friendlyNameDist", 0 );
        _func_0DB( "actionSlotsHide", 1 );
    }
    else
    {
        _func_0DB( "hud_drawhud", "1" );
        _func_0DB( "hud_showStance", "1" );
        _func_0DB( "compass", "1" );
        _func_0DB( "ammoCounterHide", "0" );
        _func_0DB( "g_friendlyNameDist", 15000 );
        _func_0DB( "actionSlotsHide", 0 );
    }
}

_ID27713( var_0 )
{
    if ( _func_02F( var_0 ) && var_0 == 1 )
    {
        self._ID31564 = 1;
        _unknown_0189();
        _unknown_01F1();
    }
    else
    {
        self._ID31564 = 0;
        _unknown_0257();
    }
}

_ID27711()
{
    if ( _func_02F( self._ID31564 ) && self._ID31564 == 1 )
    {
        _unknown_01C4();
        _unknown_025B();
    }
    else
        _unknown_0277();
}

_ID27642()
{
    if ( !_func_145() )
        thread _unknown_01C5();
    else if ( self == level._ID794 )
        thread _unknown_01D4();

    thread _unknown_01EF();
}

_ID27643()
{
    self endon( "death" );
    self notify( "start_scuba_breathe" );
    self endon( "start_scuba_breathe" );
    self endon( "stop_scuba_breathe" );

    for (;;)
    {
        wait 0.05;
        self notify( "scuba_breathe_sound_starting" );
        self _meth_82FF( "scuba_breathe_player", "scuba_breathe_sound_done" );
        self waittill( "scuba_breathe_sound_done" );
    }
}

_ID36528()
{
    self notify( "stop_scuba_breathe" );
    self _meth_8300( "scuba_breathe_player" );
}

_ID27644()
{
    if ( _func_03A( "demo_mode" ) )
        return;

    self endon( "death" );
    self endon( "stop_scuba_breathe" );
    waitframe;
    self._ID27817 = _func_06A( "script_model", self._ID740 + ( 0, 0, 0 ) );
    self._ID27817 _meth_80B8( "tag_origin" );
    self._ID27817._ID65 = self._ID65;
    self._ID27817._ID740 = self _meth_80AF() - ( 0, 0, 10 );
    self._ID27817 _meth_80AD( self, "tag_origin", ( 5, 0, -55 ), ( 0, 0, 0 ), 1 );
    thread _unknown_02D9( self._ID27817 );

    for (;;)
    {
        self waittill( "scuba_breathe_sound_starting" );
        wait 2.1;
        thread _unknown_02F5( self._ID27817 );

        if ( _ID42237::_ID8201() )
            self waittill( "scuba_breathe_sound_starting" );
    }
}

_ID31565( var_0 )
{
    self waittill( "stop_scuba_breathe" );
    _func_159( _ID42237::_ID16299( "scuba_bubbles" ), var_0, "TAG_ORIGIN" );
    var_0 _meth_80AE( self );
    var_0 _meth_80B7();
}

_ID27276( var_0 )
{
    self endon( "stop_scuba_breathe" );
    _func_157( _ID42237::_ID16299( "scuba_bubbles" ), var_0, "TAG_ORIGIN" );
}

_ID27645( var_0, var_1 )
{
    if ( _func_03A( "sg_scuba_mask_off" ) == 1 )
        return;

    if ( _func_03A( "demo_mode" ) )
        return;

    var_2 = "halo_overlay_scuba";

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    self._ID19156 = _ID42313::_ID9125( var_2, 1, self );
    self._ID19156._ID408 = 0;
    self._ID19156._ID983 = -99;
    self._ID31567 = _func_06A( "script_model", level._ID794._ID740 );
    self._ID31567 _meth_80B8( "tag_origin" );
    self._ID31567._ID740 = self._ID740;
    self._ID31567 _meth_80AD( self, "tag_origin", ( 10, 0, 0 ), ( 0, 180, 0 ), 1 );
    _func_157( _ID42237::_ID16299( "scuba_mask_distortion" ), self._ID31567, "tag_origin" );
    self._ID19157 = _func_06A( "script_model", level._ID794 _meth_80AF() );
    self._ID19157 _meth_80B8( "shpg_udt_headgear_player_a" );
    self._ID19157 _meth_80AD( self, "tag_origin", ( -0.3, 0, -1.2 ), ( 0, 90, -4 ), 1 );

    if ( _func_03A( "demo_mode" ) )
    {
        self._ID19157 _meth_80B7();
        _func_158( _ID42237::_ID16299( "scuba_mask_distortion" ), self._ID31567, "tag_origin" );
    }
}

_ID27646( var_0 )
{
    if ( _func_03A( "sg_scuba_mask_off" ) == 1 )
        return;

    if ( _func_03A( "demo_mode" ) )
        return;

    if ( _func_02F( self._ID19156 ) )
    {
        self._ID19156 _ID42313::_ID10476();
        self._ID31567 _meth_80AE( self );
        self._ID31567 _meth_80B7();
        self._ID19157 _meth_80AE( self );
        self._ID19157 _meth_80B7();
    }
}

_ID27710()
{
    _unknown_04C7();
    self._ID20511 = 0;
    thread _unknown_04DC();
}

_ID36529()
{
    self notify( "stop_freeswim_breathe" );
    self._ID20511 = 0;
}

_ID32268()
{
    if ( !_func_02F( level._ID27270 ) )
        level._ID27270 = 6.66667;

    if ( !_func_02F( level._ID27269 ) )
        level._ID27269 = 50.0;
}

_ID26133( var_0, var_1 )
{
    level._ID27270 = 100 / var_0;
    level._ID27269 = 100 / var_1;
}

_ID17891()
{
    self endon( "death" );
    self notify( "handle_player_breath" );
    self endon( "handle_player_breath" );

    if ( !_func_02F( self._ID27268 ) )
        self._ID27268 = 100;

    var_0 = _func_03D();
    var_1 = var_0;
    self._ID27272 = 0;

    if ( !_func_02F( self._ID24823 ) || !self._ID24823 )
        thread _unknown_0582();

    for (;;)
    {
        var_0 = _func_03D();
        var_2 = var_0 - var_1 / 1000.0;

        if ( _func_02F( self._ID39431 ) && self._ID39431 )
            self._ID27268 = _func_0E6( self._ID27268 - level._ID27270 * var_2, 0 );
        else
            self._ID27268 = _func_0C4( self._ID27268 + level._ID27269 * var_2, 100 );

        if ( self._ID27268 <= 0 )
            thread _unknown_0636();
        else
            self notify( "stop_drowning" );

        var_1 = var_0;

        if ( self._ID27268 == 100 )
            self._ID27272 = self._ID27272 + 0.05;
        else
            self._ID27272 = 0;

        if ( self._ID27272 >= 1.0 )
            break;

        wait 0.05;
    }
}

_ID27273()
{
    self endon( "death" );
    self notify( "player_breath_hud" );
    self endon( "player_breath_hud" );
    var_0 = 0.5;
    var_1 = 100;

    if ( !_func_02F( level._ID27271 ) )
    {
        level._ID27271 = level._ID794 _ID42313::_ID9203( level._ID794, 60, "white", "black", 100, 10 );
        level._ID27271 _ID42313::_ID32753( "RIGHT", undefined, -65, var_1 + 12 );
        level._ID27271 _ID42313::_ID39674( 1 );
        level._ID27271._ID55 = var_0;
        level._ID27271._ID4830._ID55 = var_0;
        level._ID27271._ID4830._ID196 = ( 0, 0, 1 );
        level._ID27271._ID37557 = level._ID794 _ID42313::_ID9200( "default", 1.2 );
        level._ID27271._ID37557 _ID42313::_ID32753( "RIGHT", undefined, -60, var_1 );
        level._ID27271._ID37557 _meth_80D1( "O2" );
        level._ID27271._ID37557._ID55 = var_0;
    }

    wait 0.05;

    while ( self._ID27268 <= 100 )
    {
        var_2 = self._ID27268 / 100;
        level._ID27271 _ID42313::_ID39674( var_2 );

        if ( self._ID27272 >= 1.0 )
            break;

        level._ID27271._ID55 = var_0;
        level._ID27271._ID4830._ID55 = var_0;
        level._ID27271._ID37557._ID55 = var_0;
        wait 0.05;
    }

    if ( _func_02F( level._ID27271 ) )
    {
        var_3 = _func_03D();
        var_4 = 500.0;

        while ( _func_03D() - var_3 < var_4 && _func_02F( level._ID27271 ) )
        {
            var_5 = 1.0 - _func_0C2( _func_03D() - var_3 ) / var_4;
            level._ID27271._ID55 = var_0 * var_5;
            level._ID27271._ID4830._ID55 = var_0 * var_5;
            level._ID27271._ID37557._ID55 = var_0 * var_5;
            wait 0.05;
        }

        level._ID27271._ID37557 _ID42313::_ID10476();
        level._ID27271 _ID42313::_ID10476();
        level._ID27273 = undefined;
    }
}

_ID27369()
{
    self endon( "death" );
    self endon( "stop_freeswim_breathe" );
    self endon( "stop_drowning" );

    if ( self._ID20511 )
        return;

    self._ID20511 = 1;
    var_0 = _ID42237::_ID35164();
    var_0 _meth_80AD( level._ID794, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ), 1 );
    _ID42475::_ID34575( "player_drowning_start" );

    if ( self == level._ID794 && _func_02F( self._ID12193 ) )
    {
        thread _ID42408::_ID18704( self._ID12193, undefined, undefined, undefined, undefined, 20, undefined, undefined );
        self._ID12193 = undefined;
    }

    thread _unknown_0861( var_0 );

    for (;;)
    {
        if ( _func_02F( self._ID12191 ) )
            self _meth_8057( self._ID12191, self._ID740 );
        else
            self _meth_8057( 25, self._ID740 );

        _func_157( _ID42237::_ID16299( "water_vm_gasping_breath" ), var_0, "tag_origin" );
        wait 0.5;
    }
}

_ID12589( var_0 )
{
    self endon( "death" );
    self endon( "stop_freeswim_breathe" );
    self waittill( "stop_drowning" );
    var_0 _meth_80B7();
    self._ID20511 = 0;
}

_ID26265()
{
    level._ID39453 = _func_1A2( "trigger_underwater", "targetname" );
}
