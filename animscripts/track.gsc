// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID38165()
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self endon( "melee" );
    _ID38149( %aim_2, %aim_4, %aim_6, %aim_8 );
}

_ID38149( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;
    var_6 = 0;
    var_7 = ( 0, 0, 0 );
    var_8 = 1;
    var_9 = 0;
    var_10 = 0;
    var_11 = 10;
    var_12 = ( 0, 0, 0 );
    var_13 = 0;
    var_14 = 0;
    var_15 = 0;
    var_16 = 0;
    var_17 = 0.1;
    var_18 = 0;

    if ( self.type == "dog" )
    {
        var_19 = 0;
        self._ID33785 = self.enemy;
    }
    else
    {
        var_19 = 1;
        var_20 = 0;
        var_21 = 0;

        if ( isdefined( self._ID8867 ) )
            var_20 = anim._ID8868;

        var_22 = self.script;

        if ( var_22 == "cover_multi" )
        {
            if ( self._ID217._ID36185 == "right" )
                var_22 = "cover_right";
            else if ( self._ID217._ID36185 == "left" )
                var_22 = "cover_left";
        }

        if ( ( var_22 == "cover_left" || var_22 == "cover_right" ) && isdefined( self._ID7._ID8746 ) && self._ID7._ID8746 == "lean" )
            var_21 = self._ID8893.angles[1] - self.angles[1];

        var_12 = ( var_20, var_21, 0 );
    }

    for (;;)
    {
        _ID19507();

        if ( self _meth_844f( "tag_flash" ) == -1 )
        {
            wait 0.05;
            continue;
        }

        var_23 = animscripts\shared::_ID16587();
        var_24 = self._ID33810;

        if ( isdefined( self._ID33785 ) )
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                var_24 = animscripts\combat_utility::_ID15797( self._ID33785 );
            else
                var_24 = self._ID33785 getshootatpos();
        }
        else if ( isdefined( var_24 ) && isdefined( self._ID50737 ) && isdefined( self.enemy ) )
            var_24 = self.enemy getshootatpos();

        if ( !isdefined( var_24 ) && animscripts\utility::_ID33934() )
            var_24 = _ID38152( var_23 );

        var_25 = isdefined( self._ID25834 ) || isdefined( self._ID25683 );
        var_26 = isdefined( var_24 );
        var_27 = ( 0, 0, 0 );

        if ( var_26 )
            var_27 = var_24;

        var_28 = 0;
        var_29 = isdefined( self._ID36397 );

        if ( var_29 )
            var_28 = self._ID36397;

        if ( isdefined( self.node ) && isdefined( self.node._ID46953 ) && self.node._ID46953 != 0 )
            var_25 = 1;

        var_7 = self getaimangle( var_23, var_27, var_26, var_12, var_28, var_29, var_25 );
        var_30 = var_7[0];
        var_31 = var_7[1];
        var_7 = undefined;
        var_32 = undefined;

        if ( self._ID7._ID28253 == "prone" )
        {
            var_32 = self._ID54135;
            var_30 = clamp( var_30, var_32.downaimlimit, var_32.upaimlimit );
            var_31 = clamp( var_31, var_32.leftaimlimit, var_32.rightaimlimit );
        }
        else
        {
            var_32 = spawnstruct();
            var_32.rightaimlimit = self.rightaimlimit;
            var_32.leftaimlimit = self.leftaimlimit;
            var_32.upaimlimit = self.upaimlimit;
            var_32.downaimlimit = self.downaimlimit;
        }

        if ( animscripts\utility::_ID20915() )
        {
            var_33 = self.angles[2] * -1;
            var_34 = var_30 * cos( var_33 ) - var_31 * sin( var_33 );
            var_35 = var_30 * sin( var_33 ) + var_31 * cos( var_33 );
            var_30 = var_34;
            var_31 = var_35;
            var_30 = clamp( var_30, var_32.downaimlimit, var_32.upaimlimit );
            var_31 = clamp( var_31, var_32.leftaimlimit, var_32.rightaimlimit );
        }

        if ( var_10 > 0 )
        {
            var_10 -= 1;
            var_11 = max( 10, var_11 - 5 );
        }
        else if ( self.relativedir && self.relativedir != var_9 )
        {
            var_10 = 2;
            var_11 = 30;
        }
        else
            var_11 = 10;

        var_36 = squared( var_11 );
        var_9 = self.relativedir;
        var_37 = var_31 - var_5;

        if ( squared( var_37 ) > var_36 )
        {
            var_31 = var_5 + clamp( var_37, -1 * var_11, var_11 );
            var_31 = clamp( var_31, var_32.leftaimlimit, var_32.rightaimlimit );
        }

        var_38 = var_30 - var_6;

        if ( squared( var_38 ) > var_36 )
        {
            var_30 = var_6 + clamp( var_38, -1 * var_11, var_11 );
            var_30 = clamp( var_30, var_32.downaimlimit, var_32.upaimlimit );
        }

        var_8 = 0;
        var_5 = var_31;
        var_6 = var_30;
        _ID38154( var_0, var_1, var_2, var_3, var_4, var_30, var_31, var_32 );
        wait 0.05;
    }
}

