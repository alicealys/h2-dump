// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID17557( var_0, var_1 )
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( self._ID1282 ) )
        return;

    if ( var_0 _meth_81F0() )
        return;

    var_2 = _ID42413::_ID47115( self._ID170 );
    var_3 = level._ID40069[var_2];
    var_4 = level._ID40069[var_2].size;
    self._ID3575[self._ID3575.size] = var_0;
    var_5 = _unknown_0CAB( var_0, var_4 );

    if ( !_func_02F( var_5 ) )
        return;

    if ( var_5 == 0 )
        var_0._ID11803 = 1;

    var_6 = _unknown_03DC( self, var_5 );
    self._ID39936[var_5] = 1;
    var_0._ID40222 = var_5;
    var_0._ID40170 = 0;

    if ( _func_02F( var_6._ID10179 ) )
    {
        var_0._ID10179 = var_6._ID10179;

        if ( _func_02F( var_6._ID10219 ) )
            self._ID10217 = var_0._ID10179;
    }

    if ( _func_02F( var_6._ID10219 ) )
    {
        self._ID10217 = self._ID10217 + var_6._ID10219;
        var_0._ID10179 = self._ID10217;
    }

    var_0._ID29969 = self;
    var_0._ID25994 = var_0._ID486;
    var_0._ID40167 = var_6._ID19302;
    var_0._ID40267 = var_6._ID35592;

    if ( _func_02F( var_6._ID24881 ) )
        var_0._ID7._ID24881 = 1;

    var_0._ID9813 = var_6._ID264;
    var_0._ID9797 = var_6._ID9797;
    var_0._ID23614 = var_6._ID23614;
    var_0._ID9814 = var_6._ID9834;
    var_0._ID35596 = 0;

    if ( _func_02F( var_6._ID16491 ) )
    {
        var_0._ID15885 = _func_067( var_6._ID16491 );
        var_0._ID15883 = var_6._ID16491;

        if ( _func_02F( var_6._ID47712 ) )
            var_0._ID47712 = 1;
    }

    var_0._ID49 = 0;

    if ( _func_02F( var_0._ID9813 ) && !_func_02F( var_0._ID22746 ) && _unknown_022E() )
    {
        if ( var_0._ID40222 != 0 || _unknown_0237() )
        {
            var_0._ID49 = !_func_02F( var_0._ID31031 ) || var_0._ID31031;

            if ( _func_02F( var_6._ID9801 ) )
                var_0._ID24924 = var_6._ID9801;
        }
    }

    if ( var_0._ID170 == "script_model" )
    {
        if ( _func_02F( var_6._ID264 ) && var_0._ID49 && !_func_02F( var_0._ID31031 ) || var_0._ID31031 )
            thread _unknown_02CA( var_0, var_6 );
    }

    if ( !_func_02F( var_0._ID40167 ) )
        var_0._ID49 = 1;

    self._ID29965[self._ID29965.size] = var_0;

    if ( var_0._ID170 != "script_model" && _ID42407::_ID35060( var_0 ) )
        return;

    var_7 = _unknown_02A5( var_6 );
    var_8 = _unknown_02B6( var_6 );
    _unknown_0552( var_0, var_6._ID34225, var_6._ID34226, var_6._ID22432, var_6._ID34227, var_6._ID23512 );

    if ( _func_0D4( var_0 ) )
    {
        var_0 _meth_81D1( var_7, var_8 );
        var_0._ID7._ID11036 = var_0._ID7._ID11035;
        var_0._ID7._ID11035 = 1;

        if ( _func_02F( var_6._ID5174 ) && !var_6._ID5174 )
            var_0 _ID42407::_ID17509();

        if ( _unknown_0323( var_6 ) )
            thread _unknown_0EB4( var_0, var_5, var_1 );
    }
    else
    {
        if ( _func_02F( var_6._ID5174 ) && !var_6._ID5174 )
            _unknown_101A( var_0, "weapon_" );

        var_0._ID740 = var_7;
        var_0._ID65 = var_8;
    }

    if ( var_5 == 0 && _func_02F( var_3[0]._ID264 ) )
        thread _unknown_0594( var_0 );

    self notify( "guy_entered",  var_0, var_5  );
    thread _unknown_066B( var_0, var_5 );

    if ( _func_02F( var_6._ID29963 ) )
        var_0 [[ var_6._ID29963 ]]();
    else
    {
        if ( _func_02F( self._ID26242 ) )
            var_0._ID26242 = 1;

        if ( _func_02F( var_6._ID16343 ) )
        {
            thread [[ var_6._ID16343 ]]( var_0, var_5 );
            return;
        }

        thread _unknown_073F( var_0, var_5 );
    }
}

_ID40077( var_0 )
{
    var_1 = self;

    if ( _func_02F( var_0._ID34227 ) && var_0._ID34227 )
        var_1 = self._ID23512[var_0._ID23512];

    return var_1 _meth_818C( var_0._ID34225 );
}

_ID40076( var_0 )
{
    var_1 = self;

    if ( _func_02F( var_0._ID34227 ) && var_0._ID34227 )
        var_1 = self._ID23512[var_0._ID23512];

    return var_1 _meth_818D( var_0._ID34225 );
}

_ID40072()
{
    if ( !_func_02F( self._ID31028 ) )
        return 0;

    return self._ID31028;
}

_ID40073()
{
    if ( !_func_02F( self._ID31030 ) )
        return 1;

    return self._ID31030;
}

_ID17586( var_0 )
{
    if ( !_func_02F( var_0._ID23512 ) )
        return 0;

    if ( !_func_02F( self._ID31364 ) )
        return 1;

    return !self._ID31364;
}

_ID17698()
{
    var_0 = self._ID170;
    self._ID3575 = [];

    if ( !_func_02F( level._ID40069 ) && _func_02F( level._ID40069[var_0] ) )
        return;

    var_1 = level._ID40069[var_0].size;

    if ( _func_02F( self._ID922 ) && self._ID922 == "ai_wait_go" )
        thread _unknown_0FC7();

    self._ID30439 = [];
    self._ID39936 = [];
    self._ID16346 = [];
    self._ID10217 = 0;
    var_2 = level._ID40069[var_0];

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self._ID39936[var_3] = 0;

        if ( _func_02F( self._ID31364 ) && self._ID31364 && _func_02F( var_2[var_3]._ID5255 ) && var_2[var_3]._ID5255 )
            self._ID39936[1] = 1;
    }
}

_ID22467( var_0 )
{
    _unknown_054C( var_0, 1 );
}

_ID17546( var_0, var_1 )
{
    waitframe;
    var_0 _meth_82CA( 1 );
    var_0 endon( "death" );
    var_0._ID49 = 0;
    var_0._ID486 = 10150;

    if ( _func_02F( var_0._ID31454 ) )
        var_0._ID486 = var_0._ID486 + var_0._ID31454;

    var_0 endon( "jumping_out" );

    if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
    {
        while ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
            wait 0.05;
    }

    while ( var_0._ID486 > 10000 )
        var_0 waittill( "damage" );

    thread _unknown_0579( var_0, var_1 );
}

_ID17549( var_0, var_1 )
{
    var_2 = _func_03D() + _func_067( var_1._ID264 ) * 1000;
    var_3 = var_0._ID65;
    var_4 = var_0._ID740;
    var_5 = !_func_0D4( var_0 );

    if ( !var_5 )
        var_0 = _unknown_118B( var_0 );

    [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_4 );
    _unknown_1230( var_0, "weapon_" );

    if ( !var_5 )
        var_0 _meth_8053( self, var_1._ID34225, ( 0, 0, 0 ), ( 0, 0, 0 ) );

    var_0 _meth_82C9();
    thread _unknown_0EAE( var_0, var_1._ID34225, var_1._ID264 );

    if ( !_func_02F( var_1._ID9795 ) )
        var_0 waittillmatch( "animontagdone",  "start_ragdoll"  );
    else
    {
        var_0 _meth_8055();
        var_0 _meth_8023();
        wait(var_1._ID9795);
        var_0 _meth_80B7();
        return;
    }

    var_0 _meth_8055();

    if ( _func_039( "ragdoll_enable" ) == "0" )
    {
        var_0 _meth_80B7();
        return;
    }

    while ( _func_03D() < var_2 && !var_0 _meth_81F0() )
    {
        var_0 _meth_8023();
        wait 0.05;
    }

    if ( !var_0 _meth_81F0() )
        var_0 _meth_80B7();
}

_ID22466( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_0 ) )
        var_0 = _unknown_06BC();

    _ID42407::_ID13021( "unloaded" );
    _ID42407::_ID13021( "loaded" );
    _ID42237::_ID3315( var_0, ::_unknown_06FA, var_1, var_2 );
}

_ID20602( var_0 )
{
    for ( var_1 = 0; var_1 < self._ID29965.size; var_1++ )
    {
        if ( self._ID29965[var_1] == var_0 )
            return 1;
    }

    return 0;
}

_ID40143()
{
    var_0 = [];
    var_1 = _func_0DE( self._ID31474 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( !_func_02F( var_3._ID31516 ) )
            continue;

        if ( var_3._ID31516 != self._ID31516 )
            continue;

        var_0[var_0.size] = var_3;
    }

    return var_0;
}

_ID15844()
{
    var_0 = [];
    var_1 = _ID42411::_ID49705();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( !_func_02F( var_3._ID31516 ) )
            continue;

        if ( var_3._ID31516 != self._ID31516 )
            continue;

        var_0[var_0.size] = var_3;
    }

    return var_0[0];
}

