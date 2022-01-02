// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID14920()
{
    self endon( "death" );
    self notify( "stop_friendly_bubbles" );
    self endon( "stop_friendly_bubbles" );
    thread _ID14921();
    var_0 = "TAG_EYE";
    self._ID31566 = _ID42237::_ID35164();
    self._ID31566 linkto( self, "tag_eye", ( 5, 0, -6 ), ( -90, 0, 0 ) );

    for (;;)
    {
        wait(3.5 + randomfloat( 3 ));
        playfxontag( _ID42237::_ID16299( "scuba_bubbles_friendly" ), self._ID31566, "tag_origin" );
    }
}

_ID14923()
{
    self notify( "stop_friendly_bubbles" );
    self._ID31566 delete();
}

_ID14922()
{
    _ID42237::_ID41098( "death", "stop_friendly_bubbles" );
    self._ID31566 delete();
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
        setsaveddvar( "hud_showStance", "0" );
        setsaveddvar( "compass", "0" );
        setsaveddvar( "ammoCounterHide", "1" );
        setsaveddvar( "g_friendlyNameDist", 0 );
        setsaveddvar( "actionSlotsHide", 1 );
    }
    else
    {
        setsaveddvar( "hud_drawhud", "1" );
        setsaveddvar( "hud_showStance", "1" );
        setsaveddvar( "compass", "1" );
        setsaveddvar( "ammoCounterHide", "0" );
        setsaveddvar( "g_friendlyNameDist", 15000 );
        setsaveddvar( "actionSlotsHide", 0 );
    }
}

_ID27713( var_0 )
{
    if ( isdefined( var_0 ) && var_0 == 1 )
    {
        self._ID31564 = 1;
        _ID27642();
        _ID27645();
    }
    else
    {
        self._ID31564 = 0;
        _ID27710();
    }
}

_ID27711()
{
    if ( isdefined( self._ID31564 ) && self._ID31564 == 1 )
    {
        _ID36528();
        _ID27646();
    }
    else
        _ID36529();
}

_ID27642()
{
    if ( !_func_145() )
        thread _ID27643();
    else if ( self == level.player )
        thread _ID27643();

    thread _ID27644();
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
        self playlocalsound( "scuba_breathe_player", "scuba_breathe_sound_done" );
        self waittill( "scuba_breathe_sound_done" );
    }
}

_ID36528()
{
    self notify( "stop_scuba_breathe" );
    self stoplocalsound( "scuba_breathe_player" );
}

_ID27644()
{
    if ( getdvarint( "demo_mode" ) )
        return;

    self endon( "death" );
    self endon( "stop_scuba_breathe" );
    waitframe;
    self._ID27817 = spawn( "script_model", self.origin + ( 0, 0, 0 ) );
    self._ID27817 setmodel( "tag_origin" );
    self._ID27817.angles = self.angles;
    self._ID27817.origin = self geteye() - ( 0, 0, 10 );
    self._ID27817 linktoplayerview( self, "tag_origin", ( 5, 0, -55 ), ( 0, 0, 0 ), 1 );
    thread _ID31565( self._ID27817 );

    for (;;)
    {
        self waittill( "scuba_breathe_sound_starting" );
        wait 2.1;
        thread _ID27276( self._ID27817 );

        if ( _ID42237::_ID8201() )
            self waittill( "scuba_breathe_sound_starting" );
    }
}

_ID31565( var_0 )
{
    self waittill( "stop_scuba_breathe" );
    killfxontag( _ID42237::_ID16299( "scuba_bubbles" ), var_0, "TAG_ORIGIN" );
    var_0 unlinkfromplayerview( self );
    var_0 delete();
}

_ID27276( var_0 )
{
    self endon( "stop_scuba_breathe" );
    playfxontag( _ID42237::_ID16299( "scuba_bubbles" ), var_0, "TAG_ORIGIN" );
}

_ID27645( var_0, var_1 )
{
    if ( getdvarint( "sg_scuba_mask_off" ) == 1 )
        return;

    if ( getdvarint( "demo_mode" ) )
        return;

    var_2 = "halo_overlay_scuba";

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    self._ID19156 = _ID42313::_ID9125( var_2, 1, self );
    self._ID19156.foreground = 0;
    self._ID19156.sort = -99;
    self._ID31567 = spawn( "script_model", level.player.origin );
    self._ID31567 setmodel( "tag_origin" );
    self._ID31567.origin = self.origin;
    self._ID31567 linktoplayerview( self, "tag_origin", ( 10, 0, 0 ), ( 0, 180, 0 ), 1 );
    playfxontag( _ID42237::_ID16299( "scuba_mask_distortion" ), self._ID31567, "tag_origin" );
    self._ID19157 = spawn( "script_model", level.player geteye() );
    self._ID19157 setmodel( "shpg_udt_headgear_player_a" );
    self._ID19157 linktoplayerview( self, "tag_origin", ( -0.3, 0, -1.2 ), ( 0, 90, -4 ), 1 );

    if ( getdvarint( "demo_mode" ) )
    {
        self._ID19157 delete();
        stopfxontag( _ID42237::_ID16299( "scuba_mask_distortion" ), self._ID31567, "tag_origin" );
    }
}

