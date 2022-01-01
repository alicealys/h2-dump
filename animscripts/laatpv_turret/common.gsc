// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19210( var_0, var_1 )
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( var_1 );
    self._ID24817 = 1;
    self._ID24898 = 1;
    self._ID7._ID24414 = "stop";
    self._ID7._ID35357 = var_1;
    self._ID7._ID39999 = var_0;
    self._ID511 = 1;

    if ( isdefined( self._ID23664 ) )
        self._ID511 = self._ID23664;

    self._ID20721 = 0;
    self setturretanim( self._ID28561 );
    self setanimknobrestart( self._ID28561, 1, 0.2, 1 );

    if ( isdefined( self._ID1302 ) )
        animscripts\shared::_ID26732( self._ID1302, "none" );

    self._ID16482 = ::_ID39246;
    self notify( "guy_man_turret_stop" );
    var_0 notify( "stop_burst_fire_unmanned" );
    var_0._ID39365 = "start";
    var_0._ID2446 = self;
    var_0._ID14320 = 0;
    var_0 setmode( "sentry" );
    var_0 setsentryowner( self );
    var_0 setdefaultdroppitch( 0 );
    var_0 setturretcanaidetach( 0 );
    _ID17527();
    level thread _ID17818( self, var_0 );
    level thread _ID17817( self, var_0 );
    var_0 thread _ID39327( self );
    var_0._ID11393 = 0;
    thread _ID14295( var_0 );
    wait 0.05;

    if ( isalive( self ) )
        thread _ID17530( var_0 );
}

_ID17527()
{
    self._ID52 = 0;
    _ID42407::_ID32628( 1 );
    self._ID25483 = self._ID486;
    self._ID486 = 200;
}

_ID17528()
{
    self._ID52 = 1;
    _ID42407::_ID32628( 0 );
    self._ID486 = self._ID25483;
}

_ID17818( var_0, var_1 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_0 endon( "dismount" );
    var_0 endon( "jumping_out" );

    for (;;)
    {
        var_2 = "flashbang";
        var_3 = var_0 _ID42237::_ID41075( "damage", var_2 );
        var_4 = _ID42237::_ID28945( var_0._ID39355 );

        if ( var_3 == var_2 )
        {
            var_4 = var_0._ID39349;
            var_0 animscripts\face::_ID30759( "flashbang" );
        }

        var_0 _ID11302( var_1, var_4, 0 );
        var_1 notify( "pain_done" );
    }
}

_ID39301()
{
    _ID39238();
    self waittill( "pain_done" );
    _ID39237();
}

_ID17817( var_0, var_1 )
{
    var_0 endon( "dismount" );
    var_1 endon( "turret_cleanup" );
    var_0._ID9813 = var_0._ID39340;
    var_0._ID24911 = 1;
    var_0._ID24924 = 1;
    var_0 waittill( "death" );
    level thread _ID39245( var_0, var_1 );
}

_ID39246()
{
    var_0 = self._ID29969._ID23512[0];

    if ( isalive( self ) )
    {
        self._ID24817 = undefined;
        self._ID24898 = undefined;
        self._ID511 = 0;
        self._ID7._ID35357 = "none";
        self._ID7._ID39999 = undefined;
        self._ID9813 = undefined;
        _ID17528();
        self._ID20721 = undefined;
        self._ID39363 = undefined;
        self._ID39355 = undefined;
        self._ID16482 = undefined;
        self stopuseturret();

        if ( isdefined( self._ID1302 ) )
            animscripts\shared::_ID26732( self._ID1302, "right" );
    }

    level thread _ID39245( self, var_0 );
}

_ID39245( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        return;

    var_1 notify( "kill_fireController" );
    var_1 notify( "turret_cleanup" );
    var_1 setmode( "manual" );
    var_1 cleartargetentity();
    var_1 setdefaultdroppitch( var_1._ID10110 );

    if ( isdefined( var_0 ) )
    {
        var_0 clearanim( var_0._ID2043, 0 );
        var_0 clearanim( var_0._ID2037, 0 );
        var_0 clearanim( var_0._ID39364, 0 );
    }

    var_1._ID14299 = undefined;
    var_1._ID8158 = undefined;
    var_1._ID14294 = undefined;
    var_1._ID39365 = "free";
    var_1._ID2446 = undefined;
    var_1._ID14320 = undefined;

    if ( isdefined( var_1._ID35372 ) )
        level [[ var_1._ID35372 ]]( var_0, var_1 );
}

