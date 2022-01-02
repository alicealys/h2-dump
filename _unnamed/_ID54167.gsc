// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49798( var_0 )
{
    if ( !isdefined( level._ID49753 ) )
    {
        level._ID49753 = spawnstruct();
        level._ID49753._ID47246 = [];
        level._ID49753._ID46732 = 0;
    }

    if ( !isdefined( level._ID49753._ID47246[var_0] ) )
    {
        var_1 = _ID45926( var_0 );
        var_1._ID48866 = level._ID49753._ID46732;
        level._ID49753._ID46732 = level._ID49753._ID46732 + 1;
        var_1._ID48245 = -1;
        level._ID49753._ID47246[var_0] = var_1;
    }

    return level._ID49753._ID47246[var_0];
}

_ID45926( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID50910 = 22;
    var_1._ID54087 = 10000;
    var_1._ID54259 = 0;
    var_1._ID45134 = 1;
    var_1._ID53942 = 1;
    var_1._ID49085 = -180;
    var_1._ID52122 = 180;
    var_1._ID47970 = -180;
    var_1._ID51387 = 180;
    var_1._ID44285 = undefined;
    var_1._ID37062 = undefined;
    var_1._ID48550 = 1;
    var_1._ID25468 = undefined;
    var_1._ID52967 = 0;
    var_1.name = var_0;
    var_1._ID49821 = 0;
    var_1._ID23606 = 0;
    var_1._ID23062 = 100000;
    var_1._ID44137 = 2.75;
    var_1._ID45309 = 0;
    var_1._ID48806 = 0;
    return var_1;
}

_ID48947()
{
    level._ID49753._ID51059 = 1;
}

_ID49481( var_0 )
{
    if ( isdefined( level._ID49753._ID47246[var_0] ) )
    {
        level._ID49753._ID47246[var_0] = undefined;
        _ID48947();
    }
    else
    {

    }
}

_ID49015( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0 ) )
        self._ID50910 = var_0;

    if ( isdefined( var_1 ) )
        self._ID54087 = var_1;

    if ( isdefined( var_2 ) )
        self._ID45134 = var_2;

    if ( isdefined( var_3 ) )
        self._ID53942 = var_3;

    _ID48947();
    return self;
}

_ID48343( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID50910 = var_0;
    _ID48947();
    return self;
}

_ID53333( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID54087 = var_0;
    _ID48947();
    return self;
}

_ID54400( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID54259 = var_0;
    _ID48947();
    return self;
}

_ID48173( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID45134 = var_0;
    _ID48947();
    return self;
}

_ID48717( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID53942 = var_0;
    _ID48947();
    return self;
}

_ID46614( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID44137 = var_0;
    _ID48947();
    return self;
}

_ID49498( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_0 ) )
        self._ID47970 = angleclamp180( var_0 );

    if ( isdefined( var_1 ) )
        self._ID51387 = angleclamp180( var_1 );

    if ( isdefined( var_2 ) )
        self._ID49085 = angleclamp180( var_2 );

    if ( isdefined( var_3 ) )
        self._ID52122 = angleclamp180( var_3 );

    if ( isdefined( var_4 ) )
        self._ID48550 = var_4;

    _ID48947();
    return self;
}

_ID48674( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._ID23606 = var_0;
    self._ID23062 = var_1;
    _ID48947();
    return self;
}

_ID51166( var_0, var_1, var_2 )
{
    self._ID44285 = var_0;

    if ( isdefined( var_1 ) )
        _ID45513( var_1 );

    if ( isdefined( var_2 ) )
        self._ID48550 = var_2;

    _ID48947();
    return self;
}

_ID45513( var_0 )
{
    self._ID37062 = var_0;
    _ID48947();
    return self;
}

_ID45137( var_0 )
{
    self._ID25468 = var_0;
    _ID48947();
    return self;
}

_ID44808( var_0 )
{
    level._ID49753._ID52021 = var_0;
    _ID48947();
    return self;
}

_ID44428( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID49821 = var_0;
    _ID48947();
    return self;
}

