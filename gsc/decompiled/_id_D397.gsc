// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C286( var_0 )
{
    if ( !isdefined( level._id_C259 ) )
    {
        level._id_C259 = spawnstruct();
        level._id_C259._id_B88E = [];
        level._id_C259._id_B68C = 0;
    }

    if ( !isdefined( level._id_C259._id_B88E[var_0] ) )
    {
        var_1 = _id_B366( var_0 );
        var_1._id_BEE2 = level._id_C259._id_B68C;
        level._id_C259._id_B68C += 1;
        var_1._id_BC75 = -1;
        level._id_C259._id_B88E[var_0] = var_1;
    }

    return level._id_C259._id_B88E[var_0];
}

_id_B366( var_0 )
{
    var_1 = spawnstruct();
    var_1._id_C6DE = 22;
    var_1._id_D347 = 10000;
    var_1._id_D3F3 = 0;
    var_1._id_B04E = 1;
    var_1._id_D2B6 = 1;
    var_1._id_BFBD = -180;
    var_1._id_CB9A = 180;
    var_1._id_BB62 = -180;
    var_1._id_C8BB = 180;
    var_1._id_ACFD = undefined;
    var_1.tag_name = undefined;
    var_1._id_BDA6 = 1;
    var_1.offset = undefined;
    var_1._id_CEE7 = 0;
    var_1.name = var_0;
    var_1._id_C29D = 0;
    var_1.min_range = 0;
    var_1.max_range = 100000;
    var_1._id_AC69 = 2.75;
    var_1._id_B0FD = 0;
    var_1._id_BEA6 = 0;
    return var_1;
}

_id_BF33()
{
    level._id_C259._id_C773 = 1;
}

_id_C149( var_0 )
{
    if ( isdefined( level._id_C259._id_B88E[var_0] ) )
    {
        level._id_C259._id_B88E[var_0] = undefined;
        _id_BF33();
    }
    else
    {

    }
}

_id_BF77( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0 ) )
        self._id_C6DE = var_0;

    if ( isdefined( var_1 ) )
        self._id_D347 = var_1;

    if ( isdefined( var_2 ) )
        self._id_B04E = var_2;

    if ( isdefined( var_3 ) )
        self._id_D2B6 = var_3;

    _id_BF33();
    return self;
}

_id_BCD7( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_C6DE = var_0;
    _id_BF33();
    return self;
}

_id_D055( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_D347 = var_0;
    _id_BF33();
    return self;
}

_id_D480( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_D3F3 = var_0;
    _id_BF33();
    return self;
}

_id_BC2D( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_B04E = var_0;
    _id_BF33();
    return self;
}

_id_BE4D( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_D2B6 = var_0;
    _id_BF33();
    return self;
}

_id_B616( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_AC69 = var_0;
    _id_BF33();
    return self;
}

_id_C15A( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_0 ) )
        self._id_BB62 = angleclamp180( var_0 );

    if ( isdefined( var_1 ) )
        self._id_C8BB = angleclamp180( var_1 );

    if ( isdefined( var_2 ) )
        self._id_BFBD = angleclamp180( var_2 );

    if ( isdefined( var_3 ) )
        self._id_CB9A = angleclamp180( var_3 );

    if ( isdefined( var_4 ) )
        self._id_BDA6 = var_4;

    _id_BF33();
    return self;
}

_id_BE22( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self.min_range = var_0;
    self.max_range = var_1;
    _id_BF33();
    return self;
}

_id_C7DE( var_0, var_1, var_2 )
{
    self._id_ACFD = var_0;

    if ( isdefined( var_1 ) )
        _id_B1C9( var_1 );

    if ( isdefined( var_2 ) )
        self._id_BDA6 = var_2;

    _id_BF33();
    return self;
}

_id_B1C9( var_0 )
{
    self.tag_name = var_0;
    _id_BF33();
    return self;
}

_id_B051( var_0 )
{
    self.offset = var_0;
    _id_BF33();
    return self;
}

_id_AF08( var_0 )
{
    level._id_C259._id_CB35 = var_0;
    _id_BF33();
    return self;
}

_id_AD8C( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_C29D = var_0;
    _id_BF33();
    return self;
}

_id_BC1F( var_0 )
{
    self._id_BC75 = var_0;
    _id_BF33();
    return self;
}