_ID27646( var_0 )
{
    if ( getdvarint( "sg_scuba_mask_off" ) == 1 )
        return;

    if ( getdvarint( "demo_mode" ) )
        return;

    if ( isdefined( self._ID19156 ) )
    {
        self._ID19156 _ID42313::_ID10476();
        self._ID31567 unlinkfromplayerview( self );
        self._ID31567 delete();
        self._ID19157 unlinkfromplayerview( self );
        self._ID19157 delete();
    }
}

_ID27710()
{
    _ID32268();
    self._ID20511 = 0;
    thread _ID17891();
}

_ID36529()
{
    self notify( "stop_freeswim_breathe" );
    self._ID20511 = 0;
}

_ID32268()
{
    if ( !isdefined( level._ID27270 ) )
        level._ID27270 = 6.66667;

    if ( !isdefined( level._ID27269 ) )
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

    if ( !isdefined( self._ID27268 ) )
        self._ID27268 = 100;

    var_0 = gettime();
    var_1 = var_0;
    self._ID27272 = 0;

    if ( !isdefined( self._ID24823 ) || !self._ID24823 )
        thread _ID27273();

    for (;;)
    {
        var_0 = gettime();
        var_2 = ( var_0 - var_1 ) / 1000.0;

        if ( isdefined( self._ID39431 ) && self._ID39431 )
            self._ID27268 = max( self._ID27268 - level._ID27270 * var_2, 0 );
        else
            self._ID27268 = min( self._ID27268 + level._ID27269 * var_2, 100 );

        if ( self._ID27268 <= 0 )
            thread _ID27369();
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

    if ( !isdefined( level._ID27271 ) )
    {
        level._ID27271 = level.player _ID42313::_ID9203( level.player, 60, "white", "black", 100, 10 );
        level._ID27271 _ID42313::_ID32753( "RIGHT", undefined, -65, var_1 + 12 );
        level._ID27271 _ID42313::_ID39674( 1 );
        level._ID27271.alpha = var_0;
        level._ID27271._ID4830.alpha = var_0;
        level._ID27271._ID4830.color = ( 0, 0, 1 );
        level._ID27271._ID37557 = level.player _ID42313::_ID9200( "default", 1.2 );
        level._ID27271._ID37557 _ID42313::_ID32753( "RIGHT", undefined, -60, var_1 );
        level._ID27271._ID37557 settext( "O2" );
        level._ID27271._ID37557.alpha = var_0;
    }

    wait 0.05;

    while ( self._ID27268 <= 100 )
    {
        var_2 = self._ID27268 / 100;
        level._ID27271 _ID42313::_ID39674( var_2 );

        if ( self._ID27272 >= 1.0 )
            break;

        level._ID27271.alpha = var_0;
        level._ID27271._ID4830.alpha = var_0;
        level._ID27271._ID37557.alpha = var_0;
        wait 0.05;
    }

    if ( isdefined( level._ID27271 ) )
    {
        var_3 = gettime();
        var_4 = 500.0;

        while ( gettime() - var_3 < var_4 && isdefined( level._ID27271 ) )
        {
            var_5 = 1.0 - float( gettime() - var_3 ) / var_4;
            level._ID27271.alpha = var_0 * var_5;
            level._ID27271._ID4830.alpha = var_0 * var_5;
            level._ID27271._ID37557.alpha = var_0 * var_5;
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
    var_0 linktoplayerview( level.player, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ), 1 );
    _ID42475::_ID34575( "player_drowning_start" );

    if ( self == level.player && isdefined( self._ID12193 ) )
    {
        thread _ID42408::_ID18704( self._ID12193, undefined, undefined, undefined, undefined, 20, undefined, undefined );
        self._ID12193 = undefined;
    }

    thread _ID12589( var_0 );

    for (;;)
    {
        if ( isdefined( self._ID12191 ) )
            self dodamage( self._ID12191, self.origin );
        else
            self dodamage( 25, self.origin );

        playfxontag( _ID42237::_ID16299( "water_vm_gasping_breath" ), var_0, "tag_origin" );
        wait 0.5;
    }
}

_ID12589( var_0 )
{
    self endon( "death" );
    self endon( "stop_freeswim_breathe" );
    self waittill( "stop_drowning" );
    var_0 delete();
    self._ID20511 = 0;
}

_ID26265()
{
    level._ID39453 = getentarray( "trigger_underwater", "targetname" );
}