_ID15787( var_0, var_1, var_2 )
{
    if ( _unknown_0768( var_0 ) )
        return;

    if ( !_unknown_07A7() )
        return;

    _unknown_07FF( var_0, self, var_1, var_2 );
}

_ID17742()
{
    if ( _unknown_07B9() )
        return 1;
}

_ID40162()
{
    if ( level._ID40069[self._ID170].size - self._ID30439.size )
        return 1;
    else
        return 0;
}

_ID17585( var_0, var_1 )
{
    var_1 endon( "death" );
    var_1 endon( "stop_loading" );
    var_2 = var_0 _ID42237::_ID41075( "long_death", "death", "enteredvehicle" );

    if ( var_2 != "enteredvehicle" && _func_02F( var_0._ID14778 ) )
        var_1._ID39936[var_0._ID14778] = 0;

    var_1._ID30439 = _ID42237::_ID3321( var_1._ID30439, var_0 );
    _unknown_083C( var_1 );
}

_ID40202( var_0 )
{
    if ( _func_02F( var_0._ID1282 ) && _func_02F( var_0._ID40203 ) )
    {
        if ( var_0._ID29965.size == var_0._ID40203 )
            var_0 _ID42407::_ID13025( "loaded" );
    }
    else if ( !var_0._ID30439.size && var_0._ID29965.size )
    {
        if ( var_0._ID39936[0] )
            var_0 _ID42407::_ID13025( "loaded" );
        else
            var_0 thread _unknown_08A6();
    }
}

_ID40224()
{
    var_0 = self._ID29965;
    _ID42411::_ID40298();
    _ID42407::_ID13027( "unloaded" );
    var_0 = _ID42407::_ID3328( var_0 );
    thread _ID42411::_ID40200( var_0 );
}

_ID29549( var_0 )
{
    _ID42237::_ID41068( "unload", "death" );
    var_0 _ID42407::_ID36519();
}

_ID17583( var_0, var_1, var_2, var_3, var_4 )
{
    var_1 endon( "stop_loading" );
    var_5 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    var_6 = level._ID40069[var_1._ID170];

    if ( _func_02F( var_1._ID30445 ) )
    {
        var_1 thread [[ var_1._ID30445 ]]( var_0 );
        return;
    }

    var_1 endon( "death" );
    var_0 endon( "death" );
    var_1._ID30439[var_1._ID30439.size] = var_0;
    thread _unknown_08F3( var_0, var_1 );
    var_7 = [];
    var_8 = undefined;
    var_9 = 0;
    var_10 = 0;

    for ( var_11 = 0; var_11 < var_6.size; var_11++ )
    {
        if ( _func_02F( var_6[var_11]._ID16341 ) )
            var_10 = 1;
    }

    if ( !var_10 )
    {
        var_0 notify( "enteredvehicle" );
        var_1 _unknown_0732( var_0, var_5 );
        return;
    }

    if ( !_func_02F( var_0._ID15786 ) )
    {
        while ( var_1 _meth_8290() > 1 )
            wait 0.05;
    }

    var_12 = var_1 _unknown_1504( var_3 );

    if ( _func_02F( var_0._ID31455 ) )
        var_8 = var_1 _unknown_14E8( var_0._ID31455 );
    else if ( !var_1._ID39936[0] )
    {
        var_8 = var_1 _unknown_14FB( 0 );

        if ( var_2 )
        {
            var_0 thread _ID42407::_ID22746();
            thread _unknown_09BB( var_0 );
        }
    }
    else if ( var_12._ID4471.size )
        var_8 = _ID42237::_ID16182( var_0._ID740, var_12._ID4471 );
    else
        var_8 = undefined;

    if ( !var_12._ID4471.size && var_12._ID24916.size )
    {
        var_0 notify( "enteredvehicle" );
        var_1 _unknown_07C3( var_0, var_5 );
        return;
    }
    else if ( !_func_02F( var_8 ) )
        return;

    var_9 = var_8._ID740;
    var_13 = var_8._ID65;

    if ( _func_02F( var_4 ) )
    {
        var_14 = var_8._ID740 - var_1._ID740;
        var_15 = _func_11E( var_1._ID65 );
        var_16 = _func_0FB( var_14, var_15 ) > 0;
        var_17 = _ID42407::_ID49965( var_15, var_4 );

        if ( var_16 )
            var_9 += var_17;
        else
            var_9 -= var_17;
    }

    var_0._ID14778 = var_8._ID40222;
    var_1._ID39936[var_8._ID40222] = 1;
    var_0._ID31299 = 1;
    var_0 notify( "stop_going_to_node" );
    var_0 _ID42407::_ID32322();
    var_0 _ID42407::_ID10877();
    var_0._ID452 = 16;
    var_0 _meth_81B2( var_9 );
    var_0 waittill( "goal" );
    var_0 _ID42407::_ID12452();
    var_0 _ID42407::_ID39524();
    var_0 notify( "boarding_vehicle" );
    var_18 = _unknown_0BF9( var_1, var_8._ID40222 );

    if ( _func_02F( var_18._ID10179 ) )
    {
        var_0._ID10179 = var_18._ID10179;

        if ( _func_02F( var_18._ID10219 ) )
            self._ID10217 = var_0._ID10179;
    }

    if ( _func_02F( var_18._ID10219 ) )
    {
        self._ID10217 = self._ID10217 + var_18._ID10219;
        var_0._ID10179 = self._ID10217;
    }

    var_1 _unknown_0C26( var_0, var_18._ID34225, var_18._ID34226, var_18._ID22432 );
    var_0._ID49 = 0;
    var_18 = var_6[var_8._ID40222];

    if ( _func_02F( var_8 ) )
    {
        if ( _func_02F( var_18._ID40147 ) )
        {
            if ( _func_02F( var_18._ID40152 ) )
            {
                var_19 = _func_02F( var_0._ID24855 );

                if ( !var_19 )
                    var_1 _meth_814C( var_18._ID40152, 0 );
            }

            var_1 = var_1 _unknown_16C0();
            var_1 thread _unknown_0F4F( var_18._ID40147, var_18._ID40148 );
            level thread _ID42259::_ID35866( var_1, "vehicle_anim_flag" );
        }

        if ( _func_02F( var_18._ID40150 ) )
            var_9 = var_1 _meth_818C( var_18._ID40150 );
        else
            var_9 = var_1._ID740;

        if ( _func_02F( var_18._ID40149 ) )
            thread _ID42237::_ID27077( var_18._ID40149, var_9 );

        var_20 = undefined;
        var_21 = undefined;

        if ( _func_02F( var_18._ID16342 ) )
        {
            var_20 = [];
            var_20[0] = var_18._ID16342;
            var_21 = [];
            var_21[0] = ::_unknown_0C7D;
            var_1 _unknown_0CD6( var_0, var_18._ID34225, var_18._ID34226, var_18._ID22432 );
        }

        var_1 _unknown_1398( var_0, var_18._ID34225, var_18._ID16341, var_20, var_21 );
    }

    var_0 notify( "enteredvehicle" );
    var_1 _unknown_0985( var_0, var_5 );
}

_ID13065()
{
    self notify( "enteredvehicle" );
}

_ID11786( var_0 )
{
    if ( _ID42411::_ID20763() )
        return;

    self._ID11783 = var_0;
    self endon( "death" );
    var_0 endon( "jumping_out" );
    var_0 waittill( "death" );

    if ( _func_02F( self._ID40176 ) )
        return;

    self notify( "driver dead" );
    self._ID9788 = 1;

    if ( _func_02F( self._ID18249 ) && self._ID18249 )
    {
        self _meth_828B( 0 );
        self _meth_828D( 0, 10 );
        self waittill( "reached_wait_speed" );
    }

    _ID42411::_ID40298();
}

_ID8664()
{
    var_0 = _func_06A( "script_model", self._ID740 );
    var_0 _meth_80B8( self._ID669 );
    var_1 = self _meth_802C();

    for ( var_2 = 0; var_2 < var_1; var_2++ )
        var_0 _meth_801D( self _meth_802D( var_2 ) );

    return var_0;
}

_ID17541( var_0, var_1 )
{
    if ( _func_0D4( var_0 ) )
        return var_0;

    if ( var_0._ID11842 == 1 )
        var_0 _meth_80B7();
    else
    {
        var_0 = _ID42407::_ID36874( var_0 );
        var_2 = self._ID170;
        var_3 = level._ID40069[var_2].size;
        var_4 = _unknown_0DC2( self, var_1 );
        _unknown_0DB6( var_0, var_4._ID34225, var_4._ID34226, var_4._ID22432 );
        var_0._ID40167 = var_4._ID19302;
        thread _unknown_0EE9( var_0, var_1 );
    }
}

_ID22404( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = self;

    if ( _func_02F( var_4 ) && var_4 )
        var_6 = self._ID23512[var_5];

    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( var_3 && !_func_02F( var_0._ID31152 ) )
        var_0 _meth_8054( var_6, var_1, 0 );
    else
        var_0 _meth_8053( var_6, var_1, var_2, ( 0, 0, 0 ) );
}

_ID3052( var_0, var_1 )
{
    var_2 = _ID42413::_ID47115( var_0._ID170 );
    return level._ID40069[var_2][var_1];
}

_ID17548( var_0, var_1 )
{
    var_0 waittill( "death" );

    if ( !_func_02F( self ) )
        return;

    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
}