_id_BCB4( var_0 )
{
    self._id_CEE7 = var_0;
    _id_BF33();
    return self;
}

_id_BB78( var_0 )
{
    if ( !isdefined( self._id_B872 ) )
        self._id_B872 = [];

    self._id_B872 = common_scripts\utility::array_add( self._id_B872, var_0 );
    _id_BF33();
    return self;
}

_id_BB8F( var_0 )
{
    if ( isdefined( self._id_B872 ) )
        self._id_B872 = common_scripts\utility::array_remove( self._id_B872, var_0 );

    _id_BF33();
    return self;
}

_id_B958( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_B0FD = var_0;
    _id_BF33();
    return self;
}

_id_AE60( var_0 )
{
    self._id_BEA6 = 1;
    self._id_C154 = 1.0;

    if ( isdefined( var_0 ) && var_0 > 0 )
        self._id_C154 = var_0;

    _id_BF33();
    return self;
}

_id_C5EE( var_0, var_1 )
{
    return self;
}

_id_ACC3()
{
    if ( isdefined( level._id_C259 ) )
    {
        level._id_C259._id_B88E = [];
        _id_BF33();
    }
}

_id_B9FF( var_0, var_1 )
{
    level endon( "stop_dynamic_dof" );

    if ( isdefined( level._id_C259.active ) )
        return;

    level._id_C259.active = 1;

    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( var_0 )
        setsaveddvar( "r_dof_physical_bokehEnable", 1 );

    if ( !isdefined( level._id_C259 ) && level._id_C259._id_B88E.size <= 0 )
        return;

    if ( isdefined( var_1 ) )
        thread _id_C8AA( var_1 );

    level.player _meth_84B8();
    var_2 = 0;
    var_3 = 0.05;
    var_4 = undefined;
    var_5 = 22.0;

    while ( level._id_C259.active )
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

        if ( isdefined( level._id_C259._id_CB35 ) )
            var_10 = level._id_C259._id_CB35;

        if ( isdefined( level._id_C259._id_C773 ) )
        {
            var_4 = undefined;
            level._id_C259._id_C773 = undefined;
        }

        var_11 = undefined;

        foreach ( var_13 in level._id_C259._id_B88E )
        {
            if ( !isdefined( var_13 ) )
                continue;

            var_14 = 1;

            if ( isdefined( var_13._id_ACFD ) )
            {
                if ( isdefined( var_13.tag_name ) )
                {
                    if ( !maps\_utility::hastag( var_13._id_ACFD.model, var_13.tag_name ) )
                    {
                        if ( !isdefined( var_13._id_ACFD.headmodel ) )
                        {

                        }
                        else
                        {

                        }
                    }

                    var_13._id_AFF4 = var_13._id_ACFD gettagorigin( var_13.tag_name );
                }
                else
                    var_13._id_AFF4 = var_13._id_ACFD.origin;

                if ( isdefined( var_13.offset ) )
                {
                    var_15 = rotatevector( var_13.offset, var_13._id_ACFD.angles );
                    var_13._id_AFF4 += var_15;
                }

                if ( var_13._id_B0FD != 0 )
                {
                    var_16 = undefined;
                    var_17 = undefined;

                    if ( isdefined( var_13._id_D13D ) && isdefined( var_13._id_CDA2 ) )
                    {
                        var_18 = var_13._id_AFF4 - var_13._id_D13D;
                        var_19 = var_10 - var_13._id_CDA2;
                        var_16 = var_13._id_AFF4 + var_13._id_B0FD * var_18;
                        var_17 = var_10 + var_13._id_B0FD * var_19;
                    }

                    var_13._id_D13D = var_13._id_AFF4;
                    var_13._id_CDA2 = var_10;

                    if ( isdefined( var_16 ) && isdefined( var_17 ) )
                    {
                        var_13._id_AFF4 = var_16;
                        var_10 = var_17;
                    }
                }

                var_20 = var_13.min_range * var_13.min_range;
                var_21 = var_13.max_range * var_13.max_range;
                var_22 = distancesquared( var_10, var_13._id_AFF4 );

                if ( var_22 < var_20 || var_22 > var_21 )
                    var_14 = 0;
            }

            var_13._id_AB76 = common_scripts\utility::ter_op( var_13._id_BDA6, var_6, var_7 );

            if ( isdefined( var_13._id_AFF4 ) && var_13._id_C29D )
            {
                var_23 = _id_B974( var_10, var_13._id_AFF4 );

                if ( !isdefined( var_23["entity"] ) )
                    var_14 = 0;
                else if ( var_23["entity"] != var_13._id_ACFD )
                {
                    var_24 = distancesquared( var_10, var_13._id_AFF4 );
                    var_25 = distancesquared( var_10, var_23["position"] );

                    if ( var_24 != var_25 )
                        var_14 = 0;
                }
            }

            if ( var_14 )
            {
                if ( var_13._id_CEE7 || var_13._id_AB76[0] >= var_13._id_BB62 && var_13._id_AB76[0] <= var_13._id_C8BB && var_13._id_AB76[1] >= var_13._id_BFBD && var_13._id_AB76[1] <= var_13._id_CB9A )
                {
                    if ( !isdefined( var_11 ) )
                    {
                        var_11 = var_13;
                        continue;
                    }

                    var_11 = var_11 _id_B227( var_13 );
                }
            }
        }

        if ( isdefined( var_11 ) )
        {
            var_27 = var_11._id_D347;

            if ( var_11._id_CEE7 )
            {
                var_28 = common_scripts\utility::ter_op( var_11._id_D347 < 0, 1024, var_11._id_D347 );
                var_29 = var_10 + var_9 * var_28;
                var_23 = _id_B974( var_10, var_29, var_11._id_B872 );
                var_27 = distance( var_10, var_23["position"] );
            }
            else if ( isdefined( var_11._id_ACFD ) )
            {
                var_27 = distance( var_11._id_AFF4, var_10 );

                if ( var_11._id_D347 >= 0 && var_27 > var_11._id_D347 )
                    var_27 = var_11._id_D347;
            }

            var_30 = max( var_27 + var_11._id_D3F3, 1 );
            var_31 = undefined;

            if ( var_11._id_BEA6 )
            {
                if ( !isdefined( var_11._id_C2DB ) )
                {
                    var_11._id_A9D5 = var_11._id_C6DE;
                    var_11._id_B5DD = 64;

                    if ( !isdefined( var_4 ) )
                    {
                        var_11._id_C2DB = var_11._id_B5DD;
                        var_11._id_C4C1 = var_11._id_A9D5;
                    }
                    else
                    {
                        var_11._id_C2DB = var_11._id_A9D5;
                        var_11._id_C4C1 = var_11._id_B5DD;
                    }

                    var_11._id_CD8D = ( var_11._id_C4C1 - var_11._id_C2DB ) / ( var_11._id_C154 / var_3 );
                }
                else
                {
                    var_11._id_C2DB += var_11._id_CD8D;
                    var_11._id_C2DB = common_scripts\utility::_id_D0EA( var_11._id_C2DB, var_11._id_A9D5, var_11._id_B5DD );

                    if ( var_11._id_C2DB == var_11._id_C4C1 )
                        var_11._id_BEA6 = 0;
                }

                var_31 = var_11._id_C2DB;
            }
            else
                var_31 = var_11._id_C6DE;

            var_5 = _id_D254( var_31 * var_11._id_AC69, var_3, var_11._id_D2B6, var_5 );
            level.player _meth_84BA( var_31, var_30, var_11._id_B04E, var_11._id_D2B6 );
            level.player _meth_84CB( var_5, var_30 );
            var_4 = var_11;
        }

        wait( var_3 );
    }
}