_ID39327( var_0 )
{
    self endon( "turret_cleanup" );
    self endon( "death" );
    var_0 endon( "death" );
    var_0 endon( "detach" );
    var_1 = "tag_aim";
    var_2 = self gettagangles( var_1 );
    _ID39329( "none" );

    for (;;)
    {
        var_3 = self gettagangles( var_1 );
        var_4 = anglestoright( var_2 );
        var_5 = anglestoforward( var_3 );
        var_6 = vectordot( var_4, var_5 );

        if ( var_6 == 0 )
            _ID39329( "none" );
        else if ( var_6 > 0 )
            _ID39329( "right" );
        else
            _ID39329( "left" );

        var_2 = self gettagangles( var_1 );
        wait 0.05;
    }
}

_ID39329( var_0 )
{
    if ( !isdefined( self._ID30205 ) || self._ID30205 != var_0 )
        self._ID30205 = var_0;
}

_ID17530( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    var_0 endon( "turret_cleanup" );
    var_1 = 0.3;
    var_2 = 0.3;

    for (;;)
    {
        var_0 waittill( "new_fireTarget" );
        wait 0.05;

        if ( !isdefined( var_0._ID14317 ) || self._ID20721 )
            continue;

        var_3 = undefined;

        if ( !var_0 _ID39239( var_0._ID14317, var_0._ID8158 ) )
        {
            if ( var_0._ID30205 == "right" )
                var_3 = self._ID2042;
            else if ( var_0._ID30205 == "left" )
                var_3 = self._ID2041;

            if ( isdefined( var_3 ) )
            {
                self setanimlimited( self._ID2037, 1, var_1, 1 );
                self setanimknoblimited( var_3, 1, 0, 1 );

                while ( isdefined( var_0._ID14317 ) && !var_0 _ID39239( var_0._ID14317, var_0._ID8158 ) )
                {
                    if ( self._ID20721 )
                        break;

                    wait 0.05;
                }

                self clearanim( self._ID2037, var_2 );
            }
        }
    }
}

_ID40215( var_0, var_1, var_2, var_3 )
{
    var_0._ID39936[self._ID40222] = 0;
    _ID42412::_ID17545();
    _ID17563( var_0, var_1, var_2, var_3 );
}

_ID17564( var_0, var_1, var_2, var_3 )
{
    _ID17563( var_0, var_1, var_2, var_3 );
}
#using_animtree("generic_human");

_ID17563( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_2 endon( "death" );
    self stopanimscripted();
    self notify( "newanim" );
    self._ID11803 = undefined;
    self._ID24817 = 1;
    var_3 = %latvee_passenger_2_turret;

    if ( !isdefined( var_3 ) )
        var_3 = self._ID26294;

    var_4 = _ID42412::_ID3052( var_0, var_1 );
    var_5 = var_0 gettagorigin( var_4._ID34225 );
    var_6 = var_0 gettagangles( var_4._ID34225 );
    var_2 setdefaultdroppitch( 0 );
    var_2 thread _ID39240( var_2._ID26298 );
    self animscripted( "passenger2turret", var_5, var_6, var_3 );
    wait(getanimlength( var_3 ));
    self stopanimscripted();
    var_2 _ID39237();
    self useturret( var_2 );
}

_ID39240( var_0 )
{
    if ( isdefined( self._ID19324 ) )
    {
        self clearanim( self._ID19324, 0 );
        self._ID19324 = undefined;
    }

    self setflaggedanimknobrestart( "minigun_turret", var_0, 1, 0, 1 );
    self waittillmatch( "minigun_turret",  "end"  );
    self clearanim( var_0, 0 );
}

_ID39241( var_0 )
{
    self setanimknobrestart( var_0, 1, 0, 0 );
    self._ID19324 = var_0;
}

