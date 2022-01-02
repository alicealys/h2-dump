// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0 )
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "saw" );

    if ( !isdefined( var_0 ) )
        return;

    self._ID7._ID35357 = "saw";

    if ( isdefined( var_0._ID31121 ) )
        var_1 = var_0._ID31121;
    else
        var_1 = _ID42331::_ID6447( "delay" );

    if ( isdefined( var_0._ID31120 ) )
        var_2 = var_0._ID31120 - var_1;
    else
        var_2 = _ID42331::_ID6447( "delay_range" );

    if ( isdefined( var_0._ID31083 ) )
        var_3 = var_0._ID31083;
    else
        var_3 = _ID42331::_ID6447( "burst" );

    if ( isdefined( var_0._ID31082 ) )
        var_4 = var_0._ID31082 - var_3;
    else
        var_4 = _ID42331::_ID6447( "burst_range" );

    var_5 = gettime();
    var_6 = "start";
    animscripts\shared::_ID26732( self.weapon, "none" );
    var_0 show();

    if ( isdefined( var_0._ID2446 ) )
    {
        self._ID7._ID28304 = ::_ID28304;
        self._ID7._ID39999 = var_0;
        var_0 notify( "being_used" );
        thread _ID36620();
    }
    else
        self._ID7._ID28304 = ::_ID28448;

    var_0._ID11393 = 0;
    var_0._ID11302 = 0;
    thread _ID14292( var_0 );
    self setturretanim( self._ID28561 );
    self setanimknobrestart( self._ID28561, 1, 0.2, 1 );
    self setanimknoblimitedrestart( self._ID2040 );
    self setanimknoblimitedrestart( self._ID2039 );
    var_0 setanimknoblimitedrestart( var_0._ID2040 );
    var_0 setanimknoblimitedrestart( var_0._ID2039 );
    var_0 endon( "death" );

    for (;;)
    {
        if ( var_0._ID11302 )
        {
            var_0 waittill( "turretstatechange" );
            continue;
        }

        if ( var_0._ID11393 )
        {
            thread _ID11644( var_0 );
            _ID41214( randomfloatrange( var_3, var_3 + var_4 ), var_0 );
            var_0 notify( "turretstatechange" );

            if ( var_0._ID11393 )
            {
                thread _ID11236( var_0 );
                wait(randomfloatrange( var_1, var_1 + var_2 ));
            }

            continue;
        }

        thread _ID11236( var_0 );
        var_0 waittill( "turretstatechange" );
    }
}

_ID41214( var_0, var_1 )
{
    var_1 endon( "turretstatechange" );
    wait(var_0);
}

_ID14292( var_0 )
{
    self endon( "killanimscript" );
    var_1 = cos( 15 );

    for (;;)
    {
        while ( isdefined( self.enemy ) )
        {
            if ( var_0._ID11302 )
            {
                waittillframeend;
                continue;
            }

            var_2 = self.enemy.origin;
            var_3 = var_0 gettagangles( "tag_aim" );

            if ( _ID42237::_ID41802( var_0.origin, var_3, var_2, var_1 ) || distancesquared( var_0.origin, var_2 ) < 40000 )
            {
                if ( !var_0._ID11393 )
                {
                    var_0._ID11393 = 1;
                    var_0 notify( "turretstatechange" );
                }
            }
            else if ( var_0._ID11393 )
            {
                var_0._ID11393 = 0;
                var_0 notify( "turretstatechange" );
            }

            wait 0.05;
        }

        if ( var_0._ID11393 )
        {
            var_0._ID11393 = 0;
            var_0 notify( "turretstatechange" );
        }

        wait 0.05;
    }
}

_ID39366( var_0, var_1 )
{
    if ( var_0 <= 0 )
        return;

    self endon( "killanimscript" );
    var_1 endon( "turretstatechange" );
    wait(var_0);
    var_1 notify( "turretstatechange" );
}

_ID36620()
{
    self endon( "killanimscript" );

    for (;;)
    {
        if ( !isdefined( self.node ) || distancesquared( self.origin, self.node.origin ) > 4096 )
            self stopuseturret();

        wait 0.25;
    }
}

_ID28304( var_0 )
{
    if ( var_0 == "pain" )
    {
        if ( isdefined( self.node ) && distancesquared( self.origin, self.node.origin ) < 4096 )
        {
            self._ID7._ID39999 hide();
            animscripts\shared::_ID26732( self.weapon, "right" );
            self._ID7._ID28304 = ::_ID28302;
            return;
        }
        else
            self stopuseturret();
    }

    if ( var_0 == "saw" )
    {
        var_1 = self getturret();
        return;
    }

    self._ID7._ID39999 delete();
    self._ID7._ID39999 = undefined;
    animscripts\shared::_ID26732( self.weapon, "right" );
}

_ID28302( var_0 )
{
    if ( !isdefined( self.node ) || distancesquared( self.origin, self.node.origin ) > 4096 )
    {
        self stopuseturret();
        self._ID7._ID39999 delete();
        self._ID7._ID39999 = undefined;

        if ( isdefined( self.weapon ) && self.weapon != "none" )
            animscripts\shared::_ID26732( self.weapon, "right" );
    }
    else if ( var_0 != "saw" )
        self._ID7._ID39999 delete();
}

_ID28448( var_0 )
{
    animscripts\shared::_ID26732( self.weapon, "right" );
}
#using_animtree("generic_human");

_ID11644( var_0 )
{
    self setanim( %additive_saw_idle, 0, 0.1 );
    self setanim( %additive_saw_fire, 1, 0.1 );
    self setanim( %additive_saw_custom, 0, 0.1 );
    var_0 _ID39347();
    _ID39346( var_0 );
}

_ID11236( var_0 )
{
    self setanim( %additive_saw_idle, 1, 0.1 );
    self setanim( %additive_saw_fire, 0, 0.1 );
    self setanim( %additive_saw_custom, 0, 0.1 );
    var_0 _ID39345();
}

_ID11302( var_0, var_1, var_2 )
{
    var_0._ID11393 = 0;
    var_0._ID11302 = 1;
    var_0 notify( "turretstatechange" );
    self setanim( %additive_saw_idle, 0, 0.1 );
    self setanim( %additive_saw_fire, 0, 0.1 );
    self setflaggedanimknoblimitedrestart( "customTurretAnim", var_1, 1, 0.1, 1 );
    self setanim( %additive_saw_custom, 1, 0.1 );
    var_0 thread turretdocustomanim( var_2 );
    animscripts\shared::_ID11529( "customTurretAnim" );
    var_0._ID11302 = 0;
    var_0 notify( "turretstatechange" );
}

_ID39346( var_0 )
{
    self endon( "killanimscript" );
    var_0 endon( "turretstatechange" );

    for (;;)
    {
        var_0 shootturret();
        wait 0.1;
    }
}
#using_animtree("mg42");

_ID39347()
{
    self setanim( %additive_saw_idle, 0, 0.1 );
    self setanim( %additive_saw_fire, 1, 0.1 );
    self setanim( %additive_saw_custom, 0, 0.1 );
}

_ID39345()
{
    self setanim( %additive_saw_idle, 1, 0.1 );
    self setanim( %additive_saw_fire, 0, 0.1 );
    self setanim( %additive_saw_custom, 0, 0.1 );
}

turretdocustomanim( var_0 )
{
    self setanim( %additive_saw_idle, 0, 0.1 );
    self setanim( %additive_saw_fire, 0, 0.1 );
    self setanimknoblimitedrestart( var_0 );
    self setanim( %additive_saw_custom, 1, 0.1 );
}