_id_B974( var_0, var_1, var_2 )
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
            if ( common_scripts\utility::array_contains( var_2, var_9 ) )
                var_4 = var_5["position"] + var_10 * 2;
            else
                var_3 = 0;

            continue;
        }

        var_3 = 0;
    }

    return var_5;
}

_id_B227( var_0 )
{
    if ( var_0._id_BC75 > self._id_BC75 )
        return var_0;

    if ( var_0._id_BEE2 > self._id_BEE2 )
        return var_0;

    return self;
}

_id_D254( var_0, var_1, var_2, var_3 )
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

_id_C8AA( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        if ( _func_2CB( var_0 ) )
            wait( var_0 );
        else if ( isdefined( var_0.classname ) )
        {
            while ( isdefined( var_0 ) )
                waitframe();
        }
        else
        {

        }
    }

    level notify( "stop_dynamic_dof" );
    setsaveddvar( "r_dof_physical_bokehEnable", 0 );
    level._id_C259 = undefined;
    level.player _meth_84B9();
}

_id_A97A( var_0, var_1 )
{
    if ( !isdefined( level._id_CB2F ) )
        level._id_CB2F = [];

    if ( isdefined( var_0 ) )
    {
        if ( !isdefined( level._id_CB2F[var_0] ) )
            level._id_CB2F[var_0] = _id_D490( var_0 );

        if ( isdefined( var_1 ) && var_1 )
            level._id_CB2F[var_0]._id_C4DA = [];

        return level._id_CB2F[var_0];
    }

    return undefined;
}