_ID48159( var_0 )
{
    self._ID48245 = var_0;
    _ID48947();
    return self;
}

_ID48308( var_0 )
{
    self._ID52967 = var_0;
    _ID48947();
    return self;
}

_ID47992( var_0 )
{
    if ( !isdefined( self._ID47218 ) )
        self._ID47218 = [];

    self._ID47218 = _ID42237::_ID3293( self._ID47218, var_0 );
    _ID48947();
    return self;
}

_ID48015( var_0 )
{
    if ( isdefined( self._ID47218 ) )
        self._ID47218 = _ID42237::_ID3321( self._ID47218, var_0 );

    _ID48947();
    return self;
}

_ID47448( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID45309 = var_0;
    _ID48947();
    return self;
}

_ID44640( var_0 )
{
    self._ID48806 = 1;
    self._ID49492 = 1.0;

    if ( isdefined( var_0 ) && var_0 > 0 )
        self._ID49492 = var_0;

    _ID48947();
    return self;
}

_ID50670( var_0, var_1 )
{
    return self;
}

_ID44227()
{
    if ( isdefined( level._ID49753 ) )
    {
        level._ID49753._ID47246 = [];
        _ID48947();
    }
}

_ID47615( var_0, var_1 )
{
    level endon( "stop_dynamic_dof" );

    if ( isdefined( level._ID49753._ID20 ) )
        return;

    level._ID49753._ID20 = 1;

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( var_0 )
        setsaveddvar( "r_dof_physical_bokehEnable", 1 );

    if ( !isdefined( level._ID49753 ) && level._ID49753._ID47246.size <= 0 )
        return;

    if ( isdefined( var_1 ) )
        thread _ID51370( var_1 );

    level.player _meth_84b8();
    var_2 = 0;
    var_3 = 0.05;
    var_4 = undefined;
    var_5 = 22.0;

    while ( level._ID49753._ID20 )
    {
        var_6 = level.player getplayerangles();
        var_7 = undefined;
        var_8 = undefined;

        if ( level.player islinked() )
            var_8 = level.player getlinkedparent().angles;
        else if ( isdefined( level.player.owner ) )
            var_8 = level.player.owner.angles;

        if ( isdefined( var_8 ) )
        {
            var_7 = var_8 - var_6;
            var_6 = combineangles( var_8, var_6 );
        }
        else
            var_7 = var_6;

        var_6 = ( angleclamp180( var_6[0] ), angleclamp180( var_6[1] ), angleclamp180( var_6[2] ) );
        var_7 = ( angleclamp180( var_7[0] ), angleclamp180( var_7[1] ), angleclamp180( var_7[2] ) );
        var_9 = anglestoforward( var_6 );
        var_10 = level.player geteye();

        if ( isdefined( level._ID49753._ID52021 ) )
            var_10 = level._ID49753._ID52021;

        if ( isdefined( level._ID49753._ID51059 ) )
        {
            var_4 = undefined;
            level._ID49753._ID51059 = undefined;
        }

        var_11 = undefined;

        foreach ( var_13 in level._ID49753._ID47246 )
        {
            if ( !isdefined( var_13 ) )
                continue;

            var_14 = 1;

            if ( isdefined( var_13._ID44285 ) )
            {
                if ( isdefined( var_13._ID37062 ) )
                {
                    if ( !_ID42407::_ID18252( var_13._ID44285.model, var_13._ID37062 ) )
                    {
                        if ( !isdefined( var_13._ID44285._ID18304 ) )
                        {

                        }
                        else
                        {

                        }
                    }

                    var_13._ID45044 = var_13._ID44285 gettagorigin( var_13._ID37062 );
                }
                else
                    var_13._ID45044 = var_13._ID44285.origin;

                if ( isdefined( var_13._ID25468 ) )
                {
                    var_15 = rotatevector( var_13._ID25468, var_13._ID44285.angles );
                    var_13._ID45044 = var_13._ID45044 + var_15;
                }

                if ( var_13._ID45309 != 0 )
                {
                    var_16 = undefined;
                    var_17 = undefined;

                    if ( isdefined( var_13._ID53565 ) && isdefined( var_13._ID52642 ) )
                    {
                        var_18 = var_13._ID45044 - var_13._ID53565;
                        var_19 = var_10 - var_13._ID52642;
                        var_16 = var_13._ID45044 + var_13._ID45309 * var_18;
                        var_17 = var_10 + var_13._ID45309 * var_19;
                    }

                    var_13._ID53565 = var_13._ID45044;
                    var_13._ID52642 = var_10;

                    if ( isdefined( var_16 ) && isdefined( var_17 ) )
                    {
                        var_13._ID45044 = var_16;
                        var_10 = var_17;
                    }
                }

                var_20 = var_13._ID23606 * var_13._ID23606;
                var_21 = var_13._ID23062 * var_13._ID23062;
                var_22 = distancesquared( var_10, var_13._ID45044 );

                if ( var_22 < var_20 || var_22 > var_21 )
                    var_14 = 0;
            }

            var_13._ID43894 = _ID42237::_ID37527( var_13._ID48550, var_6, var_7 );

            if ( isdefined( var_13._ID45044 ) && var_13._ID49821 )
            {
                var_23 = _ID47476( var_10, var_13._ID45044 );

                if ( !isdefined( var_23["entity"] ) )
                    var_14 = 0;
                else if ( var_23["entity"] != var_13._ID44285 )
                {
                    var_24 = distancesquared( var_10, var_13._ID45044 );
                    var_25 = distancesquared( var_10, var_23["position"] );

                    if ( var_24 != var_25 )
                        var_14 = 0;
                }
            }

            if ( var_14 )
            {
                if ( var_13._ID52967 || var_13._ID43894[0] >= var_13._ID47970 && var_13._ID43894[0] <= var_13._ID51387 && var_13._ID43894[1] >= var_13._ID49085 && var_13._ID43894[1] <= var_13._ID52122 )
                {
                    if ( !isdefined( var_11 ) )
                    {
                        var_11 = var_13;
                        continue;
                    }

                    var_11 = var_11 _ID45607( var_13 );
                }
            }
        }

        if ( isdefined( var_11 ) )
        {
            var_27 = var_11._ID54087;

            if ( var_11._ID52967 )
            {
                var_28 = _ID42237::_ID37527( var_11._ID54087 < 0, 1024, var_11._ID54087 );
                var_29 = var_10 + var_9 * var_28;
                var_23 = _ID47476( var_10, var_29, var_11._ID47218 );
                var_27 = distance( var_10, var_23["position"] );
            }
            else if ( isdefined( var_11._ID44285 ) )
            {
                var_27 = distance( var_11._ID45044, var_10 );

                if ( var_11._ID54087 >= 0 && var_27 > var_11._ID54087 )
                    var_27 = var_11._ID54087;
            }

            var_30 = max( var_27 + var_11._ID54259, 1 );
            var_31 = undefined;

            if ( var_11._ID48806 )
            {
                if ( !isdefined( var_11._ID49883 ) )
                {
                    var_11._ID43477 = var_11._ID50910;
                    var_11._ID46557 = 64;

                    if ( !isdefined( var_4 ) )
                    {
                        var_11._ID49883 = var_11._ID46557;
                        var_11._ID50369 = var_11._ID43477;
                    }
                    else
                    {
                        var_11._ID49883 = var_11._ID43477;
                        var_11._ID50369 = var_11._ID46557;
                    }

                    var_11._ID52621 = ( var_11._ID50369 - var_11._ID49883 ) / ( var_11._ID49492 / var_3 );
                }
                else
                {
                    var_11._ID49883 = var_11._ID49883 + var_11._ID52621;
                    var_11._ID49883 = _ID42237::_ID53482( var_11._ID49883, var_11._ID43477, var_11._ID46557 );

                    if ( var_11._ID49883 == var_11._ID50369 )
                        var_11._ID48806 = 0;
                }

                var_31 = var_11._ID49883;
            }
            else
                var_31 = var_11._ID50910;

            var_5 = _ID53844( var_31 * var_11._ID44137, var_3, var_11._ID53942, var_5 );
            level.player _meth_84ba( var_31, var_30, var_11._ID45134, var_11._ID53942 );
            level.player _meth_84cb( var_5, var_30 );
            var_4 = var_11;
        }

        wait(var_3);
    }
}

