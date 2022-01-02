// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( isdefined( level._ID21153 ) )
        return;

    level._ID21153 = 1;

    if ( !isdefined( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["juggernaut"] = ::_ID36738;
    level._ID21154 = 0;
}

_ID36738()
{
    self._ID21151 = 1;
    self.minpaindamage = 200;
    self.grenadeammo = 0;
    self._ID11624 = 0.05;
    self._ID2219 = 1;
    self.ignoresuppression = 1;
    self._ID24844 = 1;
    self._ID24934 = 1;
    self._ID11579 = 1;
    self._ID11025 = 1;
    self._ID10998 = 1;
    self._ID11002 = 1;
    self.combatmode = "no_cover";
    self._ID24730 = 1;
    self._ID7._ID11035 = 1;
    _ID42407::_ID10989();
    _ID42407::_ID10973();
    _ID19716();
    _ID42407::_ID1868( animscripts\pain::_ID2035 );
    _ID42407::_ID1868( _ID42372::_ID26190 );

    if ( !self isbadguy() )
        return;

    self._ID6315 = 40;
    _ID42407::_ID1868( _ID42372::_ID6315 );
    thread _ID21152();
    thread _ID21155();
    self.pathenemyfightdist = 128;
    self.pathenemylookahead = 128;
    self _meth_8505( 0 );
    level notify( "juggernaut_spawned" );
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( self ) && isdefined( self._ID24898 ) )
    {
        var_3 = [];
        var_3[var_3.size] = "left";
        var_3[var_3.size] = "right";
        var_3[var_3.size] = "chest";
        var_3[var_3.size] = "back";
        animscripts\shared::_ID10626();

        foreach ( var_5 in var_3 )
        {
            var_2 = self._ID7._ID41701[var_5];

            if ( var_2 == "none" )
                continue;

            self._ID1312[var_2]._ID811 = "none";
            self._ID7._ID41701[var_5] = "none";
        }

        self.weapon = "none";
        animscripts\shared::_ID39673();
    }

    level notify( "juggernaut_died" );

    if ( !isdefined( self ) )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isplayernumber( var_0 ) )
        return;
}

_ID21152()
{
    self endon( "death" );
    self endon( "stop_hunting" );
    self.usechokepoints = 0;

    for (;;)
    {
        wait 0.5;

        if ( isdefined( self.enemy ) )
        {
            self setgoalpos( self.enemy.origin );
            self.goalradius = 128;
            self.goalheight = 81;
        }
    }
}

_ID21155()
{
    self endon( "death" );
    level endon( "special_op_terminated" );

    if ( isdefined( level._ID34231 ) && level._ID34231 )
        return;

    var_0 = 2500;

    if ( level.script == "ending" )
    {
        _ID42237::_ID14413( "panic_button" );
        var_0 = 750;
    }

    for (;;)
    {
        wait 0.05;

        if ( gettime() < level._ID21154 )
            continue;

        var_1 = _ID42407::_ID15617( self.origin );

        if ( !isalive( var_1 ) )
            continue;

        if ( distance( var_1.origin, self.origin ) > var_0 )
            continue;

        if ( isdefined( level._ID28164 ) && level._ID28164 )
        {
            var_2 = self gettagorigin( "tag_flash" );

            if ( !bullettracepassed( self geteye(), var_1 geteye(), 0, undefined ) )
            {
                wait 0.25;
                continue;
            }
        }

        break;
    }

    level._ID21154 = gettime() + 15000;
    level notify( "juggernaut_attacking" );
}
#using_animtree("generic_human");

_ID19716()
{
    self.walkdist = 500;
    self.walkdistfacingmotion = 500;
    _ID42407::_ID32387( "run", %juggernaut_runf, %juggernaut_sprint );
    _ID42407::_ID32387( "walk", %juggernaut_walkf );
    _ID42407::_ID32387( "cqb", %juggernaut_walkf );
    _ID42407::_ID32243( %juggernaut_stand_fire_burst, %juggernaut_aim5, %juggernaut_stand_idle, %juggernaut_stand_reload );
}