_id_D490( var_0 )
{
    var_1 = spawnstruct();
    var_1._id_CFC1 = var_0;
    var_1._id_B816 = 0;
    var_1._id_C4DA = [];
    return var_1;
}

_id_BEA0( var_0, var_1 )
{
    var_2 = self._id_C4DA.size;
    self._id_C4DA[var_2] = _id_AA77( var_2 );
    self._id_C4DA[var_2]._id_C16C = self;

    if ( isdefined( var_0 ) )
        self._id_C4DA[var_2] _id_C2FB( var_0 );

    return self._id_C4DA[var_2];
}

_id_C7F3( var_0 )
{
    return self;
}

_id_AD95()
{
    return self._id_B816;
}

_id_BC26()
{
    if ( !self._id_B816 )
    {
        foreach ( var_1 in self._id_C4DA )
            var_1._id_B816 = undefined;

        self._id_B816 = 1;
        _id_C682();
    }
    else
    {

    }

    return self;
}

_id_C682()
{
    var_0 = gettime();
    var_1 = gettime();
    var_2 = 0.05;

    for ( var_3 = 1; var_3; var_1 = gettime() )
    {
        var_4 = var_1 - var_0;
        var_3 = 0;

        for ( var_5 = 0; var_5 < self._id_C4DA.size; var_5++ )
        {
            var_6 = self._id_C4DA[var_5];

            if ( !isdefined( var_6._id_B816 ) )
            {
                var_3 = 1;

                if ( isdefined( var_6._id_C010 ) && var_4 > var_6._id_C010 * 1000 )
                {
                    _id_BB09( var_6 );
                    var_6._id_B816 = 1;
                }
            }
        }

        wait( var_2 );
    }

    self._id_B816 = 0;
}

_id_BB09( var_0 )
{
    if ( isdefined( var_0._id_C7E3 ) )
    {
        foreach ( var_2 in var_0._id_C7E3 )
            var_2 _id_BEDC();
    }

    if ( isdefined( var_0._id_D032 ) )
        var_0 _id_BF6D();

    if ( isdefined( var_0._id_D0A8 ) )
        var_0._id_D0A8 _id_CA15();

    if ( isdefined( var_0._id_D2C1 ) )
        var_0 _id_AB58();

    var_0 _id_BA62();

    if ( isdefined( var_0._id_CD36 ) )
        var_0 _id_D007();

    if ( isdefined( var_0._id_C4BE ) )
        var_0 thread _id_C50E();

    if ( isdefined( var_0._id_AD2A ) )
        var_0 _id_B029();

    if ( isdefined( var_0._id_CEB1 ) )
        var_0 _id_C7FB();

    if ( isdefined( var_0._id_B1FB ) )
        var_0 _id_AF3C();

    if ( isdefined( var_0._id_D181 ) )
        var_0 _id_B1DE();

    if ( isdefined( var_0._id_D1AD ) )
        var_0 _id_CAF8();

    if ( isdefined( var_0.headtracking_list ) )
    {
        foreach ( var_5 in var_0.headtracking_list )
            var_5 __cinseq_handle_headtracking_internal();
    }
}

_id_CA15()
{
    level.player screenshakeonentity( self._id_AE4D, self.yaw_scale, self._id_D5A4, self.duration, self._id_C6F0, self._id_A984, self.radius, self._id_BB61, self._id_C0AC, self._id_C9C2, self.exponent );
}