_ID14295( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    var_0 endon( "kill_fireController" );
    var_0 thread _ID39321( self );
    wait 0.05;
    self thread [[ var_0._ID14294 ]]( var_0 );
    var_1 = undefined;

    for (;;)
    {
        var_1 = var_0._ID14317;

        while ( var_0 _ID37279( var_1 ) )
        {
            if ( var_0 _ID39239( var_1, var_0._ID8158 ) )
                break;

            wait 0.05;
        }

        if ( var_0 _ID37279( var_1 ) && !self._ID507 )
            var_0._ID11393 = 1;

        while ( var_0 _ID37279( var_1 ) && !self._ID507 && !self._ID20721 )
            wait 0.05;

        if ( var_0._ID11393 || self._ID507 )
            var_0._ID11393 = 0;

        wait 0.05;
    }
}

_ID37279( var_0 )
{
    if ( isdefined( self._ID11580 ) )
        return 0;

    if ( !isdefined( self._ID14317 ) )
        return 0;

    if ( !_ID39322( var_0 ) )
        return 0;

    if ( var_0 != self._ID14317 )
        return 0;

    return 1;
}

_ID39321( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    var_0 endon( "dismount" );
    self endon( "kill_fireController" );
    self._ID14317 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    for (;;)
    {
        var_1 = self getturrettarget( 0 );
        var_3 = 0;

        if ( _ID39322( var_1 ) || !isdefined( var_1 ) )
        {
            if ( !isdefined( var_1 ) && isdefined( var_2 ) )
                var_3 = 1;
            else if ( isdefined( var_1 ) && !isdefined( var_2 ) )
                var_3 = 1;
            else if ( isdefined( var_1 ) && var_1 != var_2 )
                var_3 = 1;

            if ( var_3 )
            {
                self._ID14317 = var_1;
                var_2 = var_1;
                self notify( "new_fireTarget" );
            }
        }

        wait 0.05;
    }
}

_ID39322( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( isdefined( var_0._ID511 ) && var_0._ID511 )
        return 0;

    if ( issubstr( var_0._ID172, "actor" ) && !isalive( var_0 ) )
        return 0;

    return 1;
}

_ID32371( var_0, var_1, var_2, var_3 )
{
    self endon( "turret_cleanup" );
    var_4 = self getmode();

    if ( var_4 != "manual" )
        self setmode( "manual" );

    if ( !isdefined( var_1 ) && !isdefined( var_2 ) )
    {
        var_1 = 1.5;
        var_2 = 3;
    }

    _ID9524();
    self settargetentity( var_0 );
    self waittill( "turret_on_target" );

    if ( isdefined( var_3 ) )
        self waittill( var_3 );
    else if ( isdefined( var_2 ) )
        wait(randomfloatrange( var_1, var_2 ));
    else
        wait(var_1);

    _ID9524();
    self cleartargetentity( var_0 );

    if ( isdefined( var_4 ) )
        self setmode( var_4 );
}

_ID11644( var_0 )
{
    self notify( "doshoot_starting" );
    self setanimlimited( self._ID2043, 1, 0.1 );
    self setanimknoblimited( self._ID2039, 1, 0.1 );
    var_0._ID39365 = "fire";
    var_0 thread _ID14240( self );
}

_ID14240( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    var_0 endon( "dismount" );
    self endon( "kill_fireController" );
    self endon( "stopfiring" );
    self endon( "custom_anim" );

    for (;;)
    {
        self shootturret();
        wait(self._ID14299);
    }
}

_ID11236( var_0 )
{
    var_0._ID39365 = "aim";
    var_0 notify( "stopfiring" );
    thread _ID11237( var_0 );
}

_ID11237( var_0 )
{
    self notify( "doaim_idle_think" );
    self endon( "doaim_idle_think" );
    self endon( "custom_anim" );
    self endon( "doshoot_starting" );
    self endon( "death" );
    var_0 endon( "death" );
    var_1 = var_0._ID26175;
    var_2 = -1;

    for (;;)
    {
        if ( var_1 vehicle_getspeed() < 1 && var_2 )
        {
            self setanimlimited( self._ID2043, 1, 0.1 );
            self setanimknoblimited( self._ID2040, 1, 0.1 );
            var_2 = 0;
        }
        else if ( var_1 vehicle_getspeed() >= 1 && !var_2 )
        {
            self setanimlimited( self._ID2043, 1, 0.1 );
            self setanimknoblimited( self._ID2038, 1, 0.1 );
            var_2 = 1;
        }

        wait 0.05;
    }
}