_ID38152( var_0 )
{
    var_1 = undefined;
    var_2 = anglestoforward( self.angles );

    if ( isdefined( self._ID8923 ) )
    {
        if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
            var_1 = animscripts\combat_utility::_ID15797( self._ID8923 );
        else
            var_1 = self._ID8923 getshootatpos();

        if ( isdefined( self._ID8927 ) )
        {
            if ( vectordot( vectornormalize( var_1 - var_0 ), var_2 ) < 0.177 )
                var_1 = undefined;
        }
        else if ( vectordot( vectornormalize( var_1 - var_0 ), var_2 ) < 0.643 )
            var_1 = undefined;
    }

    if ( !isdefined( var_1 ) && isdefined( self._ID8921 ) )
    {
        var_1 = self._ID8921;

        if ( isdefined( self._ID8926 ) )
        {
            if ( vectordot( vectornormalize( var_1 - var_0 ), var_2 ) < 0.177 )
                var_1 = undefined;
        }
        else if ( vectordot( vectornormalize( var_1 - var_0 ), var_2 ) < 0.643 )
            var_1 = undefined;
    }

    return var_1;
}

_ID38150( var_0, var_1 )
{
    if ( animscripts\utility::_ID29285() )
    {
        var_2 = self.enemy getshootatpos() - self.enemy.origin;
        var_3 = self lastknownpos( self.enemy ) + var_2;
        return _ID38153( var_3 - var_0, var_1 );
    }

    var_4 = 0;
    var_5 = 0;

    if ( isdefined( self.node ) && isdefined( anim._ID20711[self.node.type] ) && distancesquared( self.origin, self.node.origin ) < 16 )
        var_5 = angleclamp180( self.angles[1] - self.node.angles[1] );
    else
    {
        var_6 = self getanglestolikelyenemypath();

        if ( isdefined( var_6 ) )
        {
            var_5 = angleclamp180( self.angles[1] - var_6[1] );
            var_4 = angleclamp180( 360 - var_6[0] );
        }
    }

    return ( var_4, var_5, 0 );
}