_id_D007()
{
    if ( isdefined( self._id_CF18 ) )
        setslowmotion( gettimescale(), self._id_CF18, self._id_CD36 );
    else
        setslowmotion( gettimescale(), level.slowmo.speed_norm, self._id_CD36 );
}

_id_BF6D()
{
    setblur( self._id_D032, self._id_B744 );
}

_id_AB58()
{
    if ( !isdefined( self._id_C16C._id_D2AF ) )
        self._id_C16C._id_D2AF = getdvarfloat( "cg_fov" );

    if ( self._id_D2C1 == -1 )
        level.player lerpfov( self._id_C16C._id_D2AF, self._id_C142, self._id_D1AE );
    else
        level.player lerpfov( self._id_D2C1, self._id_C142, self._id_D1AE );
}

_id_C50E()
{
    self.rumble_entity playrumblelooponentity( self._id_C4BE );

    if ( isdefined( self.rumble_duration ) )
    {
        wait( self.rumble_duration );
        self.rumble_entity _meth_80B6( self._id_C4BE );
    }
}

_id_B029()
{
    if ( !isdefined( self._id_C16C._id_CCA2 ) )
        self._id_C16C._id_CCA2 = getdvar( "sv_znear" );

    if ( self._id_AD2A == -1 )
        setsaveddvar( "sv_znear", self._id_C16C._id_CCA2 );
    else
        setsaveddvar( "sv_znear", self._id_AD2A );
}

_id_C7FB()
{
    earthquake( self._id_CEB1, self._id_B1CA, self._id_BFD7.origin, self._id_CB4E );
}

_id_AF3C()
{
    setsaveddvar( "r_mbEnable", self._id_B1FB );
}

_id_B1DE()
{
    level.player lerpviewangleclamp( self._id_D181, self._id_ABD5, self._id_BCED, self._id_CC87, self._id_B70D, self._id_C26A, self._id_C138 );
}

_id_CAF8()
{
    level.player setviewangleresistance( self._id_D1AD, self._id_B060, self._id_AA02, self._id_BD7B, self._id_D514 );
}

__cinseq_handle_headtracking_internal()
{
    switch ( self.headtracking_function_type )
    {
        case "start":
            self.headtracking_entity _id_B3AB::_id_BEBA( self.headtracking_type, self.headtracking_target, self.headtracking_radius, self.headtracking_max_left, self.headtracking_max_right, self.headtracking_max_down, self.headtracking_max_up, self.headtracking_eye_tracking, self.headtracking_paused_on_start, self.headtracking_add_pitchdown, self.headtracking_yaw_offfset );
            break;
        case "stop":
            self.headtracking_entity _id_B3AB::_id_B0AC();
            break;
        case "pause":
            self.headtracking_entity _id_B3AB::_id_B6FF();
            break;
        case "resume":
            self.headtracking_entity _id_B3AB::_id_AC8B();
            break;
    }
}

_id_BEDC()
{
    var_0 = self._id_C6EC;

    switch ( self.params.size )
    {
        case 0:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]();
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]();
            else
                call [[ self._id_AB12 ]]();

            break;
        case 1:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0] );
            else
                call [[ self._id_AB12 ]]( self.params[0] );

            break;
        case 2:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1] );

            break;
        case 3:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2] );

            break;
        case 4:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3] );

            break;
        case 5:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4] );

            break;
        case 6:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5] );

            break;
        case 7:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6] );

            break;
        case 8:
            if ( _func_314( self._id_AB12 ) )
                var_0 thread [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6], self.params[7] );
            else if ( isdefined( var_0 ) )
                var_0 call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6], self.params[7] );
            else
                call [[ self._id_AB12 ]]( self.params[0], self.params[1], self.params[2], self.params[3], self.params[4], self.params[5], self.params[6], self.params[7] );

            break;
        default:
            break;
    }
}

_id_AA77( var_0 )
{
    var_1 = spawnstruct();
    var_1.name = var_0;
    var_1._id_ABEF = 0;
    var_1._id_BD03 = 0;
    var_1._id_CD56 = 0;
    var_1._id_CB1C = 0;
    var_1.headtracking_list = [];
    return var_1;
}

_id_C2FB( var_0 )
{
    if ( isdefined( self._id_C010 ) )
        return self;

    self._id_C010 = var_0;
    return self;
}