_ID32840()
{
    if ( !_func_02F( level._ID40070 ) )
        level._ID40070 = [];

    if ( !_func_02F( level._ID40068 ) )
        level._ID40068 = [];

    level._ID40070["idle"] = ::_unknown_0F8E;
    level._ID40070["duck"] = ::_unknown_1034;
    level._ID40070["duck_once"] = ::_unknown_100A;
    level._ID40068["duck_once"] = ::_unknown_100F;
    level._ID40070["weave"] = ::_unknown_103C;
    level._ID40068["weave"] = ::_unknown_1041;
    level._ID40070["turn_right"] = ::_unknown_1763;
    level._ID40068["turn_right"] = ::_unknown_1768;
    level._ID40070["turn_left"] = ::_unknown_178C;
    level._ID40068["turn_left"] = ::_unknown_177D;
    level._ID40070["turn_hardright"] = ::_unknown_17BB;
    level._ID40070["turn_hardleft"] = ::_unknown_17D0;
    level._ID40070["turret_fire"] = ::_unknown_0FEB;
    level._ID40070["turret_turnleft"] = ::_unknown_0FDA;
    level._ID40070["turret_turnright"] = ::_unknown_0FF2;
    level._ID40070["unload"] = ::_unknown_1287;
    level._ID40070["pre_unload"] = ::_unknown_199B;
    level._ID40068["pre_unload"] = ::_unknown_19A0;
    level._ID40070["idle_alert"] = ::_unknown_19C5;
    level._ID40068["idle_alert"] = ::_unknown_19E1;
    level._ID40070["idle_alert_to_casual"] = ::_unknown_19F0;
    level._ID40068["idle_alert_to_casual"] = ::_unknown_1A0D;
    level._ID40070["reaction"] = ::_unknown_1046;
}

_ID17565( var_0, var_1 )
{
    var_0._ID40170 = 1;
    thread _unknown_0F8A( var_0, var_1 );
}

_ID17588( var_0, var_1 )
{
    var_2 = _unknown_0F8F( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_0._ID35596 = 1;
    var_3 = 0;

    for (;;)
    {
        var_4 = _func_03D() + 2000;

        while ( _func_03D() < var_4 && _func_02F( var_0._ID322 ) )
            _unknown_1669( var_0, var_2._ID34225, var_0._ID40267, undefined, undefined, "firing" );

        var_5 = _func_0B7( 5 ) + 10;

        for ( var_6 = 0; var_6 < var_5; var_6++ )
            _unknown_1686( var_0, var_2._ID34225, var_2._ID35594 );
    }
}

_ID17589( var_0, var_1 )
{
    var_2 = _unknown_1003( self, var_1 );

    if ( !_func_02F( var_2._ID35593 ) )
    {
        thread _unknown_107F( var_0, var_1 );
        return;
    }

    _unknown_16B4( var_0, var_2._ID34225, var_2._ID35593 );
    var_0._ID35596 = 0;
    thread _unknown_1132( var_0, var_1 );
}

_ID11784( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_1045( self, var_1 );

    for (;;)
    {
        if ( self _meth_8290() == 0 )
            var_0._ID40167 = var_2._ID19309;
        else
            var_0._ID40167 = var_2._ID19305;

        wait 0.25;
    }
}

_ID17581( var_0, var_1 )
{
    var_2 = _unknown_1072( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    if ( _func_02F( var_2._ID29055 ) )
        _unknown_172C( var_0, var_2._ID34225, var_2._ID29055 );

    thread _unknown_11A4( var_0, var_1 );
}

_ID17599( var_0, var_1 )
{
    var_2 = _unknown_10A8( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        _unknown_175A( var_0, var_2._ID34225, var_0._ID39328 );
}

_ID17600( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_10E2( self, var_1 );

    for (;;)
        _unknown_1784( var_0, var_2._ID34225, var_0._ID39328 );
}

_ID17598( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_110C( self, var_1 );

    if ( _func_02F( var_2._ID40290 ) )
        _ID42413::_ID1462() _meth_8157( var_2._ID40290 );

    if ( _func_02F( var_2._ID1232 ) )
    {
        if ( _func_02F( var_2._ID39260 ) )
            _unknown_17D0( var_0, var_2._ID39260, var_2._ID1232 );
        else
            _unknown_17E1( var_0, var_2._ID34225, var_2._ID1232 );
    }

    thread _unknown_1259( var_0, var_1 );
}

_ID17566( var_0, var_1, var_2 )
{
    var_0 endon( "newanim" );

    if ( !_func_02F( var_2 ) )
        self endon( "death" );

    var_0 endon( "death" );
    var_0._ID40170 = 1;
    var_0 notify( "gotime" );

    if ( !_func_02F( var_0._ID40167 ) )
        return;

    var_3 = _unknown_1188( self, var_1 );

    if ( _func_02F( var_3._ID23512 ) )
        return;

    if ( _func_02F( var_3._ID18556 ) && var_3._ID18556 )
        var_0 _meth_805A();

    if ( _func_02F( var_3._ID19309 ) && _func_02F( var_3._ID19305 ) )
        thread _unknown_1260( var_0, var_1 );

    for (;;)
    {
        var_0 notify( "idle" );
        _unknown_12F8( var_0, var_3 );
    }
}

_ID27015( var_0, var_1 )
{
    if ( _func_02F( var_0._ID40168 ) )
    {
        _unknown_1878( var_0, var_1._ID34225, var_0._ID40168 );
        return;
    }

    if ( _func_02F( var_1._ID19329 ) )
    {
        var_2 = _unknown_134D( var_0, var_1._ID19329 );
        _unknown_1899( var_0, var_1._ID34225, var_0._ID40167[var_2] );
        return;
    }

    if ( _func_02F( var_0._ID27942 ) && _func_02F( var_1._ID27477 ) )
    {
        _unknown_18B8( var_0, var_1._ID34225, var_1._ID27477 );
        return;
    }

    if ( _func_02F( var_1._ID40167 ) )
        thread _unknown_14F6( var_1._ID40167 );

    _unknown_18D6( var_0, var_1._ID34225, var_0._ID40167 );
}

_ID28973( var_0, var_1 )
{
    var_2 = [];
    var_3 = 0;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_3 += var_1[var_4];
        var_2[var_4] = var_3;
    }

    var_5 = _func_0B7( var_3 );

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( var_5 < var_2[var_4] )
            return var_4;
    }
}

_ID17555( var_0, var_1 )
{
    return _func_02F( _unknown_1283( self, var_1 )._ID12217 );
}

_ID17554( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_12A2( self, var_1 );

    if ( _func_02F( var_2._ID12217 ) )
    {
        if ( _func_02F( var_2._ID40129 ) )
            thread _unknown_157D( var_2._ID40129 );

        _unknown_195D( var_0, var_2._ID34225, var_2._ID12217 );
    }

    thread _unknown_13D5( var_0, var_1 );
}

_ID17609( var_0, var_1 )
{
    return _func_02F( _unknown_12D9( self, var_1 )._ID41722 );
}

_ID17608( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_12F8( self, var_1 );

    if ( _func_02F( var_2._ID41722 ) )
    {
        if ( _func_02F( var_2._ID40303 ) )
            thread _unknown_15D3( var_2._ID40303 );

        _unknown_19B3( var_0, var_2._ID34225, var_2._ID41722 );
    }

    thread _unknown_142C( var_0, var_1 );
}

_ID17552( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_133F( self, var_1 );

    if ( _func_02F( var_2._ID12224 ) )
        _unknown_19E9( var_0, var_2._ID34225, var_2._ID12224 );

    thread _unknown_150F( var_0, var_1 );
}

_ID17553( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_1375( self, var_1 );
    var_3 = _unknown_14D6( var_0, var_2._ID12223 );

    for (;;)
        _unknown_1A22( var_0, var_2._ID34225, var_2._ID12222[var_3] );
}

_ID17556( var_0, var_1 )
{
    var_2 = _unknown_139A( self, var_1 );

    if ( _func_02F( var_2._ID12225 ) && var_0._ID12225 )
    {
        _unknown_1A4B( var_0, var_2._ID34225, var_2._ID12226 );
        var_0._ID12225 = 0;
    }

    thread _unknown_14C9( var_0, var_1 );
}

_ID17604( var_0 )
{
    self endon( "death" );
    self._ID39495 = _ID42237::_ID3293( self._ID39495, var_0 );
    var_0 _ID42237::_ID41068( "death", "jumpedout" );
    self._ID39495 = _ID42237::_ID3321( self._ID39495, var_0 );

    if ( !self._ID39495.size )
    {
        _ID42407::_ID13025( "unloaded" );
        self._ID39487 = "default";
    }
}

_ID29967( var_0 )
{
    if ( !_func_02F( self._ID29965 ) || !self._ID29965.size )
        return 0;

    for ( var_1 = 0; var_1 < self._ID29965.size; var_1++ )
    {
        if ( !_func_1A7( self._ID29965[var_1] ) )
            continue;

        if ( _unknown_164D( self._ID29965[var_1]._ID40222, var_0 ) )
            return 1;
    }

    return 0;
}

_ID16049()
{
    var_0 = [];
    var_1 = [];
    var_2 = "default";

    if ( _func_02F( self._ID39487 ) )
        var_2 = self._ID39487;

    var_1 = level._ID40300[self._ID170][var_2];

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID40300[self._ID170]["default"];

    if ( _func_02F( var_1 ) )
    {
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_0[var_4] = var_4;
        }

        var_clear_2
        var_clear_0
    }

    return var_0;
}