_ID47476( var_0, var_1, var_2 )
{
    var_3 = 1;
    var_4 = var_0;
    var_5 = undefined;
    var_6 = level.player;

    for ( var_7 = 0; var_3 && var_7 < 10; var_7++ )
    {
        var_5 = bullettrace( var_4, var_1, 1, var_6, 0, 1, 0 );
        var_8 = distancesquared( var_4, var_1 );
        var_9 = var_5["entity"];
        var_10 = vectornormalize( var_1 - var_4 );

        if ( var_8 > 800 && var_5["surfacetype"] == "glass" )
        {
            var_4 = var_5["position"] + var_10 * 2;
            continue;
        }

        if ( isdefined( var_2 ) && isdefined( var_9 ) )
        {
            if ( _ID42237::_ID3303( var_2, var_9 ) )
                var_4 = var_5["position"] + var_10 * 2;
            else
                var_3 = 0;

            continue;
        }

        var_3 = 0;
    }

    return var_5;
}

_ID45607( var_0 )
{
    if ( var_0._ID48245 > self._ID48245 )
        return var_0;

    if ( var_0._ID48866 > self._ID48866 )
        return var_0;

    return self;
}

_ID53844( var_0, var_1, var_2, var_3 )
{
    var_4 = var_1 * var_2;

    if ( var_4 > 1.0 )
        var_4 = 1.0;

    var_5 = 1.0 / var_0;
    var_6 = 1.0 / var_3;
    var_6 += var_4 * ( var_5 - var_6 );
    var_3 = 1.0 / var_6;
    var_3 = clamp( var_3, 0.125, 512 );
    return var_3;
}