_ID39266( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    self endon( "jumping_out" );
    var_3 = self._ID39363[var_1];
    _ID9524();
    var_4 = var_0 _ID29462();
    _ID11302( var_0, var_3, var_2 );

    if ( var_4 )
        var_0 _ID29463();
}

_ID29462()
{
    var_0 = 0;

    if ( !isdefined( self._ID11049 ) || !self._ID11049 )
    {
        var_0 = 1;
        self._ID11049 = 1;
    }

    return var_0;
}

_ID29463()
{
    self._ID11049 = 0;
}

_ID11641( var_0 )
{
    if ( isdefined( var_0._ID11049 ) )
        return;

    self endon( "death" );
    var_0 endon( "death" );
    self endon( "dismount" );
    self endon( "jumping_out" );

    if ( animscripts\battlechatter::_ID4954() )
    {
        if ( anim._ID7336 )
            thread _ID42407::_ID9527( "inform_reloading" );

        jump loc_A53
    }

    _ID11302( var_0, self._ID39357, 1 );
}

_ID11302( var_0, var_1, var_2 )
{
    self notify( "do_custom_anim" );
    self endon( "do_custom_anim" );
    self._ID20721 = 1;
    self._ID9556 = var_1;
    var_0._ID39365 = "customanim";
    var_0 turretfiredisable();

    if ( var_0 getbarrelspinrate() > 0 )
        var_0 stopbarrelspin();

    var_0 notify( "kill_fireController" );
    self notify( "custom_anim" );

    if ( isdefined( var_2 ) && var_2 )
        var_0 _ID39238();

    self setanimknoblimitedrestart( self._ID39364, 1, 0.2 );
    self setflaggedanimknobrestart( "special_anim", var_1, 1, 0, 1 );

    for (;;)
    {
        self waittill( "special_anim",  var_3  );

        if ( var_3 == "end" )
            break;
    }

    self clearanim( self._ID39364, 0.2 );
    self setanimlimited( self._ID28561, 1 );
    self setanimlimited( self._ID2043, 1 );

    if ( isdefined( var_2 ) && var_2 )
        var_0 _ID39237();

    self._ID9556 = undefined;
    self._ID20721 = 0;
    var_0 turretfireenable();
    thread _ID14295( var_0 );
}

_ID9524()
{
    self endon( "death" );

    if ( !isdefined( self._ID20721 ) )
        return;

    while ( self._ID20721 )
        wait 0.05;
}

_ID39238( var_0 )
{
    if ( self getmode() == "sentry" )
        return;

    if ( !isdefined( var_0 ) )
    {
        var_1 = self gettagangles( "tag_flash" );
        var_0 = ( 0, var_1[1], var_1[2] );
    }

    self._ID25564 = self getmode();
    self setmode( "manual" );
    var_2 = anglestoforward( var_0 );
    var_3 = var_2 * 96;
    var_4 = self gettagorigin( "tag_aim" ) + var_3;
    self._ID37508 = spawn( "script_origin", var_4 );
    self._ID37508._ID511 = 1;
    self._ID37508 linkto( self._ID26175 );
    self cleartargetentity();
    self settargetentity( self._ID37508 );
    self waittill( "turret_on_target" );
}

_ID39237()
{
    self cleartargetentity();

    if ( isdefined( self._ID37508 ) )
    {
        self._ID37508 unlink();
        self._ID37508 delete();
    }

    if ( isdefined( self._ID25564 ) )
    {
        self setmode( self._ID25564 );
        self._ID25564 = undefined;
    }
}

_ID39239( var_0, var_1 )
{
    var_2 = _ID39265( var_0 );

    if ( var_2 <= var_1 )
        return 1;

    return 0;
}

_ID39265( var_0 )
{
    var_1 = vectortoyaw( var_0._ID740 - self._ID740 );
    var_2 = self gettagangles( "tag_flash" )[1];
    var_3 = animscripts\utility::_ID1735( var_2 - var_1 );
    return var_3;
}

_ID22165( var_0 )
{
    var_1 = _ID42407::_ID9122( ::_ID5277, 20, 0 );
    var_1._ID1210 = var_0;
}

_ID5277( var_0, var_1, var_2 )
{
    var_3 = var_1 * ( 1 - var_0 ) + var_2 * var_0;
    self setdefaultdroppitch( var_3 );
}