_ID7407( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = self._ID39487;

    var_2 = self._ID170;

    if ( !_func_02F( level._ID40300[var_2] ) )
        return 1;

    if ( !_func_02F( level._ID40300[var_2][var_1] ) )
        return 1;

    var_3 = level._ID40300[var_2][var_1];

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        if ( var_0 == var_3[var_4] )
            return 1;
    }

    return 0;
}

_ID16503( var_0, var_1, var_2 )
{
    self endon( "unloading" );

    for (;;)
        _unknown_1B79( var_0, var_1, var_2 );
}

_ID16502( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID42413::_ID47115( self._ID170 );

    if ( var_4 )
    {
        thread _unknown_173D( var_1, var_2, level._ID40080[var_5][var_0._ID13955]._ID19324 );
        self waittill( "unloading" );
    }

    self._ID39495 = _ID42237::_ID3293( self._ID39495, var_1 );
    thread _unknown_179E( var_1, var_2, var_3 );

    if ( !_func_02F( self._ID9056 ) )
        _unknown_1BC3( var_1, var_2, var_3 );

    var_1 _meth_8055();

    if ( !_func_02F( self ) )
    {
        var_1 _meth_80B7();
        return;
    }

    self._ID39495 = _ID42237::_ID3321( self._ID39495, var_1 );

    if ( !self._ID39495.size )
        self notify( "unloaded" );

    self._ID13955[var_0._ID13955] = undefined;
    wait 10;
    var_1 _meth_80B7();
}

_ID16501()
{
    wait 0.05;

    while ( _func_1A7( self ) && self._ID39495.size > 2 )
        wait 0.05;

    if ( !_func_1A7( self ) || _func_02F( self._ID9056 ) && self._ID9056 )
        return;

    self notify( "getoutrig_disable_abort" );
}

_ID16500()
{
    self endon( "end_getoutrig_abort_while_deploying" );

    while ( !_func_02F( self._ID9056 ) )
        wait 0.05;

    _ID42237::_ID3315( self._ID29965, _ID42407::_ID10321 );
    self notify( "crashed_while_deploying" );
}

_ID16499( var_0, var_1, var_2 )
{
    var_3 = _func_067( var_2 );
    var_4 = var_3 - 1.0;

    if ( self._ID1282 == "mi17" )
        var_4 = var_3 - 0.5;

    var_5 = 2.5;
    self endon( "getoutrig_disable_abort" );
    thread _unknown_1844();
    thread _unknown_185A();
    _ID42237::_ID41123( "crashed_while_deploying", var_5 );
    self notify( "end_getoutrig_abort_while_deploying" );

    while ( !_func_02F( self._ID9056 ) )
        wait 0.05;

    thread _unknown_1CA0( var_0, var_1, var_2 );
    waitframe;
    var_0 _meth_8120( var_2, var_4 / var_3 );
    var_6 = self;

    if ( _func_02F( self._ID1763 ) )
        var_6 = self._ID1763;

    for ( var_7 = 0; var_7 < self._ID29965.size; var_7++ )
    {
        if ( !_func_02F( self._ID29965[var_7] ) )
            continue;

        if ( !_func_02F( self._ID29965[var_7]._ID28894 ) )
            continue;

        if ( self._ID29965[var_7]._ID28894 != 1 )
            continue;

        if ( !_func_02F( self._ID29965[var_7]._ID29969 ) )
            continue;

        self._ID29965[var_7]._ID14786 = 1;

        if ( _func_1A7( self._ID29965[var_7] ) )
            thread _unknown_1DCF( self._ID29965[var_7], self, var_6 );
    }
}

_ID32549( var_0, var_1 )
{
    self endon( "death" );
    self endon( "dont_clear_anim" );

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    var_2 = _func_067( var_0 );
    var_3 = _ID42413::_ID1462();
    var_3 endon( "death" );
    var_3 _meth_811C( "vehicle_anim_flag", var_0, 1, 0, 1 );
    wait(var_2);

    if ( var_1 && !_func_02F( self._ID11552 ) || !self._ID11552 )
        var_3 _meth_814C( var_0, 0 );
}
#using_animtree("generic_human");