_ID51370( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        if ( _func_2cb( var_0 ) )
            wait(var_0);
        else if ( isdefined( var_0.classname ) )
        {
            while ( isdefined( var_0 ) )
                waittillframeend;
        }
        else
        {

        }
    }

    level notify( "stop_dynamic_dof" );
    setsaveddvar( "r_dof_physical_bokehEnable", 0 );
    level._ID49753 = undefined;
    level.player _meth_84b9();
}

_ID43386( var_0, var_1 )
{
    if ( !isdefined( level._ID52015 ) )
        level._ID52015 = [];

    if ( isdefined( var_0 ) )
    {
        if ( !isdefined( level._ID52015[var_0] ) )
            level._ID52015[var_0] = _ID54416( var_0 );

        if ( isdefined( var_1 ) && var_1 )
            level._ID52015[var_0]._ID50394 = [];

        return level._ID52015[var_0];
    }

    return undefined;
}

_ID54416( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID53185 = var_0;
    var_1._ID47126 = 0;
    var_1._ID50394 = [];
    return var_1;
}

_ID48800( var_0, var_1 )
{
    var_2 = self._ID50394.size;
    self._ID50394[var_2] = _ID43639( var_2 );
    self._ID50394[var_2]._ID49516 = self;

    if ( isdefined( var_0 ) )
        self._ID50394[var_2] _ID49915( var_0 );

    return self._ID50394[var_2];
}

_ID51187( var_0 )
{
    return self;
}

_ID44437()
{
    return self._ID47126;
}

_ID48166()
{
    if ( !self._ID47126 )
    {
        foreach ( var_1 in self._ID50394 )
            var_1._ID47126 = undefined;

        self._ID47126 = 1;
        _ID50818();
        jump loc_BEF
    }

    return self;
}

_ID50818()
{
    var_0 = gettime();
    var_1 = gettime();
    var_2 = 0.05;

    for ( var_3 = 1; var_3; var_1 = gettime() )
    {
        var_4 = var_1 - var_0;
        var_3 = 0;

        for ( var_5 = 0; var_5 < self._ID50394.size; var_5++ )
        {
            var_6 = self._ID50394[var_5];

            if ( !isdefined( var_6._ID47126 ) )
            {
                var_3 = 1;

                if ( isdefined( var_6._ID49168 ) && var_4 > var_6._ID49168 * 1000 )
                {
                    _ID47881( var_6 );
                    var_6._ID47126 = 1;
                }
            }
        }

        wait(var_2);
    }

    self._ID47126 = 0;
}