_id_A970( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( self._id_C7E3 ) )
        self._id_C7E3 = [];

    var_10 = spawnstruct();
    var_10._id_AB12 = var_0;
    var_10._id_C6EC = var_1;

    if ( !isdefined( var_1 ) && _func_314( var_0 ) )
        var_10._id_C6EC = level;

    var_10.params = [];
    var_11 = [ var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ];

    for ( var_12 = 0; var_12 < var_11.size; var_12++ )
    {
        if ( isdefined( var_11[var_12] ) )
        {
            var_10.params[var_12] = var_11[var_12];
            continue;
        }

        break;
    }

    self._id_C7E3[self._id_C7E3.size] = var_10;
    return self;
}

_id_AD68( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._id_D032 = var_0;
    self._id_B744 = var_1;
    return self;
}

_id_CF2C( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    _id_AD68( 0, var_0 );
    return self;
}

_id_AC11()
{
    var_0 = spawnstruct();
    var_0._id_AE4D = 0;
    var_0.yaw_scale = 0;
    var_0._id_D5A4 = 0;
    var_0.duration = 0;
    var_0._id_C6F0 = 0;
    var_0._id_A984 = 0;
    var_0.radius = 0;
    var_0._id_BB61 = 1;
    var_0._id_C9C2 = 1;
    var_0._id_C0AC = 1;
    var_0.exponent = 1;
    return var_0;
}

_id_A9C9( var_0 )
{
    self._id_D0A8 = var_0;
    return self;
}

_id_AC9F( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._id_D2C1 = var_0;
    self._id_C142 = var_1;
    self._id_D1AE = 1;

    if ( isdefined( var_2 ) )
        self._id_D1AE = var_2;

    return self;
}

_id_A9EC( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_D2C1 = -1;
    self._id_C142 = var_0;
    self._id_D1AE = 1;

    if ( isdefined( var_1 ) )
        self._id_D1AE = var_1;

    return self;
}

_id_BF61( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    self._id_CF18 = var_0;
    self._id_CD36 = var_1;
    return self;
}

_id_C358( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_1 = 1;

    self._id_CD36 = var_0;
    return self;
}

_id_AF90( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    self._id_AD2A = var_0;
    return self;
}

_id_CFD7()
{
    self._id_AD2A = -1;
    return self;
}

_id_BC21( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        return self;

    if ( !isdefined( var_1 ) )
        var_1 = level.player;

    self._id_C4BE = var_0;
    self.rumble_entity = var_1;

    if ( isdefined( var_2 ) )
        self.rumble_duration = var_2;

    return self;
}

_id_B85E( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) )
        return self;

    self._id_CEB1 = var_0;
    self._id_B1CA = var_1;
    self._id_BFD7 = level.player;

    if ( isdefined( var_2 ) )
        self._id_BFD7 = var_2;

    self._id_CB4E = 64;

    if ( isdefined( var_3 ) )
        self._id_CB4E = var_3;

    return self;
}

_id_BAE4( var_0 )
{
    if ( !isdefined( var_0 ) )
        return self;

    self._id_B1FB = var_0;
    return self;
}

_id_C74A( var_0 )
{
    _id_BAE4( 0 );
    return self;
}

_id_D3C9( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_1 ) || !isdefined( var_2 ) || !isdefined( var_3 ) || !isdefined( var_4 ) || !isdefined( var_5 ) || !isdefined( var_6 ) )
        return self;

    self._id_D181 = var_0;
    self._id_ABD5 = var_1;
    self._id_BCED = var_2;
    self._id_CC87 = var_3;
    self._id_B70D = var_4;
    self._id_C26A = var_5;
    self._id_C138 = var_6;
    return self;
}