_ID16494( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    var_3 = _ID42413::_ID47115( self._ID170 );
    var_4 = _unknown_16E5( self, var_1 );

    if ( _func_02F( self._ID3563 ) && _func_02F( self._ID3563[var_4._ID13955] ) )
        var_5 = 1;
    else
        var_5 = 0;

    if ( !_func_02F( var_4._ID13955 ) || _func_02F( self._ID13955[var_4._ID13955] ) || var_5 )
        return;

    var_6 = var_0 _meth_818C( level._ID40080[var_3][var_4._ID13955]._ID1067 );
    var_7 = var_0 _meth_818D( level._ID40080[var_3][var_4._ID13955]._ID1067 );
    self._ID13956[var_4._ID13955] = 1;
    var_8 = _func_06A( "script_model", var_6 );
    var_8._ID65 = var_7;
    var_8._ID740 = var_6;
    var_8 _meth_80B8( level._ID40080[var_3][var_4._ID13955]._ID669 );
    self._ID13955[var_4._ID13955] = var_8;
    var_8 _meth_811E( #animtree );
    var_8 _meth_8053( var_0, level._ID40080[var_3][var_4._ID13955]._ID1067, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _unknown_19EE( var_4, var_8, level._ID40080[var_3][var_4._ID13955]._ID1067, level._ID40080[var_3][var_4._ID13955]._ID12144, var_2 );
    return var_8;
}

_ID7401( var_0 )
{
    if ( !_func_02F( self._ID34987 ) )
        self._ID34987 = [];

    var_1 = 0;

    if ( !_func_02F( self._ID34987[var_0] ) )
        self._ID34987[var_0] = 1;
    else
        var_1 = 1;

    thread _unknown_1B17( var_0 );
    return var_1;
}

_ID7402( var_0 )
{
    wait 0.05;

    if ( !_func_02F( self ) )
        return;

    self._ID34987[var_0] = 0;
    var_1 = _func_1D9( self._ID34987 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( self._ID34987[var_1[var_2]] )
            return;
    }

    self._ID34987 = undefined;
}

_ID17603( var_0, var_1 )
{
    if ( !_unknown_1A37( var_1 ) )
    {
        thread _unknown_192A( var_0, var_1 );
        return;
    }

    self._ID39495 = _ID42237::_ID3293( self._ID39495, var_0 );
    var_2 = var_0 [[ var_0._ID9580 ]]( self, var_1 );

    if ( !var_2 )
        thread _unknown_1945( var_0, var_1 );
    else
        _unknown_2362( var_0, var_1 );

    self._ID39495 = _ID42237::_ID3321( self._ID39495, var_0 );
    waitframe;

    if ( !self._ID39495.size )
    {
        _ID42407::_ID13025( "unloaded" );
        self._ID39487 = "default";
    }
}

_ID17602( var_0, var_1 )
{
    if ( _func_02F( var_0._ID9580 ) )
    {
        _unknown_1BC0( var_0, var_1 );
        return;
    }

    var_2 = _unknown_1880( self, var_1 );
    var_3 = self._ID1282;

    if ( _func_02F( var_2._ID24881 ) )
        var_0._ID7._ID24881 = 0;

    if ( !_unknown_1AB6( var_1 ) )
    {
        thread _unknown_19A8( var_0, var_1 );
        return;
    }

    if ( !_func_02F( var_2._ID16491 ) && !_func_02F( var_2._ID5326 ) )
    {
        thread _unknown_19C2( var_0, var_1 );
        return;
    }

    if ( _func_02F( var_2._ID18556 ) && var_2._ID18556 )
        var_0 _meth_8059();

    self endon( "death" );

    if ( _func_0D4( var_0 ) && _func_1A7( var_0 ) )
        var_0 endon( "death" );

    if ( _func_02F( var_0.vehicle_unload_delay ) && var_0.vehicle_unload_delay > 0 )
    {
        thread _unknown_1A02( var_0, var_1 );
        wait(var_0.vehicle_unload_delay);
        var_0.vehicle_unload_delay = undefined;
    }

    thread _unknown_1ADF( var_0 );

    if ( _func_02F( var_0._ID16482 ) )
    {
        if ( _func_02F( var_2._ID10179 ) )
        {
            wait(var_2._ID10179);
            var_2._ID10179 = undefined;
            var_0._ID10179 = undefined;
        }

        var_0 [[ var_0._ID16482 ]]();
    }

    if ( _func_02F( var_0._ID25830 ) )
    {
        var_0._ID25830 = undefined;

        if ( _func_02F( var_0._ID16482 ) )
            var_0 [[ var_0._ID16482 ]]();
    }

    var_4 = _unknown_238A();

    if ( _func_02F( var_2._ID40152 ) )
    {
        var_4 thread _unknown_1C21( var_2._ID40152, var_2._ID40153 );
        var_5 = 0;

        if ( _func_02F( var_2._ID40155 ) )
        {
            var_5 = _unknown_1C9C( var_2._ID40155 );
            var_6 = var_4 _meth_818C( var_2._ID40155 );
        }
        else
            var_6 = var_4._ID740;

        if ( _func_02F( var_2._ID40154 ) && !var_5 )
            thread _ID42237::_ID27077( var_2._ID40154, var_6 );

        var_5 = undefined;
    }

    var_7 = 0;

    if ( _func_02F( var_2._ID16497 ) )
        var_7 += _func_067( var_2._ID16497 );

    if ( _func_02F( var_2._ID10179 ) )
        var_7 += var_2._ID10179;

    if ( _func_02F( var_0._ID10179 ) )
        var_7 += var_0._ID10179;

    if ( var_7 > 0 )
    {
        thread _unknown_1ADE( var_0, var_1 );
        wait(var_7);
    }

    var_8 = _func_02F( var_2._ID16492 );

    if ( !var_8 && var_0._ID35596 )
        _unknown_1A86( var_0, var_1 );
    else if ( !var_8 && !var_0._ID40170 && _func_02F( var_0._ID40167 ) )
        var_0 waittill( "idle" );

    var_0._ID9813 = undefined;
    var_0._ID9814 = undefined;
    var_0 notify( "newanim" );

    if ( _func_02F( var_2._ID5174 ) && !var_2._ID5174 )
    {
        if ( !_func_02F( var_0._ID10925 ) )
            var_0 _ID42407::_ID17508();
    }

    if ( _func_0D4( var_0 ) )
        var_0 _meth_81AF( 1 );

    var_9 = 0;

    if ( _func_02F( var_2._ID5326 ) )
        var_9 = 1;
    else if ( !_func_02F( var_2._ID16491 ) || !_func_02F( self._ID31499 ) && _func_02F( var_2._ID5255 ) && var_2._ID5255 || _func_02F( self._ID31262 ) && var_1 == 0 )
    {
        thread _unknown_1B96( var_0, var_1 );
        return;
    }

    if ( var_0 _unknown_24F6() )
        var_0._ID486 = var_0._ID25994;

    var_0._ID25994 = undefined;

    if ( _func_0D4( var_0 ) && _func_1A7( var_0 ) )
        var_0 endon( "death" );

    var_0._ID49 = 0;

    if ( _func_02F( var_2._ID13393 ) )
        var_10 = var_2._ID13393;
    else
        var_10 = var_2._ID34225;

    if ( var_8 && var_0._ID35596 )
        var_11 = var_2._ID16492;
    else if ( _func_02F( var_0._ID15884 ) )
        var_11 = var_0._ID15884;
    else if ( _func_02F( var_0._ID27942 ) && _func_02F( var_2._ID27434 ) )
        var_11 = var_2._ID27434;
    else
        var_11 = var_2._ID16491;

    if ( !var_9 )
    {
        if ( !_func_02F( var_0._ID26242 ) )
            thread _unknown_2465( var_0 );

        if ( _func_02F( var_2._ID13955 ) )
        {
            if ( !_func_02F( self._ID13955[var_2._ID13955] ) )
            {
                thread _unknown_1C48( var_0, var_1 );
                var_12 = _unknown_1E26( var_4, var_0._ID40222, 0 );
            }
        }

        if ( _func_02F( var_2._ID16504 ) )
            var_0 thread _ID42407::_ID27080( var_2._ID16504, "J_Wrist_RI", 1 );

        if ( _func_02F( var_0._ID27942 ) && _func_02F( var_2._ID27435 ) )
            var_0 thread _ID42407::_ID27079( var_2._ID27435 );

        if ( _func_02F( var_2._ID16498 ) )
            var_0 thread _ID42407::_ID27001( var_2._ID16498 );

        if ( _func_02F( var_0._ID27942 ) && _func_02F( var_2._ID27437 ) )
            level._ID794 thread _ID42237::_ID27000( var_2._ID27437 );

        var_0 notify( "newanim" );
        var_0 notify( "jumping_out" );
        var_13 = 0;

        if ( !_func_0D4( var_0 ) && !var_0 _unknown_21BE() )
        {
            var_13 = 1;
            var_0 = _unknown_1B9F( var_0, var_1 );
        }

        if ( !_func_1A7( var_0 ) )
            return;

        var_0._ID28894 = 1;

        if ( _func_02F( var_2._ID28994 ) )
            var_0 _ID42407::_ID12442();

        if ( _func_02F( var_2._ID13955 ) )
            var_0 _ID42407::_ID53251( self, var_2._ID13955 );

        if ( _func_02F( var_2._ID28894 ) )
        {
            var_0._ID28894 = 1;

            if ( _func_02F( var_2._ID28893 ) )
                var_0._ID28893 = var_2._ID28893;
        }

        if ( _func_02F( var_2._ID47849 ) )
        {
            var_0._ID47849 = 1;

            if ( _func_02F( var_2._ID46105 ) )
                var_0._ID46105 = var_2._ID46105;
        }

        if ( var_13 )
        {
            self._ID29965 = _ID42237::_ID3293( self._ID29965, var_0 );
            thread _unknown_1C5D( var_0, var_1 );
            thread _unknown_1E34( var_0 );
            var_0._ID29969 = self;
        }

        if ( _func_0D4( var_0 ) )
            var_0 endon( "death" );

        var_0 notify( "newanim" );
        var_0 notify( "jumping_out" );

        if ( _func_02F( var_2._ID22458 ) && var_2._ID22458 )
            thread _unknown_2740( var_0 );

        if ( _func_02F( var_2._ID16495 ) )
        {
            _unknown_2335( var_0, var_10, var_11 );
            var_14 = var_10;

            if ( _func_02F( var_2._ID16496 ) )
                var_14 = var_2._ID16496;

            _unknown_234E( var_0, var_14, var_2._ID16495 );
        }
        else if ( _func_02F( var_2._ID26242 ) )
        {
            if ( !_func_02F( self._ID2969 ) )
            {
                self._ID2969 = 0;
                self._ID26008 = ( 0, 0, 0 );
                self._ID39486 = 0.5;
            }
            else
            {
                self._ID39486 = self._ID39486 + _func_0BA( 0.5, 1 );
                wait(self._ID39486);
            }

            if ( !_func_02F( self ) )
                return;

            var_15 = _func_06A( "script_model", self _meth_818C( var_10 ) );
            var_15._ID65 = ( 0, self._ID65[1] + self._ID2969, 0 );
            self._ID2969 = self._ID2969 + 5;
            var_15 _meth_80B8( "tag_origin" );
            var_16 = _ID42407::_ID17434( self._ID740 ) + ( 0, 0, self._ID39485 );
            var_15._ID740 = var_16 + ( _func_0B9( 10, 20 ), _func_0B9( 10, 20 ), 0 );
            var_17 = _func_06A( "script_model", var_15._ID740 );
            var_17._ID65 = var_15._ID65;
            var_17 _meth_80B8( self._ID39491 );
            var_17._ID3189 = "parachute";
            var_17 _meth_811E( level._ID30900["parachute"] );
            var_17 _meth_805A();
            var_17 _ID42407::_ID13024( "parachute_open" );

            if ( _func_02F( var_2._ID26239 ) )
                var_15 _unknown_2390( var_0, var_17, self._ID39492, var_11, var_2._ID26239 );
            else
                var_15 _unknown_239E( var_0, var_17, self._ID39492, var_11 );

            var_15 _meth_80B7();
        }
        else
        {
            var_0._ID3007 = 1;

            if ( _func_02F( var_0._ID47712 ) )
            {
                thread _unknown_2455( var_0, var_10, var_11, undefined, undefined );
                var_0 thread _unknown_23A1();
                var_0._ID7._ID24881 = 1;
                var_18 = var_0 _unknown_23BB();

                if ( _func_02F( var_18 ) && var_18 == "interrupt" )
                {
                    while ( !_func_02F( var_0._ID51879 ) )
                        waittillframeend;

                    var_0 _meth_814B();
                    var_0 notify( "newanim" );
                    var_0 notify( "animontag_thread" );
                }

                var_0 _meth_8584( 0 );
                self._ID51879 = undefined;
                var_0._ID47712 = undefined;
                var_0._ID7._ID24881 = 0;
            }
            else
                _unknown_24B9( var_0, var_10, var_11, undefined, undefined );
        }

        if ( _func_02F( var_0._ID27942 ) && _func_02F( var_2._ID27437 ) )
            level._ID794 thread _ID42237::_ID36516( var_2._ID27437 );

        if ( _func_02F( var_2._ID16498 ) )
            var_0 thread _ID42237::_ID36516( var_2._ID16498 );

        if ( _func_02F( var_0._ID27942 ) && _func_02F( var_2._ID27436 ) )
            level._ID794 thread _ID42407::_ID27079( var_2._ID27436 );
    }
    else if ( !_func_0D4( var_0 ) )
    {
        if ( var_0._ID11842 == 1 )
        {
            var_0 _meth_80B7();
            return;
        }

        var_0 = _ID42407::_ID36874( var_0 );
    }

    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
    var_0._ID29969 = undefined;
    var_0._ID11803 = undefined;

    if ( !_func_1A7( self ) && !_func_02F( var_2._ID39494 ) )
    {
        var_0 _meth_80B7();
        return;
    }

    var_0 _meth_8055();

    if ( !_func_02F( var_0._ID22746 ) )
    {
        if ( _func_02F( var_0._ID24924 ) )
            var_0._ID24924 = undefined;

        var_0._ID49 = 1;
    }

    if ( !_func_0D4( var_0 ) && var_0 _unknown_24D9() )
    {
        if ( var_0._ID11842 )
        {
            var_0 _meth_80B7();
            return;
        }
    }

    if ( _func_1A7( var_0 ) )
    {
        if ( _func_0D4( var_0 ) )
        {
            if ( _func_02F( var_0._ID7._ID11036 ) )
                var_0._ID7._ID11035 = var_0._ID7._ID11036;
            else
                var_0._ID7._ID11035 = !var_0 _meth_8147();
        }

        var_0._ID14778 = undefined;
        var_0 notify( "jumpedout" );
        var_0 _ID42407::_ID10869();

        if ( _func_02F( var_2._ID13955 ) && _func_1A7( var_0 ) )
            var_0 _ID42407::_ID50799();

        if ( _func_0D4( var_0 ) )
        {
            if ( _func_02F( var_2._ID16505 ) )
            {
                var_0._ID10423 = var_2._ID16505;
                var_0 _meth_81D6( "crouch" );
                var_0 thread animscripts\utility::_ID39672();
                var_0 _meth_81D6( "stand", "crouch", "prone" );
            }

            var_0 _meth_81AF( 0 );

            if ( !_func_02F( var_0.keepgoalonunload ) || var_0.keepgoalonunload == 0 && _unknown_260F( var_0 ) )
            {
                var_0._ID452 = 600;
                var_0 _meth_81B2( var_0._ID740 );
            }
        }
    }

    if ( _func_02F( var_2._ID16493 ) && var_2._ID16493 )
    {
        var_0 _meth_80B7();
        return;
    }

    var_0 _unknown_2AC3();
}

_ID52627()
{
    self endon( "newanim" );
    self endon( "animontag_thread" );
    self waittillmatch( "animontagdone",  "start_foot_ik"  );
    self _meth_8584( 1 );
    self._ID51879 = 1;
}

_ID52330()
{
    self endon( "anim_on_tag_done" );
    _ID42237::_ID41068( "damage", "death", "explode", "bullethit", "gunshot", "explode", "doFlashBanged", "bulletwhizby" );
    return "interrupt";
}

_ID44363()
{
    if ( _func_02F( self._ID31459 ) )
        return 1;

    if ( _func_02F( self._ID11842 ) && self._ID11842 )
        return 1;

    return 0;
}

_ID26242( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 _meth_8055();
    var_5 = var_1 _meth_818C( "tag_driver" );
    var_6 = var_1 _meth_818D( "tag_driver" );
    var_0 _meth_81D2( var_5, var_6 );
    var_0 _meth_8053( var_1, "tag_driver" );
    var_1 _meth_8148( "parachute_unload", self._ID740, self._ID65, var_2 );

    if ( _func_02F( var_4 ) )
        var_1 thread _unknown_26E2( "parachute_unload", "show_parachute", var_4 );
    else
        var_1 thread _unknown_26F3( "parachute_unload", "show_parachute" );

    var_0 _meth_8148( "parachute_unload", var_0._ID740, var_0._ID65, var_3 );
    level thread _unknown_26E1( var_0, var_1 );
    var_1 waittillmatch( "parachute_unload",  "end"  );
    var_1 notify( "parachute_landed" );

    if ( _func_1A7( var_0 ) )
        var_0 _meth_8055();
}

_ID26240( var_0 )
{
    var_1 = _func_11F( var_0._ID65 );
    var_2 = _func_119( _ID42237::_ID14539( var_1 ) );
    var_3 = self._ID740 + var_2 * 10000;
    thread _ID42407::_ID11708( self, var_3, 1, 0, 0, 10 );
    self _meth_82B8( var_3, 1 );
}

_ID26238( var_0, var_1 )
{
    var_1 endon( "parachute_landed" );

    if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !_func_0D4( var_0 ) )
        var_0 _meth_82CA( 1 );

    var_2 = undefined;
    var_3 = undefined;

    for (;;)
    {
        var_0 waittill( "damage",  var_3, var_2  );

        if ( !_func_02F( var_2 ) )
            continue;

        if ( var_2 < 1 )
            continue;

        if ( !_func_02F( var_3 ) )
            continue;

        if ( _func_1B3( var_3 ) )
            break;
    }

    if ( !var_1 _ID42407::_ID13019( "parachute_open" ) )
    {
        var_1 notify( "rider_dead" );
        thread _unknown_28B0( var_0, undefined, var_3 );
        wait 2;
        var_1 _meth_80B7();
    }
    else
        _func_19E( "parachute death anim here!" );
}

_ID26241( var_0, var_1, var_2 )
{
    self endon( "rider_dead" );
    self waittillmatch( var_0,  var_1  );

    if ( _func_02F( var_2 ) )
        self thread [[ var_2 ]]();

    _ID42407::_ID13025( "parachute_open" );
}

_ID17582( var_0 )
{
    if ( _func_02F( var_0._ID31124 ) )
        return 0;

    if ( var_0 _ID42407::_ID18155() )
        return 0;

    if ( _func_02F( var_0._ID28791 ) )
        return 0;

    if ( !_func_02F( var_0._ID1191 ) )
        return 1;

    var_1 = _func_0C9( var_0._ID1191, "targetname" );

    if ( var_1.size > 1 )
        return 0;

    var_2 = _func_1A1( var_0._ID1191, "targetname" );

    if ( _func_02F( var_2 ) && var_2._ID170 == "info_volume" )
    {
        var_0 _meth_81B5( var_2 );
        return 0;
    }
    else if ( var_1.size == 1 )
        return 0;

    return 1;
}

_ID3191( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 notify( "animontag_thread" );
    var_0 endon( "animontag_thread" );

    if ( !_func_02F( var_5 ) )
        var_5 = "animontagdone";

    if ( _func_02F( self._ID23875 ) )
        var_6 = self._ID23875;
    else
        var_6 = self;

    if ( !_func_02F( var_1 ) )
    {
        var_7 = var_0._ID740;
        var_8 = var_0._ID65;
    }
    else
    {
        var_7 = var_6 _meth_818C( var_1 );
        var_8 = var_6 _meth_818D( var_1 );
    }

    if ( !_func_02F( var_0._ID24856 ) && _func_039( "ragdoll_enable" ) != "0" )
    {
        if ( _func_02F( var_0._ID47849 ) )
            level thread _unknown_2A43( var_0, self );
        else if ( _func_02F( var_0._ID28894 ) )
            level thread _unknown_2996( var_0, self );
    }

    var_0 _meth_8148( var_5, var_7, var_8, var_2 );

    if ( _func_0D4( var_0 ) )
        thread _unknown_2ADC( var_0, var_6, var_5 );

    if ( _func_02F( var_0._ID3007 ) )
    {
        var_0._ID3007 = undefined;
        var_9 = _func_067( var_2 );
        var_10 = var_9 - 0.25;

        if ( _func_02F( var_0.vehicle_anim_ends_on_finish ) && var_0.vehicle_anim_ends_on_finish && _func_068( var_2, "finish" ) )
        {
            var_11 = _func_069( var_2, "finish" );
            var_12 = var_11[0] * var_9;

            if ( var_12 < var_10 )
                var_10 = var_12;
        }

        if ( var_10 > 0 )
            wait(var_10);

        if ( !_func_02F( var_0 ) || _func_2A5( var_0 ) )
            return;

        var_0 _meth_814B();
        var_0._ID525 = 0;
        var_0 thread _unknown_2A0F();
    }
    else
    {
        if ( _func_02F( var_3 ) )
        {
            for ( var_13 = 0; var_13 < var_3.size; var_13++ )
            {
                var_0 waittillmatch( var_5,  var_3[var_13]  );
                var_0 thread [[ var_4[var_13] ]]();
            }
        }

        if ( _func_02F( var_0.vehicle_anim_ends_on_finish ) && var_0.vehicle_anim_ends_on_finish && _func_068( var_2, "finish" ) )
            var_0 waittillmatch( var_5,  "finish"  );
        else
            var_0 waittillmatch( var_5,  "end"  );
    }

    var_0 notify( "anim_on_tag_done" );
    var_0._ID28894 = undefined;
}

_ID29331()
{
    self endon( "death" );
    wait 2;

    if ( _func_02F( self ) && self._ID525 == 0 )
        self._ID525 = 80;
}

_ID3192( var_0, var_1 )
{
    if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !_func_0D4( var_0 ) )
        var_0 _meth_82CA( 1 );

    var_0 endon( "anim_on_tag_done" );

    if ( !_func_02F( var_0._ID6900 ) || !var_0._ID6900 )
        thread _unknown_2BD1( var_0, var_1 );

    var_2 = undefined;
    var_3 = undefined;
    var_4 = var_1._ID486 <= 0;

    for (;;)
    {
        if ( !var_4 && !_func_02F( var_1 ) && var_1._ID486 > 0 )
            break;

        var_0 waittill( "damage",  var_3, var_2  );

        while ( _func_02F( var_0._ID47712 ) && !_func_02F( var_0._ID51879 ) )
            waittillframeend;

        if ( _func_02F( var_0._ID14786 ) )
            break;

        if ( !_func_02F( var_2 ) )
            continue;

        if ( var_2 < 1 )
            continue;

        if ( !_func_02F( var_3 ) )
            continue;

        if ( _func_1B3( var_3 ) )
            break;
    }

    if ( !_func_1A7( var_0 ) )
        return;

    thread _unknown_2B88( var_0, var_1, var_3 );
}