_ID47881( var_0 )
{
    if ( isdefined( var_0._ID51171 ) )
    {
        foreach ( var_2 in var_0._ID51171 )
            var_2 _ID48860();
    }

    if ( isdefined( var_0._ID53298 ) )
        var_0 _ID49005();

    if ( isdefined( var_0._ID53416 ) )
        var_0._ID53416 _ID51733();

    if ( isdefined( var_0._ID53953 ) )
        var_0 _ID43864();

    var_0 _ID47714();

    if ( isdefined( var_0._ID52534 ) )
        var_0 _ID53255();

    if ( isdefined( var_0._ID50366 ) )
        var_0 thread _ID50446();

    if ( isdefined( var_0._ID44330 ) )
        var_0 _ID45097();

    if ( isdefined( var_0._ID52913 ) )
        var_0 _ID51195();

    if ( isdefined( var_0._ID45563 ) )
        var_0 _ID44860();

    if ( isdefined( var_0._ID53633 ) )
        var_0 _ID45534();

    if ( isdefined( var_0._ID53677 ) )
        var_0 _ID51960();

    if ( isdefined( var_0.headtracking_list ) )
    {
        foreach ( var_5 in var_0.headtracking_list )
            var_5 __cinseq_handle_headtracking_internal();
    }
}

_ID51733()
{
    level.player screenshakeonentity( self._ID44621, self._ID41914, self._ID54692, self._ID310, self._ID50928, self._ID43396, self.radius, self._ID47969, self._ID49324, self._ID51650, self._ID13702 );
}

_ID53255()
{
    if ( isdefined( self._ID53016 ) )
        setslowmotion( gettimescale(), self._ID53016, self._ID52534 );
    else
        setslowmotion( gettimescale(), level._ID34362._ID35414, self._ID52534 );
}

_ID49005()
{
    setblur( self._ID53298, self._ID46916 );
}

_ID43864()
{
    if ( !isdefined( self._ID49516._ID53935 ) )
        self._ID49516._ID53935 = getdvarfloat( "cg_fov" );

    if ( self._ID53953 == -1 )
        level.player lerpfov( self._ID49516._ID53935, self._ID49474, self._ID53678 );
    else
        level.player lerpfov( self._ID53953, self._ID49474, self._ID53678 );
}

_ID50446()
{
    self._ID30334 playrumblelooponentity( self._ID50366 );

    if ( isdefined( self._ID30332 ) )
    {
        wait(self._ID30332);
        self._ID30334 _meth_80b6( self._ID50366 );
    }
}

_ID45097()
{
    if ( !isdefined( self._ID49516._ID52386 ) )
        self._ID49516._ID52386 = getdvar( "sv_znear" );

    if ( self._ID44330 == -1 )
        setsaveddvar( "sv_znear", self._ID49516._ID52386 );
    else
        setsaveddvar( "sv_znear", self._ID44330 );
}

_ID51195()
{
    earthquake( self._ID52913, self._ID45514, self._ID49111.origin, self._ID52046 );
}

_ID44860()
{
    setsaveddvar( "r_mbEnable", self._ID45563 );
}

_ID45534()
{
    level.player lerpviewangleclamp( self._ID53633, self._ID43989, self._ID48365, self._ID52359, self._ID46861, self._ID49770, self._ID49464 );
}

_ID51960()
{
    level.player setviewangleresistance( self._ID53677, self._ID45152, self._ID43522, self._ID48507, self._ID54548 );
}

