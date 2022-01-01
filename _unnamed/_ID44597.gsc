// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44237()
{
    _ID3197();
}
#using_animtree("generic_human");

_ID3197()
{
    level._ID30895["generic"]["wounded_idle"][0] = %wounded_carry_closet_idle_wounded;
    level._ID30895["generic"]["pickup_wounded"] = %wounded_carry_pickup_closet_wounded_straight;
    level._ID30895["generic"]["pickup_carrier"] = %wounded_carry_pickup_closet_carrier_straight;
    level._ID30895["generic"]["wounded_walk_loop"][0] = %wounded_carry_fastwalk_wounded_relative;
    level._ID30895["generic"]["carrier_walk_loop"] = %wounded_carry_fastwalk_carrier;
    level._ID30895["generic"]["putdown_wounded"] = %wounded_carry_putdown_closet_wounded;
    level._ID30895["generic"]["putdown_carrier"] = %wounded_carry_putdown_closet_carrier;
}

_ID52372( var_0 )
{
    animscripts\shared::_ID12142();
    self._ID43688 = var_0;
    self._ID43688 thread _ID42259::_ID3025( self, "wounded_idle", "stop_wounded_idle" );
    self._ID49 = 1;
}

_ID48009( var_0, var_1 )
{
    level notify( "end_carry_ai_logic" );
    setsaveddvar( "ai_friendlyFireBlockDuration", 2000 );
    var_0._ID52 = 1;
    var_0._ID11002 = 0;
    var_0._ID507 = 0;
    var_0._ID465 = 1;
    var_0 _ID42407::_ID32628( 0 );
    var_0._ID11579 = undefined;
    var_0._ID24727 = undefined;
    var_0._ID10998 = undefined;
    var_0._ID11025 = undefined;
    var_0._ID706 = 0;
    var_0 pushplayer( 0 );
    var_1 notify( "stop_carried_loop" );
    var_1 unlink();
    var_0 _ID42407::_ID7870();
    var_1._ID43688 notify( "stop_wounded_idle" );
    var_1._ID43688 = undefined;
}

_ID44201( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    _ID47172( var_0, var_1 );
    _ID45846( var_0, var_1 );
}

_ID44032( var_0, var_1 )
{
    var_0 forceteleport( self._ID740, self._ID65 );
    _ID45846( var_0, var_1 );
}

_ID47172( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    self endon( "end_carry_ai" );
    var_0._ID43688 _ID42259::_ID3027( self, "pickup_carrier" );
    var_0 notify( "stop_wounded_idle" );
    var_0._ID43688 notify( "stop_wounded_idle" );
    var_0._ID49 = 1;
    var_0._ID43688 thread _ID42259::_ID3020( var_0, "pickup_wounded" );
    var_0._ID43688 _ID42259::_ID3020( self, "pickup_carrier" );
    self._ID11579 = 1;
    var_0 invisiblenotsolid();
}

_ID52142( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_0 linkto( self, "tag_origin" );
    wait 0.05;
    var_0 thread _ID42259::_ID3025( var_0, "wounded_walk_loop", "stop_carried_loop" );
}

_ID45846( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    self endon( "end_carry_ai" );
    var_0._ID50669 = 1;
    thread _ID42407::_ID32328( "carrier_walk_loop", 1 );
    var_0 notify( "stop_wounded_idle" );
    var_0._ID43688 notify( "stop_wounded_idle" );
    wait 0.05;
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );
    self animmode( "none" );
    self._ID52 = 0;
    self._ID11002 = 1;
    self._ID507 = 1;
    self._ID511 = 1;
    self._ID465 = 0;
    _ID42407::_ID32628( 1 );
    self._ID24727 = 1;
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID706 = 1;
    _ID42407::_ID10896();
    self._ID49838 = self._ID452;
    thread _ID52142( var_0 );

    while ( isdefined( var_1._ID1191 ) )
    {
        self._ID513 = 1;
        self._ID10998 = 1;
        var_2 = getent( var_1._ID1191, "targetname" );
        var_2 = _ID42237::_ID37527( isdefined( var_2 ), var_2, getnode( var_1._ID1191, "targetname" ) );

        if ( !isdefined( var_2._ID1191 ) )
        {
            var_1 = var_2;
            break;
        }

        self._ID452 = 64;
        self setgoalpos( var_2._ID740 );
        self waittill( "goal" );
        var_1 = var_2;
    }

    var_1 _ID42259::_ID3027( self, "putdown_carrier" );
    var_0._ID43688 = var_1;
    var_0 notify( "stop_carried_loop" );
    var_1 notify( "stop_wounded_idle" );
    var_0 unlink();
    self._ID513 = 0;
    self._ID10998 = 0;
    self._ID452 = self._ID49838;
    thread _ID42407::_ID7892();
    _ID42475::_ID34575( "start_carrier_putdown" );
    var_0._ID43688 thread _ID42259::_ID3020( self, "putdown_carrier" );
    var_0._ID43688 _ID42259::_ID3020( var_0, "putdown_wounded" );
    setsaveddvar( "ai_friendlyFireBlockDuration", 2000 );
    self._ID52 = 1;
    self._ID11002 = 0;
    self._ID507 = 0;
    self._ID465 = 1;
    _ID42407::_ID32628( 0 );
    self._ID11579 = undefined;
    self._ID24727 = undefined;
    self._ID10998 = undefined;
    self._ID11025 = undefined;
    self._ID706 = 0;
    self pushplayer( 0 );
    var_0 visiblesolid();
    var_0._ID43688 thread _ID42259::_ID3025( var_0, "wounded_idle", "stop_wounded_idle" );
    var_0._ID49 = 1;
    var_0 notify( "stop_putdown" );
    var_0._ID50669 = undefined;
}