_ID3193( var_0, var_1, var_2 )
{
    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;

    if ( _func_02F( var_0._ID28893 ) )
    {
        var_3 = _func_094( var_0._ID28893, 0, 1 );
        var_4 = _func_091( var_0._ID740 + ( 0, 0, 16 ), var_0._ID740 - ( 0, 0, 10000 ) );
        var_5 = _func_0F3( var_0._ID740 + ( 0, 0, 16 ), var_4 );

        if ( _func_0C3( var_3[2] + 16 ) <= _func_0C3( var_5 ) )
        {
            var_0 thread _ID42407::_ID27079( "generic_death_falling" );
            var_0 _meth_8148( "fastrope_fall", var_0._ID740, var_0._ID65, var_0._ID28893 );
            var_0 waittillmatch( "fastrope_fall",  "start_ragdoll"  );
        }
    }

    if ( !_func_02F( var_0 ) )
        return;

    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;
    var_0 notify( "rope_death",  var_2  );
    _ID42372::_ID9791( var_2 );
    var_0 _meth_8058( var_2._ID740, var_2 );

    if ( _func_02F( var_0._ID31459 ) || _func_02F( var_0._ID11842 ) )
    {
        var_0 _meth_82C9();
        var_6 = _func_043( var_0._ID1302 );
        var_7 = var_0._ID1302;

        if ( _func_02F( var_6 ) )
        {
            var_0 _meth_802A( var_6, "tag_weapon_right" );
            var_8 = var_0 _meth_818C( "tag_weapon_right" );
            var_9 = var_0 _meth_818D( "tag_weapon_right" );
            level._ID17495 = _func_06A( "weapon_" + var_7, ( 0, 0, 0 ) );
            level._ID17495._ID65 = var_9;
            level._ID17495._ID740 = var_8;
        }
    }
    else
        var_0 animscripts\shared::_ID12143();

    if ( _func_02F( var_0._ID9797 ) )
    {
        if ( _func_02F( var_0._ID15885 ) )
        {
            var_10 = 0.33;

            if ( _func_02F( var_0._ID23614 ) )
                var_10 = var_0._ID23614;

            var_11 = var_0 _meth_8159( var_0._ID15883 );

            if ( var_11 < var_10 )
                wait(var_0._ID15885 * var_10 - var_11);

            if ( _func_2A5( var_0 ) )
                return;
        }

        var_12 = _func_0F6( var_0._ID9797 );
        var_13 = _func_119( var_1 _meth_81BC( var_0._ID9797 ) - var_0._ID740 ) * var_12;
        var_0 _meth_8024( "torso_lower", var_13 );
    }
    else
        var_0 _meth_8023();
}