__cinseq_handle_headtracking_internal()
{
    switch ( self.headtracking_function_type )
    {
        case "start":
            self.headtracking_entity _ID45995::_ID48826( self.headtracking_type, self.headtracking_target, self.headtracking_radius, self.headtracking_max_left, self.headtracking_max_right, self.headtracking_max_down, self.headtracking_max_up, self.headtracking_eye_tracking, self.headtracking_paused_on_start, self.headtracking_add_pitchdown, self.headtracking_yaw_offfset );
            break;
        case "stop":
            self.headtracking_entity _ID45995::_ID45228();
            break;
        case "pause":
            self.headtracking_entity _ID45995::_ID46847();
            break;
        case "resume":
            self.headtracking_entity _ID45995::_ID44171();
            break;
    }
}

_ID48860()
{
    var_0 = self._ID50924;

    switch ( self._ID26246.size )
    {
        case 0:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]();
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]();
            else
                call [[ self._ID43794 ]]();

            break;
        case 1:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0] );

            break;
        case 2:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1] );

            break;
        case 3:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2] );

            break;
        case 4:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3] );

            break;
        case 5:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4] );

            break;
        case 6:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5] );

            break;
        case 7:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6] );

            break;
        case 8:
            if ( _func_314( self._ID43794 ) )
                var_0 thread [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6], self._ID26246[7] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6], self._ID26246[7] );
            else
                call [[ self._ID43794 ]]( self._ID26246[0], self._ID26246[1], self._ID26246[2], self._ID26246[3], self._ID26246[4], self._ID26246[5], self._ID26246[6], self._ID26246[7] );

            break;
        default:
            break;
    }
}

_ID43639( var_0 )
{
    var_1 = spawnstruct();
    var_1.name = var_0;
    var_1._ID44015 = 0;
    var_1._ID48387 = 0;
    var_1._ID52566 = 0;
    var_1._ID51996 = 0;
    var_1.headtracking_list = [];
    return var_1;
}

_ID49915( var_0 )
{
    if ( isdefined( self._ID49168 ) )
        return self;

    self._ID49168 = var_0;
    return self;
}

_ID43376( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( self._ID51171 ) )
        self._ID51171 = [];

    var_10 = spawnstruct();
    var_10._ID43794 = var_0;
    var_10._ID50924 = var_1;

    if ( !isdefined( var_1 ) && _func_314( var_0 ) )
        var_10._ID50924 = level;

    var_10._ID26246 = [];
    var_11 = [ var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ];

    for ( var_12 = 0; var_12 < var_11.size; var_12++ )
    {
        if ( isdefined( var_11[var_12] ) )
        {
            var_10._ID26246[var_12] = var_11[var_12];
            continue;
        }

        break;
    }

    self._ID51171[self._ID51171.size] = var_10;
    return self;
}

_ID44392( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._ID53298 = var_0;
    self._ID46916 = var_1;
    return self;
}

_ID53036( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    _ID44392( 0, var_0 );
    return self;
}

_ID44049()
{
    var_0 = spawnstruct();
    var_0._ID44621 = 0;
    var_0._ID41914 = 0;
    var_0._ID54692 = 0;
    var_0._ID310 = 0;
    var_0._ID50928 = 0;
    var_0._ID43396 = 0;
    var_0.radius = 0;
    var_0._ID47969 = 1;
    var_0._ID51650 = 1;
    var_0._ID49324 = 1;
    var_0._ID13702 = 1;
    return var_0;
}

_ID43465( var_0 )
{
    self._ID53416 = var_0;
    return self;
}

_ID44191( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._ID53953 = var_0;
    self._ID49474 = var_1;
    self._ID53678 = 1;

    if ( isdefined( var_2 ) )
        self._ID53678 = var_2;

    return self;
}

_ID43500( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID53953 = -1;
    self._ID49474 = var_0;
    self._ID53678 = 1;

    if ( isdefined( var_1 ) )
        self._ID53678 = var_1;

    return self;
}

_ID48993( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    self._ID53016 = var_0;
    self._ID52534 = var_1;
    return self;
}

_ID50008( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_1 = 1;

    self._ID52534 = var_0;
    return self;
}

_ID44944( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    self._ID44330 = var_0;
    return self;
}

_ID53207()
{
    self._ID44330 = -1;
    return self;
}