_ID38153( var_0, var_1 )
{
    var_2 = vectortoangles( var_0 );
    var_3 = 0;
    var_4 = 0;

    if ( self.stairsstate == "up" )
    {
        if ( !isdefined( self._ID23165 ) || isdefined( self._ID23165 ) && !self._ID23165 )
            var_3 = -40;
    }
    else if ( self.stairsstate == "down" )
    {
        if ( !isdefined( self._ID23165 ) || isdefined( self._ID23165 ) && !self._ID23165 )
        {
            var_3 = 40;
            var_4 = 12;
        }
    }

    var_5 = 360 - var_2[0];
    var_5 = angleclamp180( var_5 + var_1[0] + var_3 );

    if ( isdefined( self._ID36397 ) )
        var_6 = self._ID36397 - var_2[1];
    else
    {
        var_7 = angleclamp180( self.desiredangle - self.angles[1] ) * 0.5;
        var_6 = var_7 + self.angles[1] - var_2[1];
    }

    var_6 = angleclamp180( var_6 + var_1[1] + var_4 );
    return ( var_5, var_6, 0 );
}

_ID38151( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID25834 ) || isdefined( self._ID25683 ) )
    {
        if ( var_1 > self.rightaimlimit || var_1 < self.leftaimlimit )
            var_1 = 0;

        if ( var_0 > self.upaimlimit || var_0 < self.downaimlimit )
            var_0 = 0;
    }
    else if ( var_2 && ( abs( var_1 ) > anim._ID23081 || abs( var_0 ) > anim._ID23080 ) )
    {
        var_1 = 0;
        var_0 = 0;
    }
    else
    {
        if ( self.gunblockedbywall )
            var_1 = clamp( var_1, -10, 10 );
        else
            var_1 = clamp( var_1, self.leftaimlimit, self.rightaimlimit );

        var_0 = clamp( var_0, self.downaimlimit, self.upaimlimit );
    }

    return ( var_0, var_1, 0 );
}

_ID38154( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = 0;
    var_9 = 0;
    var_10 = 0;
    var_11 = 0;
    var_12 = 0;
    var_13 = 0.1;

    if ( isdefined( self._ID2423 ) )
        var_13 = self._ID2423;

    if ( var_6 > 0 )
    {
        var_11 = clamp( var_6 / self._ID50389.rightaimlimit * self._ID7._ID2433, 0, 1 );
        var_10 = 1;
    }
    else if ( var_6 < 0 )
    {
        var_9 = clamp( var_6 / self._ID50389.leftaimlimit * self._ID7._ID2433, 0, 1 );
        var_10 = 1;
    }

    if ( var_5 > 0 )
    {
        var_12 = var_5 / var_7.upaimlimit * self._ID7._ID2433;
        var_10 = 1;
    }
    else if ( var_5 < 0 )
    {
        var_8 = var_5 / var_7.downaimlimit * self._ID7._ID2433;
        var_10 = 1;
    }

    self setanimlimited( var_0, var_8, var_13, 1, 1 );
    self setanimlimited( var_1, var_9, var_13, 1, 1 );
    self setanimlimited( var_2, var_11, var_13, 1, 1 );
    self setanimlimited( var_3, var_12, var_13, 1, 1 );

    if ( isdefined( var_4 ) )
        self setanimlimited( var_4, var_10, var_13, 1, 1 );
}

_ID32548( var_0, var_1 )
{
    if ( !isdefined( var_1 ) || var_1 <= 0 )
    {
        self._ID7._ID2433 = var_0;
        self._ID7._ID2435 = var_0;
        self._ID7._ID2434 = var_0;
        self._ID7._ID2437 = 0;
    }
    else
    {
        if ( !isdefined( self._ID7._ID2433 ) )
            self._ID7._ID2433 = 0;

        self._ID7._ID2435 = self._ID7._ID2433;
        self._ID7._ID2434 = var_0;
        self._ID7._ID2437 = int( var_1 * 20 );
    }

    self._ID7._ID2436 = 0;
}

_ID19507()
{
    if ( self._ID7._ID2436 < self._ID7._ID2437 )
    {
        self._ID7._ID2436++;
        var_0 = 1.0 * self._ID7._ID2436 / self._ID7._ID2437;
        self._ID7._ID2433 = self._ID7._ID2435 * ( 1 - var_0 ) + self._ID7._ID2434 * var_0;
    }
}