_ID52424( var_0, var_1 )
{
    if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !_func_0D4( var_0 ) )
        var_0 _meth_82CA( 1 );

    var_0 endon( "anim_on_tag_done" );
    var_2 = _func_03D();
    var_3 = undefined;
    var_4 = undefined;

    for (;;)
    {
        var_0 waittill( "damage",  var_4, var_3  );

        while ( _func_02F( var_0._ID47712 ) && !_func_02F( var_0._ID51879 ) )
            waittillframeend;

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 < 1 )
            continue;

        if ( !_func_02F( var_4 ) )
            continue;

        if ( _func_1B3( var_4 ) )
            break;
    }

    if ( !_func_1A7( var_0 ) )
        return;

    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;
    var_0._ID7._ID24881 = 1;
    var_0 _meth_8058();
    var_5 = _ID42237::_ID37527( var_0 == var_1._ID29965[0], 1400, 800 );

    if ( _func_03D() - var_2 < var_5 )
    {
        var_0 _meth_8148( "snowmobile_unload_death", var_0._ID740, var_0._ID65, var_0._ID46105 );
        var_0 waittillmatch( "snowmobile_unload_death",  "start_ragdoll"  );
    }

    var_0 animscripts\shared::_ID12143();
    var_0 _meth_8023();
}

_ID3194( var_0, var_1 )
{
    var_0 endon( "anim_on_tag_done" );
    var_0 endon( "death" );
    var_4 waittill( "death",  var_4, var_4, var_4  );

    if ( _func_02F( var_0._ID22746 ) && var_0._ID22746 )
        return;

    var_5 = 0;

    if ( _func_02F( var_0._ID23614 ) )
    {
        var_6 = var_0 _meth_8159( var_0._ID15883 );

        if ( var_6 < var_0._ID23614 )
            var_5 = 1;
    }

    if ( !_func_2A5( var_0 ) )
    {
        if ( var_5 )
        {
            var_0 notify( "killanimscript" );
            waitframe;
            var_0 thread _unknown_2F30();
        }

        if ( _func_02F( var_2 ) )
            var_0 _meth_8058( var_0._ID740, var_2 );
        else
            var_0 _meth_8058();
    }
}

_ID10205()
{
    waittillframeend;

    if ( !_func_2A5( self ) )
        self _meth_80B7();
}

_ID11529( var_0, var_1, var_2 )
{
    var_0 endon( "newanim" );
    var_1 endon( "death" );
    var_0 endon( "death" );
    var_0 animscripts\shared::_ID11529( var_2 );
}

_ID3176( var_0, var_1, var_2, var_3 )
{
    var_0 _meth_8148( "movetospot", var_1, var_2, var_3 );
    var_0 waittillmatch( "movetospot",  "end"  );
}

_ID17607( var_0, var_1, var_2 )
{
    if ( !_func_1A7( var_0 ) )
        return;

    if ( _func_02F( self._ID24848 ) )
        return;

    var_3 = _unknown_2762( self, var_0._ID40222 );
    var_0._ID40081 = var_1;

    if ( _func_02F( var_3._ID13635 ) )
        return _unknown_30BD( var_0 );

    if ( _func_02F( level._ID40231 ) && _func_02F( level._ID40231[self._ID170] ) )
    {
        self [[ level._ID40231[self._ID170] ]]();
        return;
    }

    if ( _func_02F( var_3._ID39494 ) && _func_02F( self ) )
    {
        if ( _func_02F( self._ID11583 ) && self._ID11583 )
            return;

        thread _unknown_28BD( var_0, var_0._ID40222, 1 );
        wait(var_3._ID39494);

        if ( _func_02F( var_0 ) && _func_02F( self ) )
        {
            self._ID17471 = var_0._ID40222;
            _ID42411::_ID40066( "unload" );
        }

        return;
    }

    if ( _func_02F( var_0 ) )
    {
        if ( _func_02F( var_0._ID28894 ) && var_2 != "bm21_troops" )
            return;

        _ID45456::_ID54623( var_0 );
        [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_0._ID740 );
        var_0 _meth_80B7();
    }
}

_ID17597( var_0, var_1 )
{
    return _func_02F( _unknown_280F( self, var_1 )._ID39208 );
}

_ID17596( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_282E( self, var_1 );

    if ( _func_02F( var_2._ID40288 ) )
        thread _unknown_2B01( var_2._ID40288 );

    _unknown_2EE1( var_0, var_2._ID34225, var_2._ID39208 );
    thread _unknown_2959( var_0, var_1 );
}

_ID17594( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _unknown_286D( self, var_1 );

    if ( _func_02F( var_2._ID40287 ) )
        thread _unknown_2B3F( var_2._ID40287 );

    _unknown_2F1F( var_0, var_2._ID34225, var_2._ID39182 );
    thread _unknown_2998( var_0, var_1 );
}

_ID17595( var_0, var_1 )
{
    return _func_02F( _unknown_289B( self, var_1 )._ID39182 );
}

_ID17593( var_0, var_1 )
{
    var_2 = level._ID40069[self._ID170][var_1];

    if ( _func_02F( var_2._ID19312 ) )
        var_0._ID40168 = var_2._ID19312;
}

_ID17592( var_0, var_1 )
{
    var_2 = level._ID40069[self._ID170][var_1];

    if ( _func_02F( var_2._ID19311 ) )
        var_0._ID40168 = var_2._ID19311;
}

_ID2360()
{
    self endon( "death" );
    self waittill( "loaded" );
    _ID42411::_ID17021( self );
}

_ID32418( var_0, var_1 )
{
    var_2 = var_0._ID31455;

    if ( _func_02F( var_0._ID14778 ) )
        var_2 = var_0._ID14778;

    if ( _func_02F( var_2 ) )
        return var_2;

    if ( !_func_02F( self._ID39936 ) )
        return;

    for ( var_3 = 0; var_3 < self._ID39936.size; var_3++ )
    {
        if ( self._ID39936[var_3] )
            continue;

        return var_3;
    }

    if ( _func_02F( var_0._ID31516 ) )
    {

    }
}

_ID17575( var_0, var_1, var_2 )
{
    var_3 = _unknown_2940( self, var_1 );
    var_4 = self._ID23512[var_3._ID23512];

    if ( !_func_1A7( var_0 ) )
        return;

    var_4 endon( "death" );
    var_0 endon( "death" );
    var_0.cheat._ID48626 = 1;

    if ( _func_02F( var_2 ) && var_2 && _func_02F( var_3._ID26295 ) )
        [[ var_3._ID26295 ]]( self, var_0, var_1, var_4 );

    _ID42413::_ID32486( var_4 );
    var_5 = var_4 _meth_85B2();
    var_4 _meth_8164( 0 );
    wait 0.1;
    var_0 endon( "guy_man_turret_stop" );
    level thread _ID42331::_ID23499( var_4, _ID42407::_ID16219() );
    var_4 _meth_806E( 1 );

    if ( var_4._ID26175._ID1282 == "technical" )
        var_0 _ID42407::_ID10949();

    if ( _func_02F( var_3._ID34227 ) && var_3._ID34227 )
        var_4 thread _ID42332::_ID616( var_0, var_3 );
    else
    {
        var_4 thread _unknown_330C( var_0, var_5 );

        for (;;)
        {
            if ( !_func_02F( var_0 _meth_81A0() ) )
                var_0 _meth_8196( var_4 );

            wait 1;
        }
    }
}