_ID48161( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( var_1 ) )
        var_1 = level.player;

    self._ID50366 = var_0;
    self._ID30334 = var_1;

    if ( isdefined( var_2 ) )
        self._ID30332 = var_2;

    return self;
}

_ID47198( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._ID52913 = var_0;
    self._ID45514 = var_1;
    self._ID49111 = level.player;

    if ( isdefined( var_2 ) )
        self._ID49111 = var_2;

    self._ID52046 = 64;

    if ( isdefined( var_3 ) )
        self._ID52046 = var_3;

    return self;
}

_ID47844( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._ID45563 = var_0;
    return self;
}

_ID51018( var_0 )
{
    _ID47844( 0 );
    return self;
}

_ID54217( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) || !isdefined( var_2 ) || !isdefined( var_3 ) || !isdefined( var_4 ) || !isdefined( var_5 ) || !isdefined( var_6 ) )
        return self;

    self._ID53633 = var_0;
    self._ID43989 = var_1;
    self._ID48365 = var_2;
    self._ID52359 = var_3;
    self._ID46861 = var_4;
    self._ID49770 = var_5;
    self._ID49464 = var_6;
    return self;
}

_ID46222( var_0, var_1, var_2, var_3, var_4 )
{
    self._ID53677 = 50;

    if ( isdefined( var_0 ) )
        self._ID53677 = var_0;

    self._ID45152 = 50;

    if ( isdefined( var_1 ) )
        self._ID45152 = var_1;

    self._ID43522 = 20;

    if ( isdefined( var_2 ) )
        self._ID43522 = var_2;

    self._ID48507 = 20;

    if ( isdefined( var_3 ) )
        self._ID48507 = var_3;

    self._ID54548 = 1;

    if ( isdefined( var_4 ) )
        self._ID54548 = var_4;

    return self;
}

cinseq_key_start_additive_headtracking( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    if ( !isdefined( var_0 ) )
        return self;

    var_12 = spawnstruct();
    var_12.headtracking_function_type = "start";
    var_12.headtracking_entity = var_0;
    var_12.headtracking_type = "upperbody";

    if ( isdefined( var_1 ) )
        var_12.headtracking_type = var_1;

    var_12.headtracking_target = level.player;

    if ( isdefined( var_2 ) )
        var_12.headtracking_target = var_2;

    var_12.headtracking_radius = 200;

    if ( isdefined( var_3 ) )
        var_12.headtracking_radius = var_3;

    var_12.headtracking_max_left = 60;

    if ( isdefined( var_4 ) )
        var_12.headtracking_max_left = var_4;

    var_12.headtracking_max_right = 60;

    if ( isdefined( var_5 ) )
        var_12.headtracking_max_right = var_5;

    var_12.headtracking_max_down = 30;

    if ( isdefined( var_6 ) )
        var_12.headtracking_max_down = var_6;

    var_12.headtracking_max_up = 30;

    if ( isdefined( var_7 ) )
        var_12.headtracking_max_up = var_7;

    var_12.headtracking_eye_tracking = 0;

    if ( isdefined( var_8 ) )
        var_12.headtracking_eye_tracking = var_8;

    var_12.headtracking_paused_on_start = 0;

    if ( isdefined( var_9 ) )
        var_12.headtracking_paused_on_start = var_9;

    var_12.headtracking_add_pitchdown = 10;

    if ( isdefined( var_10 ) )
        var_12.headtracking_add_pitchdown = var_10;

    var_12.headtracking_yaw_offfset = 0;

    if ( isdefined( var_11 ) )
        var_12.headtracking_yaw_offfset = var_11;

    self.headtracking_list[self.headtracking_list.size] = var_12;
    return self;
}