_id_B48E( var_0, var_1, var_2, var_3, var_4 )
{
    self._id_D1AD = 50;

    if ( isdefined( var_0 ) )
        self._id_D1AD = var_0;

    self._id_B060 = 50;

    if ( isdefined( var_1 ) )
        self._id_B060 = var_1;

    self._id_AA02 = 20;

    if ( isdefined( var_2 ) )
        self._id_AA02 = var_2;

    self._id_BD7B = 20;

    if ( isdefined( var_3 ) )
        self._id_BD7B = var_3;

    self._id_D514 = 1;

    if ( isdefined( var_4 ) )
        self._id_D514 = var_4;

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

_id_BA62()
{
    if ( self._id_CB1C )
        _id_ACC3();

    if ( isdefined( self._id_A9C7 ) )
    {
        foreach ( var_1 in self._id_A9C7 )
            _id_C149( var_1 );
    }

    if ( isdefined( self._id_C441 ) )
    {
        foreach ( var_4 in self._id_C441 )
            _id_B35D( var_4 );
    }

    if ( self._id_ABEF )
        thread _id_B9FF( self._id_BD03 );

    if ( self._id_CD56 )
        thread _id_C8AA();
}

_id_B35D( var_0 )
{
    var_1 = _id_C286( var_0.name );

    if ( isdefined( var_1 ) )
    {
        if ( isdefined( var_0._id_C6DE ) )
            var_1 _id_BCD7( var_0._id_C6DE );

        if ( isdefined( var_0._id_D347 ) )
            var_1 _id_D055( var_0._id_D347 );

        if ( isdefined( var_0._id_B04E ) )
            var_1 _id_BC2D( var_0._id_B04E );

        if ( isdefined( var_0._id_D2B6 ) )
            var_1 _id_BE4D( var_0._id_D2B6 );

        if ( isdefined( var_0._id_ACFD ) )
            var_1 _id_C7DE( var_0._id_ACFD );

        if ( isdefined( var_0.tag_name ) )
            var_1 _id_B1C9( var_0.tag_name );

        if ( isdefined( var_0.priority ) )
            var_1 _id_BC1F( var_0.priority );

        if ( isdefined( var_0.offset ) )
            var_1 _id_D480( var_0.offset );

        if ( isdefined( var_0._id_AC69 ) )
            var_1 _id_B616( var_0._id_AC69 );

        if ( isdefined( var_0._id_BEA6 ) )
            var_1 _id_AE60( var_0._id_C154 );

        if ( isdefined( var_0._id_B0FD ) )
            var_1 _id_B958( var_0._id_B0FD );
    }
}

_id_BF2C( var_0 )
{
    _id_C0F9( var_0 );
    return self;
}

_id_C491( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _id_C0F9( var_4 );
    var_5._id_C6DE = var_0;
    var_5._id_D347 = var_1;
    var_5._id_B04E = var_2;
    var_5._id_D2B6 = var_3;
    return self;
}

_id_CCA7( var_0, var_1, var_2 )
{
    var_3 = _id_C0F9( var_2 );
    var_3._id_ACFD = var_0;

    if ( isdefined( var_1 ) )
        var_3.tag_name = var_1;

    return self;
}

_id_CC19( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2.tag_name = var_0;
    return self;
}

_id_D150( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2._id_AC69 = var_0;
    return self;
}

_id_D594( var_0, var_1, var_2 )
{
    var_3 = _id_C0F9( var_2 );
    return self;
}

_id_AFCB( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2.priority = var_0;
    return self;
}

_id_ADE6( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2.offset = var_0;
    return self;
}

_id_B059( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2._id_BEA6 = 1;
    var_2._id_C154 = 1.0;

    if ( isdefined( var_0 ) )
        var_2._id_C154 = var_0;

    return self;
}

_id_AE01( var_0, var_1 )
{
    var_2 = _id_C0F9( var_1 );
    var_2._id_B0FD = var_0;
    return self;
}

_id_CC4F( var_0 )
{
    if ( !isdefined( self._id_A9C7 ) )
        self._id_A9C7 = [];

    self._id_A9C7 = common_scripts\utility::array_add( self._id_A9C7, var_0 );
    return self;
}

_id_AF9C( var_0 )
{
    self._id_ABEF = 1;

    if ( isdefined( var_0 ) )
        self._id_BD03 = var_0;

    return self;
}

_id_BF3F()
{
    self._id_CD56 = 1;
    return self;
}

_id_B687()
{
    self._id_CB1C = 1;
    return self;
}

_id_C0F9( var_0 )
{
    if ( !isdefined( self._id_C441 ) )
        self._id_C441 = [];

    if ( !isdefined( var_0 ) )
        var_0 = self.name;

    if ( !isdefined( self._id_C441[var_0] ) )
    {
        self._id_C441[var_0] = spawnstruct();
        self._id_C441[var_0].name = var_0;
    }

    return self._id_C441[var_0];
}