_ID44818( var_0, var_1 )
{
    self endon( "death" );
    var_0 waittill( "death" );
    self _meth_8164( var_1 );
}

_ID17601( var_0 )
{
    var_0 endon( "jumpedout" );
    var_0 waittill( "death" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_8055();
}

_ID17542( var_0 )
{
    if ( !_func_02F( var_0._ID40222 ) )
        return;

    var_1 = var_0._ID40222;
    var_2 = _unknown_2A29( self, var_1 );

    if ( !_func_02F( var_2._ID13635 ) )
        return;

    [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_0._ID740 );
    var_0._ID9813 = var_2._ID13635;
    var_3 = self._ID65;
    var_4 = var_0._ID740;

    if ( _func_02F( var_2._ID13636 ) )
    {
        var_4 += _func_11F( var_3 ) * var_2._ID13636[0];
        var_4 += _func_11E( var_3 ) * var_2._ID13636[1];
        var_4 += _func_11D( var_3 ) * var_2._ID13636[2];
    }

    var_0 = _unknown_343B( var_0 );
    _unknown_34D3( var_0, "weapon_" );
    var_0 _meth_82C9();
    var_0._ID740 = var_4;
    var_0._ID65 = var_3;
    var_0 _meth_8148( "deathanim", var_4, var_3, var_2._ID13635 );
    var_5 = 0.3;

    if ( _func_02F( var_2._ID13637 ) )
        var_5 = var_2._ID13637;

    var_6 = _func_067( var_2._ID13635 );
    var_7 = _func_03D() + var_6 * 1000;
    wait(var_6 * var_5);
    var_8 = ( 0, 0, 1 );
    var_9 = var_0._ID740;

    if ( _func_039( "ragdoll_enable" ) == "0" )
    {
        var_0 _meth_80B7();
        return;
    }

    if ( _func_0D4( var_0 ) )
        var_0 animscripts\shared::_ID12143();
    else
        _unknown_354F( var_0, "weapon_" );

    while ( !var_0 _meth_81F0() && _func_03D() < var_7 )
    {
        var_9 = var_0._ID740;
        wait 0.05;
        var_8 = var_0._ID740 - var_9;
        var_0 _meth_8023();
    }

    wait 0.05;
    var_8 *= 20000;

    for ( var_10 = 0; var_10 < 3; var_10++ )
    {
        if ( _func_02F( var_0 ) )
            var_9 = var_0._ID740;

        wait 0.05;
    }

    if ( !var_0 _meth_81F0() )
        var_0 _meth_80B7();
}

_ID8613( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    var_3 = _func_06A( "script_model", var_0._ID740 );
    var_3._ID65 = var_0._ID65;
    var_3 _meth_80B8( var_0._ID669 );
    var_4 = var_0 _meth_802C();

    for ( var_5 = 0; var_5 < var_4 && var_2 || var_5 < 1; var_5++ )
    {
        var_3 _meth_801D( var_0 _meth_802D( var_5 ), var_0 _meth_802E( var_5 ) );

        if ( var_5 == 0 )
            var_3._ID18304 = var_0 _meth_802D( var_5 );
    }

    var_3 _meth_811E( #animtree );

    if ( _func_02F( var_0._ID1194 ) )
        var_3._ID1194 = var_0._ID1194;

    var_3.cheat = var_0.cheat;
    var_3._ID43135 = var_0._ID43135;

    if ( _func_02F( var_3._ID1194 ) && var_3._ID1194 != "allies" )
        var_3 thread _ID49347::addspecialmonitors();

    if ( !var_1 )
        var_0 _meth_80B7();

    var_3 _meth_803E();
    return var_3;
}

_ID40075( var_0, var_1 )
{
    self _meth_811E( var_1 );
    self _meth_8155( var_0 );
}

_ID40151( var_0 )
{
    var_1 = _unknown_2C21( self, var_0 );
    return _unknown_362B( var_1._ID16341, var_1._ID34225, var_0 );
}

_ID40145( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_4 = undefined;
    var_5 = undefined;
    var_6 = self _meth_818C( var_1 );
    var_7 = self _meth_818D( var_1 );
    var_4 = _func_071( var_6, var_7, var_0 );
    var_5 = _func_072( var_6, var_7, var_0 );
    var_3._ID740 = var_4;
    var_3._ID65 = var_5;
    var_3._ID40222 = var_2;
    return var_3;
}

_ID20593( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        return 1;

    var_3 = var_0._ID170;
    var_4 = level._ID40300[var_3][var_2];
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( var_6 == var_1 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID15570( var_0 )
{
    var_1 = level._ID40069[self._ID170];
    var_2 = [];
    var_3 = [];

    for ( var_4 = 0; var_4 < self._ID39936.size; var_4++ )
    {
        if ( self._ID39936[var_4] )
            continue;

        if ( _func_02F( var_1[var_4]._ID16341 ) && _unknown_36E3( self, var_4, var_0 ) )
        {
            var_2[var_2.size] = _unknown_36D1( var_4 );
            continue;
        }

        var_3[var_3.size] = var_4;
    }

    var_5 = _func_1A5();
    var_5._ID4471 = var_2;
    var_5._ID24916 = var_3;
    return var_5;
}

_ID16125()
{
    if ( _func_02F( self._ID23875 ) )
        return self._ID23875;
    else
        return self;
}

_ID10621( var_0, var_1 )
{
    var_2 = var_0 _meth_802C();
    var_3 = [];
    var_4 = [];
    var_5 = 0;

    for ( var_6 = 0; var_6 < var_2; var_6++ )
    {
        var_7 = var_0 _meth_802D( var_6 );
        var_8 = var_0 _meth_802E( var_6 );

        if ( _func_125( var_7, var_1 ) )
        {
            var_3[var_5] = var_7;
            var_4[var_5] = var_8;
            var_5++;
        }
    }

    for ( var_6 = 0; var_6 < var_3.size; var_6++ )
        var_0 _meth_802A( var_3[var_6], var_4[var_6] );
}

_ID33902()
{
    if ( !_func_0D4( self ) )
        return 0;

    if ( !_func_02F( self._ID25994 ) )
        return 0;

    return !_func_02F( self._ID22746 );
}

_ID17580( var_0, var_1 )
{
    return _func_02F( _unknown_2D7D( self, var_1 )._ID28338 );
}

_ID17579( var_0, var_1 )
{
    var_2 = _unknown_2D8C( self, var_1 );

    if ( !_func_02F( var_2._ID28338 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _unknown_3447( var_0, var_2._ID34225, var_2._ID28338 );

    for (;;)
        _unknown_3454( var_0, var_2._ID34225, var_2._ID28339 );
}

_ID17567( var_0, var_1 )
{
    var_2 = _unknown_2DCC( self, var_1 );

    if ( !_func_02F( var_2._ID19303 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        _unknown_3487( var_0, var_2._ID34225, var_2._ID19303 );
}

_ID17568( var_0, var_1 )
{
    return _func_02F( _unknown_2DFF( self, var_1 )._ID19303 );
}

_ID17569( var_0, var_1 )
{
    var_2 = _unknown_2E0F( self, var_1 );

    if ( !_func_02F( var_2._ID19303 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _unknown_34CA( var_0, var_2._ID34225, var_2._ID19304 );
    thread _unknown_2F42( var_0, var_1 );
}

_ID17570( var_0, var_1 )
{
    return _func_02F( _unknown_2E46( self, var_1 )._ID19304 );
}

_ID35557( var_0 )
{
    self waittill( "stable_for_unlink" );

    if ( _func_1A7( var_0 ) )
        var_0 _meth_8055();
}

_ID38055()
{

}

_ID3162( var_0 )
{
    var_1 = [];
    var_2 = self._ID29965;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3 ) )
            continue;

        if ( _func_02F( level._ID40068[var_0] ) && ![[ level._ID40068[var_0] ]]( var_3, var_3._ID40222 ) )
            continue;

        if ( _func_02F( level._ID40070[var_0] ) )
        {
            var_3 notify( "newanim" );
            var_3._ID28828 = [];
            thread [[ level._ID40070[var_0] ]]( var_3, var_3._ID40222 );
            var_1[var_1.size] = var_3;
            continue;
        }

        var_3 notify( "newanim" );
        var_3._ID28828 = [];
        thread _unknown_39B7( var_3, var_3._ID40222, var_0 );
        var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID17606( var_0, var_1, var_2 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_3 = _unknown_2F00( self, var_1 );

    if ( _func_02F( var_3._ID2371[var_2] ) )
        thread _unknown_31D5( var_3._ID2371[var_2] );

    _unknown_35B7( var_0, var_3._ID34225, var_3._ID2370[var_2] );
    _unknown_3030( var_0, var_1 );
}

_ID17545()
{
    self._ID40170 = undefined;
    self._ID35596 = undefined;
    self._ID40222 = undefined;
    self._ID10179 = undefined;
}

_ID10250()
{
    var_0 = self _meth_809D();
    var_1 = self _meth_8227( 1, 0, 0 );
    var_2 = _func_0F3( var_1, var_0 );
    var_3 = _func_0E1();
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_0F3( var_5._ID740, var_0 ) < var_2 )
            var_5 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID11058()
{
    if ( _func_02F( self._ID29969 ) )
        self._ID29969 _unknown_3AA1( self, self._ID40222 );
}

_ID17550( var_0, var_1 )
{
    var_0 notify( "jumpedout" );
    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
    var_0._ID29969 = undefined;
    var_0._ID11803 = undefined;
    var_0 _unknown_3AA7();
}