cinseq_key_stop_additive_headtracking( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    var_1 = spawnstruct();
    var_1.headtracking_function_type = "stop";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

cinseq_key_pause_additive_headtracking( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    var_1 = spawnstruct();
    var_1.headtracking_function_type = "stop";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

cinseq_key_resume_additive_headtracking( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    var_1 = spawnstruct();
    var_1.headtracking_function_type = "resume";
    var_1.headtracking_entity = var_0;
    self.headtracking_list[self.headtracking_list.size] = var_1;
    return self;
}

_ID47714()
{
    if ( self._ID51996 )
        _ID44227();

    if ( isdefined( self._ID43463 ) )
    {
        foreach ( var_1 in self._ID43463 )
            _ID49481( var_1 );
    }

    if ( isdefined( self._ID50241 ) )
    {
        foreach ( var_4 in self._ID50241 )
            _ID45917( var_4 );
    }

    if ( self._ID44015 )
        thread _ID47615( self._ID48387 );

    if ( self._ID52566 )
        thread _ID51370();
}

_ID45917( var_0 )
{
    var_1 = _ID49798( var_0.name );

    if ( isdefined( var_1 ) )
    {
        if ( isdefined( var_0._ID50910 ) )
            var_1 _ID48343( var_0._ID50910 );

        if ( isdefined( var_0._ID54087 ) )
            var_1 _ID53333( var_0._ID54087 );

        if ( isdefined( var_0._ID45134 ) )
            var_1 _ID48173( var_0._ID45134 );

        if ( isdefined( var_0._ID53942 ) )
            var_1 _ID48717( var_0._ID53942 );

        if ( isdefined( var_0._ID44285 ) )
            var_1 _ID51166( var_0._ID44285 );

        if ( isdefined( var_0._ID37062 ) )
            var_1 _ID45513( var_0._ID37062 );

        if ( isdefined( var_0._ID28609 ) )
            var_1 _ID48159( var_0._ID28609 );

        if ( isdefined( var_0._ID25468 ) )
            var_1 _ID54400( var_0._ID25468 );

        if ( isdefined( var_0._ID44137 ) )
            var_1 _ID46614( var_0._ID44137 );

        if ( isdefined( var_0._ID48806 ) )
            var_1 _ID44640( var_0._ID49492 );

        if ( isdefined( var_0._ID45309 ) )
            var_1 _ID47448( var_0._ID45309 );
    }
}

_ID48940( var_0 )
{
    _ID49401( var_0 );
    return self;
}

_ID50321( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID49401( var_4 );
    var_5._ID50910 = var_0;
    var_5._ID54087 = var_1;
    var_5._ID45134 = var_2;
    var_5._ID53942 = var_3;
    return self;
}

_ID52391( var_0, var_1, var_2 )
{
    var_3 = _ID49401( var_2 );
    var_3._ID44285 = var_0;

    if ( isdefined( var_1 ) )
        var_3._ID37062 = var_1;

    return self;
}

_ID52249( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID37062 = var_0;
    return self;
}

_ID53584( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID44137 = var_0;
    return self;
}

_ID54676( var_0, var_1, var_2 )
{
    var_3 = _ID49401( var_2 );
    return self;
}

_ID45003( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID28609 = var_0;
    return self;
}

_ID44518( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID25468 = var_0;
    return self;
}

_ID45145( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID48806 = 1;
    var_2._ID49492 = 1.0;

    if ( isdefined( var_0 ) )
        var_2._ID49492 = var_0;

    return self;
}

_ID44545( var_0, var_1 )
{
    var_2 = _ID49401( var_1 );
    var_2._ID45309 = var_0;
    return self;
}

_ID52303( var_0 )
{
    if ( !isdefined( self._ID43463 ) )
        self._ID43463 = [];

    self._ID43463 = _ID42237::_ID3293( self._ID43463, var_0 );
    return self;
}

_ID44956( var_0 )
{
    self._ID44015 = 1;

    if ( isdefined( var_0 ) )
        self._ID48387 = var_0;

    return self;
}

_ID48959()
{
    self._ID52566 = 1;
    return self;
}

_ID46727()
{
    self._ID51996 = 1;
    return self;
}

_ID49401( var_0 )
{
    if ( !isdefined( self._ID50241 ) )
        self._ID50241 = [];

    if ( !isdefined( var_0 ) )
        var_0 = self.name;

    if ( !isdefined( self._ID50241[var_0] ) )
    {
        self._ID50241[var_0] = spawnstruct();
        self._ID50241[var_0].name = var_0;
    }

    return self._ID50241[var_0];
}
