// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID17557( var_0, var_1 )
{
    if ( !isdefined( self ) )
        return;

    if ( !isdefined( self._ID1282 ) )
        return;

    if ( var_0 isragdoll() )
        return;

    var_2 = _ID42413::_ID47115( self.classname );
    var_3 = level._ID40069[var_2];
    var_4 = level._ID40069[var_2].size;
    self._ID3575[self._ID3575.size] = var_0;
    var_5 = _ID32418( var_0, var_4 );

    if ( !isdefined( var_5 ) )
        return;

    if ( var_5 == 0 )
        var_0._ID11803 = 1;

    var_6 = _ID3052( self, var_5 );
    self._ID39936[var_5] = 1;
    var_0._ID40222 = var_5;
    var_0._ID40170 = 0;

    if ( isdefined( var_6._ID10179 ) )
    {
        var_0._ID10179 = var_6._ID10179;

        if ( isdefined( var_6._ID10219 ) )
            self._ID10217 = var_0._ID10179;
    }

    if ( isdefined( var_6._ID10219 ) )
    {
        self._ID10217 = self._ID10217 + var_6._ID10219;
        var_0._ID10179 = self._ID10217;
    }

    var_0._ID29969 = self;
    var_0._ID25994 = var_0.health;
    var_0._ID40167 = var_6._ID19302;
    var_0._ID40267 = var_6._ID35592;

    if ( isdefined( var_6._ID24881 ) )
        var_0._ID7._ID24881 = 1;

    var_0._ID9813 = var_6._ID264;
    var_0._ID9797 = var_6._ID9797;
    var_0._ID23614 = var_6._ID23614;
    var_0._ID9814 = var_6._ID9834;
    var_0._ID35596 = 0;

    if ( isdefined( var_6._ID16491 ) )
    {
        var_0._ID15885 = getanimlength( var_6._ID16491 );
        var_0._ID15883 = var_6._ID16491;

        if ( isdefined( var_6._ID47712 ) )
            var_0._ID47712 = 1;
    }

    var_0.allowdeath = 0;

    if ( isdefined( var_0._ID9813 ) && !isdefined( var_0._ID22746 ) && _ID40073() )
    {
        if ( var_0._ID40222 != 0 || _ID40072() )
        {
            var_0.allowdeath = !isdefined( var_0._ID31031 ) || var_0._ID31031;

            if ( isdefined( var_6._ID9801 ) )
                var_0._ID24924 = var_6._ID9801;
        }
    }

    if ( var_0.classname == "script_model" )
    {
        if ( isdefined( var_6._ID264 ) && var_0.allowdeath && ( !isdefined( var_0._ID31031 ) || var_0._ID31031 ) )
            thread _ID17546( var_0, var_6 );
    }

    if ( !isdefined( var_0._ID40167 ) )
        var_0.allowdeath = 1;

    self._ID29965[self._ID29965.size] = var_0;

    if ( var_0.classname != "script_model" && _ID42407::_ID35060( var_0 ) )
        return;

    var_7 = _ID40077( var_6 );
    var_8 = _ID40076( var_6 );
    _ID22404( var_0, var_6._ID34225, var_6._ID34226, var_6._ID22432, var_6._ID34227, var_6._ID23512 );

    if ( isai( var_0 ) )
    {
        var_0 teleport( var_7, var_8 );
        var_0._ID7._ID11036 = var_0._ID7._ID11035;
        var_0._ID7._ID11035 = 1;

        if ( isdefined( var_6._ID5174 ) && !var_6._ID5174 )
            var_0 _ID42407::_ID17509();

        if ( _ID17586( var_6 ) )
            thread _ID17575( var_0, var_5, var_1 );
    }
    else
    {
        if ( isdefined( var_6._ID5174 ) && !var_6._ID5174 )
            _ID10621( var_0, "weapon_" );

        var_0.origin = var_7;
        var_0.angles = var_8;
    }

    if ( var_5 == 0 && isdefined( var_3[0]._ID264 ) )
        thread _ID11786( var_0 );

    self notify( "guy_entered",  var_0, var_5  );
    thread _ID17565( var_0, var_5 );

    if ( isdefined( var_6._ID29963 ) )
        var_0 [[ var_6._ID29963 ]]();
    else
    {
        if ( isdefined( self._ID26242 ) )
            var_0._ID26242 = 1;

        if ( isdefined( var_6._ID16343 ) )
        {
            thread [[ var_6._ID16343 ]]( var_0, var_5 );
            return;
        }

        thread _ID17566( var_0, var_5 );
    }
}

_ID40077( var_0 )
{
    var_1 = self;

    if ( isdefined( var_0._ID34227 ) && var_0._ID34227 )
        var_1 = self._ID23512[var_0._ID23512];

    return var_1 gettagorigin( var_0._ID34225 );
}

_ID40076( var_0 )
{
    var_1 = self;

    if ( isdefined( var_0._ID34227 ) && var_0._ID34227 )
        var_1 = self._ID23512[var_0._ID23512];

    return var_1 gettagangles( var_0._ID34225 );
}

_ID40072()
{
    if ( !isdefined( self._ID31028 ) )
        return 0;

    return self._ID31028;
}

_ID40073()
{
    if ( !isdefined( self._ID31030 ) )
        return 1;

    return self._ID31030;
}

_ID17586( var_0 )
{
    if ( !isdefined( var_0._ID23512 ) )
        return 0;

    if ( !isdefined( self._ID31364 ) )
        return 1;

    return !self._ID31364;
}

_ID17698()
{
    var_0 = self.classname;
    self._ID3575 = [];

    if ( !( isdefined( level._ID40069 ) && isdefined( level._ID40069[var_0] ) ) )
        return;

    var_1 = level._ID40069[var_0].size;

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "ai_wait_go" )
        thread _ID2360();

    self._ID30439 = [];
    self._ID39936 = [];
    self._ID16346 = [];
    self._ID10217 = 0;
    var_2 = level._ID40069[var_0];

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self._ID39936[var_3] = 0;

        if ( isdefined( self._ID31364 ) && self._ID31364 && isdefined( var_2[var_3]._ID5255 ) && var_2[var_3]._ID5255 )
            self._ID39936[1] = 1;
    }
}

_ID22467( var_0 )
{
    _ID22466( var_0, 1 );
}

_ID17546( var_0, var_1 )
{
    waitframe;
    var_0 setcandamage( 1 );
    var_0 endon( "death" );
    var_0.allowdeath = 0;
    var_0.health = 10150;

    if ( isdefined( var_0._ID31454 ) )
        var_0.health = var_0.health + var_0._ID31454;

    var_0 endon( "jumping_out" );

    if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
    {
        while ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
            wait 0.05;
    }

    while ( var_0.health > 10000 )
        var_0 waittill( "damage" );

    thread _ID17549( var_0, var_1 );
}

_ID17549( var_0, var_1 )
{
    var_2 = gettime() + getanimlength( var_1._ID264 ) * 1000;
    var_3 = var_0.angles;
    var_4 = var_0.origin;
    var_5 = !isai( var_0 );

    if ( !var_5 )
        var_0 = _ID8613( var_0 );

    [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_4 );
    _ID10621( var_0, "weapon_" );

    if ( !var_5 )
        var_0 linkto( self, var_1._ID34225, ( 0, 0, 0 ), ( 0, 0, 0 ) );

    var_0 notsolid();
    thread _ID3191( var_0, var_1._ID34225, var_1._ID264 );

    if ( !isdefined( var_1._ID9795 ) )
        var_0 waittillmatch( "animontagdone",  "start_ragdoll"  );
    else
    {
        var_0 unlink();
        var_0 startragdoll();
        wait(var_1._ID9795);
        var_0 delete();
        return;
    }

    var_0 unlink();

    if ( getdvar( "ragdoll_enable" ) == "0" )
    {
        var_0 delete();
        return;
    }

    while ( gettime() < var_2 && !var_0 isragdoll() )
    {
        var_0 startragdoll();
        wait 0.05;
    }

    if ( !var_0 isragdoll() )
        var_0 delete();
}

_ID22466( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_0 ) )
        var_0 = _ID40143();

    _ID42407::_ID13021( "unloaded" );
    _ID42407::_ID13021( "loaded" );
    _ID42237::_ID3315( var_0, ::_ID15787, var_1, var_2 );
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
    var_1 = getaiarray( self._ID31474 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( !isdefined( var_3._ID31516 ) )
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

        if ( !isdefined( var_3._ID31516 ) )
            continue;

        if ( var_3._ID31516 != self._ID31516 )
            continue;

        var_0[var_0.size] = var_3;
    }

    return var_0[0];
}

_ID15787( var_0, var_1, var_2 )
{
    if ( _ID20602( var_0 ) )
        return;

    if ( !_ID17742() )
        return;

    _ID17583( var_0, self, var_1, var_2 );
}

_ID17742()
{
    if ( _ID40162() )
        return 1;
}

_ID40162()
{
    if ( level._ID40069[self.classname].size - self._ID30439.size )
        return 1;
    else
        return 0;
}

_ID17585( var_0, var_1 )
{
    var_1 endon( "death" );
    var_1 endon( "stop_loading" );
    var_2 = var_0 _ID42237::_ID41075( "long_death", "death", "enteredvehicle" );

    if ( var_2 != "enteredvehicle" && isdefined( var_0._ID14778 ) )
        var_1._ID39936[var_0._ID14778] = 0;

    var_1._ID30439 = _ID42237::_ID3321( var_1._ID30439, var_0 );
    _ID40202( var_1 );
}

_ID40202( var_0 )
{
    if ( isdefined( var_0._ID1282 ) && isdefined( var_0._ID40203 ) )
    {
        if ( var_0._ID29965.size == var_0._ID40203 )
            var_0 _ID42407::_ID13025( "loaded" );
    }
    else if ( !var_0._ID30439.size && var_0._ID29965.size )
    {
        if ( var_0._ID39936[0] )
            var_0 _ID42407::_ID13025( "loaded" );
        else
            var_0 thread _ID40224();
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

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_6 = level._ID40069[var_1.classname];

    if ( isdefined( var_1._ID30445 ) )
    {
        var_1 thread [[ var_1._ID30445 ]]( var_0 );
        return;
    }

    var_1 endon( "death" );
    var_0 endon( "death" );
    var_1._ID30439[var_1._ID30439.size] = var_0;
    thread _ID17585( var_0, var_1 );
    var_7 = [];
    var_8 = undefined;
    var_9 = 0;
    var_10 = 0;

    for ( var_11 = 0; var_11 < var_6.size; var_11++ )
    {
        if ( isdefined( var_6[var_11]._ID16341 ) )
            var_10 = 1;
    }

    if ( !var_10 )
    {
        var_0 notify( "enteredvehicle" );
        var_1 _ID17557( var_0, var_5 );
        return;
    }

    if ( !isdefined( var_0._ID15786 ) )
    {
        while ( var_1 vehicle_getspeed() > 1 )
            wait 0.05;
    }

    var_12 = var_1 _ID15570( var_3 );

    if ( isdefined( var_0._ID31455 ) )
        var_8 = var_1 _ID40151( var_0._ID31455 );
    else if ( !var_1._ID39936[0] )
    {
        var_8 = var_1 _ID40151( 0 );

        if ( var_2 )
        {
            var_0 thread _ID42407::_ID22746();
            thread _ID29549( var_0 );
        }
    }
    else if ( var_12._ID4471.size )
        var_8 = _ID42237::_ID16182( var_0.origin, var_12._ID4471 );
    else
        var_8 = undefined;

    if ( !var_12._ID4471.size && var_12._ID24916.size )
    {
        var_0 notify( "enteredvehicle" );
        var_1 _ID17557( var_0, var_5 );
        return;
    }
    else if ( !isdefined( var_8 ) )
        return;

    var_9 = var_8.origin;
    var_13 = var_8.angles;

    if ( isdefined( var_4 ) )
    {
        var_14 = var_8.origin - var_1.origin;
        var_15 = anglestoright( var_1.angles );
        var_16 = vectordot( var_14, var_15 ) > 0;
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
    var_0.goalradius = 16;
    var_0 setgoalpos( var_9 );
    var_0 waittill( "goal" );
    var_0 _ID42407::_ID12452();
    var_0 _ID42407::_ID39524();
    var_0 notify( "boarding_vehicle" );
    var_18 = _ID3052( var_1, var_8._ID40222 );

    if ( isdefined( var_18._ID10179 ) )
    {
        var_0._ID10179 = var_18._ID10179;

        if ( isdefined( var_18._ID10219 ) )
            self._ID10217 = var_0._ID10179;
    }

    if ( isdefined( var_18._ID10219 ) )
    {
        self._ID10217 = self._ID10217 + var_18._ID10219;
        var_0._ID10179 = self._ID10217;
    }

    var_1 _ID22404( var_0, var_18._ID34225, var_18._ID34226, var_18._ID22432 );
    var_0.allowdeath = 0;
    var_18 = var_6[var_8._ID40222];

    if ( isdefined( var_8 ) )
    {
        if ( isdefined( var_18._ID40147 ) )
        {
            if ( isdefined( var_18._ID40152 ) )
            {
                var_19 = isdefined( var_0._ID24855 );

                if ( !var_19 )
                    var_1 clearanim( var_18._ID40152, 0 );
            }

            var_1 = var_1 _ID16125();
            var_1 thread _ID32549( var_18._ID40147, var_18._ID40148 );
            level thread _ID42259::_ID35866( var_1, "vehicle_anim_flag" );
        }

        if ( isdefined( var_18._ID40150 ) )
            var_9 = var_1 gettagorigin( var_18._ID40150 );
        else
            var_9 = var_1.origin;

        if ( isdefined( var_18._ID40149 ) )
            thread _ID42237::_ID27077( var_18._ID40149, var_9 );

        var_20 = undefined;
        var_21 = undefined;

        if ( isdefined( var_18._ID16342 ) )
        {
            var_20 = [];
            var_20[0] = var_18._ID16342;
            var_21 = [];
            var_21[0] = ::_ID13065;
            var_1 _ID22404( var_0, var_18._ID34225, var_18._ID34226, var_18._ID22432 );
        }

        var_1 _ID3191( var_0, var_18._ID34225, var_18._ID16341, var_20, var_21 );
    }

    var_0 notify( "enteredvehicle" );
    var_1 _ID17557( var_0, var_5 );
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

    if ( isdefined( self._ID40176 ) )
        return;

    self notify( "driver dead" );
    self._ID9788 = 1;

    if ( isdefined( self._ID18249 ) && self._ID18249 )
    {
        self setwaitspeed( 0 );
        self vehicle_setspeed( 0, 10 );
        self waittill( "reached_wait_speed" );
    }

    _ID42411::_ID40298();
}

_ID8664()
{
    var_0 = spawn( "script_model", self.origin );
    var_0 setmodel( self.model );
    var_1 = self getattachsize();

    for ( var_2 = 0; var_2 < var_1; var_2++ )
        var_0 attach( self getattachmodelname( var_2 ) );

    return var_0;
}

_ID17541( var_0, var_1 )
{
    if ( isai( var_0 ) )
        return var_0;

    if ( var_0._ID11842 == 1 )
        var_0 delete();
    else
    {
        var_0 = _ID42407::_ID36874( var_0 );
        var_2 = self.classname;
        var_3 = level._ID40069[var_2].size;
        var_4 = _ID3052( self, var_1 );
        _ID22404( var_0, var_4._ID34225, var_4._ID34226, var_4._ID22432 );
        var_0._ID40167 = var_4._ID19302;
        thread _ID17566( var_0, var_1 );
    }
}

_ID22404( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = self;

    if ( isdefined( var_4 ) && var_4 )
        var_6 = self._ID23512[var_5];

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( var_3 && !isdefined( var_0._ID31152 ) )
        var_0 linktoblendtotag( var_6, var_1, 0 );
    else
        var_0 linkto( var_6, var_1, var_2, ( 0, 0, 0 ) );
}

_ID3052( var_0, var_1 )
{
    var_2 = _ID42413::_ID47115( var_0.classname );
    return level._ID40069[var_2][var_1];
}

_ID17548( var_0, var_1 )
{
    var_0 waittill( "death" );

    if ( !isdefined( self ) )
        return;

    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
}

_ID32840()
{
    if ( !isdefined( level._ID40070 ) )
        level._ID40070 = [];

    if ( !isdefined( level._ID40068 ) )
        level._ID40068 = [];

    level._ID40070["idle"] = ::_ID17566;
    level._ID40070["duck"] = ::_ID17552;
    level._ID40070["duck_once"] = ::_ID17554;
    level._ID40068["duck_once"] = ::_ID17555;
    level._ID40070["weave"] = ::_ID17608;
    level._ID40068["weave"] = ::_ID17609;
    level._ID40070["turn_right"] = ::_ID17596;
    level._ID40068["turn_right"] = ::_ID17597;
    level._ID40070["turn_left"] = ::_ID17594;
    level._ID40068["turn_left"] = ::_ID17597;
    level._ID40070["turn_hardright"] = ::_ID17593;
    level._ID40070["turn_hardleft"] = ::_ID17592;
    level._ID40070["turret_fire"] = ::_ID17598;
    level._ID40070["turret_turnleft"] = ::_ID17599;
    level._ID40070["turret_turnright"] = ::_ID17600;
    level._ID40070["unload"] = ::_ID17602;
    level._ID40070["pre_unload"] = ::_ID17579;
    level._ID40068["pre_unload"] = ::_ID17580;
    level._ID40070["idle_alert"] = ::_ID17567;
    level._ID40068["idle_alert"] = ::_ID17568;
    level._ID40070["idle_alert_to_casual"] = ::_ID17569;
    level._ID40068["idle_alert_to_casual"] = ::_ID17570;
    level._ID40070["reaction"] = ::_ID17600;
}

_ID17565( var_0, var_1 )
{
    var_0._ID40170 = 1;
    thread _ID17548( var_0, var_1 );
}

_ID17588( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_0._ID35596 = 1;
    var_3 = 0;

    for (;;)
    {
        var_4 = gettime() + 2000;

        while ( gettime() < var_4 && isdefined( var_0.enemy ) )
            _ID3191( var_0, var_2._ID34225, var_0._ID40267, undefined, undefined, "firing" );

        var_5 = randomint( 5 ) + 10;

        for ( var_6 = 0; var_6 < var_5; var_6++ )
            _ID3191( var_0, var_2._ID34225, var_2._ID35594 );
    }
}

_ID17589( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );

    if ( !isdefined( var_2._ID35593 ) )
    {
        thread _ID17588( var_0, var_1 );
        return;
    }

    _ID3191( var_0, var_2._ID34225, var_2._ID35593 );
    var_0._ID35596 = 0;
    thread _ID17566( var_0, var_1 );
}

_ID11784( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    for (;;)
    {
        if ( self vehicle_getspeed() == 0 )
            var_0._ID40167 = var_2._ID19309;
        else
            var_0._ID40167 = var_2._ID19305;

        wait 0.25;
    }
}

_ID17581( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    if ( isdefined( var_2._ID29055 ) )
        _ID3191( var_0, var_2._ID34225, var_2._ID29055 );

    thread _ID17566( var_0, var_1 );
}

_ID17599( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        _ID3191( var_0, var_2._ID34225, var_0._ID39328 );
}

_ID17600( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    for (;;)
        _ID3191( var_0, var_2._ID34225, var_0._ID39328 );
}

_ID17598( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID40290 ) )
        _ID42413::_ID1462() setanimrestart( var_2._ID40290 );

    if ( isdefined( var_2._ID1232 ) )
    {
        if ( isdefined( var_2._ID39260 ) )
            _ID3191( var_0, var_2._ID39260, var_2._ID1232 );
        else
            _ID3191( var_0, var_2._ID34225, var_2._ID1232 );
    }

    thread _ID17566( var_0, var_1 );
}

_ID17566( var_0, var_1, var_2 )
{
    var_0 endon( "newanim" );

    if ( !isdefined( var_2 ) )
        self endon( "death" );

    var_0 endon( "death" );
    var_0._ID40170 = 1;
    var_0 notify( "gotime" );

    if ( !isdefined( var_0._ID40167 ) )
        return;

    var_3 = _ID3052( self, var_1 );

    if ( isdefined( var_3._ID23512 ) )
        return;

    if ( isdefined( var_3._ID18556 ) && var_3._ID18556 )
        var_0 hide();

    if ( isdefined( var_3._ID19309 ) && isdefined( var_3._ID19305 ) )
        thread _ID11784( var_0, var_1 );

    for (;;)
    {
        var_0 notify( "idle" );
        _ID27015( var_0, var_3 );
    }
}

_ID27015( var_0, var_1 )
{
    if ( isdefined( var_0._ID40168 ) )
    {
        _ID3191( var_0, var_1._ID34225, var_0._ID40168 );
        return;
    }

    if ( isdefined( var_1._ID19329 ) )
    {
        var_2 = _ID28973( var_0, var_1._ID19329 );
        _ID3191( var_0, var_1._ID34225, var_0._ID40167[var_2] );
        return;
    }

    if ( isdefined( var_0._ID27942 ) && isdefined( var_1._ID27477 ) )
    {
        _ID3191( var_0, var_1._ID34225, var_1._ID27477 );
        return;
    }

    if ( isdefined( var_1._ID40167 ) )
        thread _ID32549( var_1._ID40167 );

    _ID3191( var_0, var_1._ID34225, var_0._ID40167 );
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

    var_5 = randomint( var_3 );

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( var_5 < var_2[var_4] )
            return var_4;
    }
}

_ID17555( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID12217 );
}

_ID17554( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID12217 ) )
    {
        if ( isdefined( var_2._ID40129 ) )
            thread _ID32549( var_2._ID40129 );

        _ID3191( var_0, var_2._ID34225, var_2._ID12217 );
    }

    thread _ID17566( var_0, var_1 );
}

_ID17609( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID41722 );
}

_ID17608( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID41722 ) )
    {
        if ( isdefined( var_2._ID40303 ) )
            thread _ID32549( var_2._ID40303 );

        _ID3191( var_0, var_2._ID34225, var_2._ID41722 );
    }

    thread _ID17566( var_0, var_1 );
}

_ID17552( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID12224 ) )
        _ID3191( var_0, var_2._ID34225, var_2._ID12224 );

    thread _ID17553( var_0, var_1 );
}

_ID17553( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );
    var_3 = _ID28973( var_0, var_2._ID12223 );

    for (;;)
        _ID3191( var_0, var_2._ID34225, var_2._ID12222[var_3] );
}

_ID17556( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID12225 ) && var_0._ID12225 )
    {
        _ID3191( var_0, var_2._ID34225, var_2._ID12226 );
        var_0._ID12225 = 0;
    }

    thread _ID17566( var_0, var_1 );
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
    if ( !isdefined( self._ID29965 ) || !self._ID29965.size )
        return 0;

    for ( var_1 = 0; var_1 < self._ID29965.size; var_1++ )
    {
        if ( !isalive( self._ID29965[var_1] ) )
            continue;

        if ( _ID7407( self._ID29965[var_1]._ID40222, var_0 ) )
            return 1;
    }

    return 0;
}

_ID16049()
{
    var_0 = [];
    var_1 = [];
    var_2 = "default";

    if ( isdefined( self._ID39487 ) )
        var_2 = self._ID39487;

    var_1 = level._ID40300[self.classname][var_2];

    if ( !isdefined( var_1 ) )
        var_1 = level._ID40300[self.classname]["default"];

    if ( isdefined( var_1 ) )
    {
        foreach ( var_4 in var_1 )
            var_0[var_4] = var_4;
    }

    return var_0;
}

_ID7407( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = self._ID39487;

    var_2 = self.classname;

    if ( !isdefined( level._ID40300[var_2] ) )
        return 1;

    if ( !isdefined( level._ID40300[var_2][var_1] ) )
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
        _ID3191( var_0, var_1, var_2 );
}

_ID16502( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID42413::_ID47115( self.classname );

    if ( var_4 )
    {
        thread _ID16503( var_1, var_2, level._ID40080[var_5][var_0._ID13955]._ID19324 );
        self waittill( "unloading" );
    }

    self._ID39495 = _ID42237::_ID3293( self._ID39495, var_1 );
    thread _ID16499( var_1, var_2, var_3 );

    if ( !isdefined( self._ID9056 ) )
        _ID3191( var_1, var_2, var_3 );

    var_1 unlink();

    if ( !isdefined( self ) )
    {
        var_1 delete();
        return;
    }

    self._ID39495 = _ID42237::_ID3321( self._ID39495, var_1 );

    if ( !self._ID39495.size )
        self notify( "unloaded" );

    self._ID13955[var_0._ID13955] = undefined;
    wait 10;
    var_1 delete();
}

_ID16501()
{
    wait 0.05;

    while ( isalive( self ) && self._ID39495.size > 2 )
        wait 0.05;

    if ( !isalive( self ) || isdefined( self._ID9056 ) && self._ID9056 )
        return;

    self notify( "getoutrig_disable_abort" );
}

_ID16500()
{
    self endon( "end_getoutrig_abort_while_deploying" );

    while ( !isdefined( self._ID9056 ) )
        wait 0.05;

    _ID42237::_ID3315( self._ID29965, _ID42407::_ID10321 );
    self notify( "crashed_while_deploying" );
}

_ID16499( var_0, var_1, var_2 )
{
    var_3 = getanimlength( var_2 );
    var_4 = var_3 - 1.0;

    if ( self._ID1282 == "mi17" )
        var_4 = var_3 - 0.5;

    var_5 = 2.5;
    self endon( "getoutrig_disable_abort" );
    thread _ID16501();
    thread _ID16500();
    _ID42237::_ID41123( "crashed_while_deploying", var_5 );
    self notify( "end_getoutrig_abort_while_deploying" );

    while ( !isdefined( self._ID9056 ) )
        wait 0.05;

    thread _ID3191( var_0, var_1, var_2 );
    waitframe;
    var_0 setanimtime( var_2, var_4 / var_3 );
    var_6 = self;

    if ( isdefined( self._ID1763 ) )
        var_6 = self._ID1763;

    for ( var_7 = 0; var_7 < self._ID29965.size; var_7++ )
    {
        if ( !isdefined( self._ID29965[var_7] ) )
            continue;

        if ( !isdefined( self._ID29965[var_7]._ID28894 ) )
            continue;

        if ( self._ID29965[var_7]._ID28894 != 1 )
            continue;

        if ( !isdefined( self._ID29965[var_7]._ID29969 ) )
            continue;

        self._ID29965[var_7]._ID14786 = 1;

        if ( isalive( self._ID29965[var_7] ) )
            thread _ID3193( self._ID29965[var_7], self, var_6 );
    }
}

_ID32549( var_0, var_1 )
{
    self endon( "death" );
    self endon( "dont_clear_anim" );

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    var_2 = getanimlength( var_0 );
    var_3 = _ID42413::_ID1462();
    var_3 endon( "death" );
    var_3 setflaggedanimrestart( "vehicle_anim_flag", var_0, 1, 0, 1 );
    wait(var_2);

    if ( var_1 && ( !isdefined( self._ID11552 ) || !self._ID11552 ) )
        var_3 clearanim( var_0, 0 );
}
#using_animtree("generic_human");

_ID16494( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = _ID42413::_ID47115( self.classname );
    var_4 = _ID3052( self, var_1 );

    if ( isdefined( self._ID3563 ) && isdefined( self._ID3563[var_4._ID13955] ) )
        var_5 = 1;
    else
        var_5 = 0;

    if ( !isdefined( var_4._ID13955 ) || isdefined( self._ID13955[var_4._ID13955] ) || var_5 )
        return;

    var_6 = var_0 gettagorigin( level._ID40080[var_3][var_4._ID13955]._ID1067 );
    var_7 = var_0 gettagangles( level._ID40080[var_3][var_4._ID13955]._ID1067 );
    self._ID13956[var_4._ID13955] = 1;
    var_8 = spawn( "script_model", var_6 );
    var_8.angles = var_7;
    var_8.origin = var_6;
    var_8 setmodel( level._ID40080[var_3][var_4._ID13955].model );
    self._ID13955[var_4._ID13955] = var_8;
    var_8 useanimtree( #animtree );
    var_8 linkto( var_0, level._ID40080[var_3][var_4._ID13955]._ID1067, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID16502( var_4, var_8, level._ID40080[var_3][var_4._ID13955]._ID1067, level._ID40080[var_3][var_4._ID13955]._ID12144, var_2 );
    return var_8;
}

_ID7401( var_0 )
{
    if ( !isdefined( self._ID34987 ) )
        self._ID34987 = [];

    var_1 = 0;

    if ( !isdefined( self._ID34987[var_0] ) )
        self._ID34987[var_0] = 1;
    else
        var_1 = 1;

    thread _ID7402( var_0 );
    return var_1;
}

_ID7402( var_0 )
{
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    self._ID34987[var_0] = 0;
    var_1 = getarraykeys( self._ID34987 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( self._ID34987[var_1[var_2]] )
            return;
    }

    self._ID34987 = undefined;
}

_ID17603( var_0, var_1 )
{
    if ( !_ID7407( var_1 ) )
    {
        thread _ID17566( var_0, var_1 );
        return;
    }

    self._ID39495 = _ID42237::_ID3293( self._ID39495, var_0 );
    var_2 = var_0 [[ var_0._ID9580 ]]( self, var_1 );

    if ( !var_2 )
        thread _ID17566( var_0, var_1 );
    else
        _ID17550( var_0, var_1 );

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
    if ( isdefined( var_0._ID9580 ) )
    {
        _ID17603( var_0, var_1 );
        return;
    }

    var_2 = _ID3052( self, var_1 );
    var_3 = self._ID1282;

    if ( isdefined( var_2._ID24881 ) )
        var_0._ID7._ID24881 = 0;

    if ( !_ID7407( var_1 ) )
    {
        thread _ID17566( var_0, var_1 );
        return;
    }

    if ( !isdefined( var_2._ID16491 ) && !isdefined( var_2._ID5326 ) )
    {
        thread _ID17566( var_0, var_1 );
        return;
    }

    if ( isdefined( var_2._ID18556 ) && var_2._ID18556 )
        var_0 show();

    self endon( "death" );

    if ( isai( var_0 ) && isalive( var_0 ) )
        var_0 endon( "death" );

    if ( isdefined( var_0.vehicle_unload_delay ) && var_0.vehicle_unload_delay > 0 )
    {
        thread _ID17566( var_0, var_1 );
        wait(var_0.vehicle_unload_delay);
        var_0.vehicle_unload_delay = undefined;
    }

    thread _ID17604( var_0 );

    if ( isdefined( var_0._ID16482 ) )
    {
        if ( isdefined( var_2._ID10179 ) )
        {
            wait(var_2._ID10179);
            var_2._ID10179 = undefined;
            var_0._ID10179 = undefined;
        }

        var_0 [[ var_0._ID16482 ]]();
    }

    if ( isdefined( var_0._ID25830 ) )
    {
        var_0._ID25830 = undefined;

        if ( isdefined( var_0._ID16482 ) )
            var_0 [[ var_0._ID16482 ]]();
    }

    var_4 = _ID16125();

    if ( isdefined( var_2._ID40152 ) )
    {
        var_4 thread _ID32549( var_2._ID40152, var_2._ID40153 );
        var_5 = 0;

        if ( isdefined( var_2._ID40155 ) )
        {
            var_5 = _ID7401( var_2._ID40155 );
            var_6 = var_4 gettagorigin( var_2._ID40155 );
        }
        else
            var_6 = var_4.origin;

        if ( isdefined( var_2._ID40154 ) && !var_5 )
            thread _ID42237::_ID27077( var_2._ID40154, var_6 );

        var_5 = undefined;
    }

    var_7 = 0;

    if ( isdefined( var_2._ID16497 ) )
        var_7 += getanimlength( var_2._ID16497 );

    if ( isdefined( var_2._ID10179 ) )
        var_7 += var_2._ID10179;

    if ( isdefined( var_0._ID10179 ) )
        var_7 += var_0._ID10179;

    if ( var_7 > 0 )
    {
        thread _ID17566( var_0, var_1 );
        wait(var_7);
    }

    var_8 = isdefined( var_2._ID16492 );

    if ( !var_8 && var_0._ID35596 )
        _ID17589( var_0, var_1 );
    else if ( !var_8 && !var_0._ID40170 && isdefined( var_0._ID40167 ) )
        var_0 waittill( "idle" );

    var_0._ID9813 = undefined;
    var_0._ID9814 = undefined;
    var_0 notify( "newanim" );

    if ( isdefined( var_2._ID5174 ) && !var_2._ID5174 )
    {
        if ( !isdefined( var_0._ID10925 ) )
            var_0 _ID42407::_ID17508();
    }

    if ( isai( var_0 ) )
        var_0 pushplayer( 1 );

    var_9 = 0;

    if ( isdefined( var_2._ID5326 ) )
        var_9 = 1;
    else if ( !isdefined( var_2._ID16491 ) || !isdefined( self._ID31499 ) && ( isdefined( var_2._ID5255 ) && var_2._ID5255 ) || isdefined( self._ID31262 ) && var_1 == 0 )
    {
        thread _ID17566( var_0, var_1 );
        return;
    }

    if ( var_0 _ID33902() )
        var_0.health = var_0._ID25994;

    var_0._ID25994 = undefined;

    if ( isai( var_0 ) && isalive( var_0 ) )
        var_0 endon( "death" );

    var_0.allowdeath = 0;

    if ( isdefined( var_2._ID13393 ) )
        var_10 = var_2._ID13393;
    else
        var_10 = var_2._ID34225;

    if ( var_8 && var_0._ID35596 )
        var_11 = var_2._ID16492;
    else if ( isdefined( var_0._ID15884 ) )
        var_11 = var_0._ID15884;
    else if ( isdefined( var_0._ID27942 ) && isdefined( var_2._ID27434 ) )
        var_11 = var_2._ID27434;
    else
        var_11 = var_2._ID16491;

    if ( !var_9 )
    {
        if ( !isdefined( var_0._ID26242 ) )
            thread _ID17601( var_0 );

        if ( isdefined( var_2._ID13955 ) )
        {
            if ( !isdefined( self._ID13955[var_2._ID13955] ) )
            {
                thread _ID17566( var_0, var_1 );
                var_12 = _ID16494( var_4, var_0._ID40222, 0 );
            }
        }

        if ( isdefined( var_2._ID16504 ) )
            var_0 thread _ID42407::_ID27080( var_2._ID16504, "J_Wrist_RI", 1 );

        if ( isdefined( var_0._ID27942 ) && isdefined( var_2._ID27435 ) )
            var_0 thread _ID42407::_ID27079( var_2._ID27435 );

        if ( isdefined( var_2._ID16498 ) )
            var_0 thread _ID42407::_ID27001( var_2._ID16498 );

        if ( isdefined( var_0._ID27942 ) && isdefined( var_2._ID27437 ) )
            level.player thread _ID42237::_ID27000( var_2._ID27437 );

        var_0 notify( "newanim" );
        var_0 notify( "jumping_out" );
        var_13 = 0;

        if ( !isai( var_0 ) && !var_0 _ID44363() )
        {
            var_13 = 1;
            var_0 = _ID17541( var_0, var_1 );
        }

        if ( !isalive( var_0 ) )
            return;

        var_0._ID28894 = 1;

        if ( isdefined( var_2._ID28994 ) )
            var_0 _ID42407::_ID12442();

        if ( isdefined( var_2._ID13955 ) )
            var_0 _ID42407::_ID53251( self, var_2._ID13955 );

        if ( isdefined( var_2._ID28894 ) )
        {
            var_0._ID28894 = 1;

            if ( isdefined( var_2._ID28893 ) )
                var_0._ID28893 = var_2._ID28893;
        }

        if ( isdefined( var_2._ID47849 ) )
        {
            var_0._ID47849 = 1;

            if ( isdefined( var_2._ID46105 ) )
                var_0._ID46105 = var_2._ID46105;
        }

        if ( var_13 )
        {
            self._ID29965 = _ID42237::_ID3293( self._ID29965, var_0 );
            thread _ID17548( var_0, var_1 );
            thread _ID17604( var_0 );
            var_0._ID29969 = self;
        }

        if ( isai( var_0 ) )
            var_0 endon( "death" );

        var_0 notify( "newanim" );
        var_0 notify( "jumping_out" );

        if ( isdefined( var_2._ID22458 ) && var_2._ID22458 )
            thread _ID35557( var_0 );

        if ( isdefined( var_2._ID16495 ) )
        {
            _ID3191( var_0, var_10, var_11 );
            var_14 = var_10;

            if ( isdefined( var_2._ID16496 ) )
                var_14 = var_2._ID16496;

            _ID3191( var_0, var_14, var_2._ID16495 );
        }
        else if ( isdefined( var_2._ID26242 ) )
        {
            if ( !isdefined( self._ID2969 ) )
            {
                self._ID2969 = 0;
                self._ID26008 = ( 0, 0, 0 );
                self._ID39486 = 0.5;
            }
            else
            {
                self._ID39486 = self._ID39486 + randomfloatrange( 0.5, 1 );
                wait(self._ID39486);
            }

            if ( !isdefined( self ) )
                return;

            var_15 = spawn( "script_model", self gettagorigin( var_10 ) );
            var_15.angles = ( 0, self.angles[1] + self._ID2969, 0 );
            self._ID2969 = self._ID2969 + 5;
            var_15 setmodel( "tag_origin" );
            var_16 = _ID42407::_ID17434( self.origin ) + ( 0, 0, self._ID39485 );
            var_15.origin = var_16 + ( randomintrange( 10, 20 ), randomintrange( 10, 20 ), 0 );
            var_17 = spawn( "script_model", var_15.origin );
            var_17.angles = var_15.angles;
            var_17 setmodel( self._ID39491 );
            var_17._ID3189 = "parachute";
            var_17 useanimtree( level._ID30900["parachute"] );
            var_17 hide();
            var_17 _ID42407::_ID13024( "parachute_open" );

            if ( isdefined( var_2._ID26239 ) )
                var_15 _ID26242( var_0, var_17, self._ID39492, var_11, var_2._ID26239 );
            else
                var_15 _ID26242( var_0, var_17, self._ID39492, var_11 );

            var_15 delete();
        }
        else
        {
            var_0._ID3007 = 1;

            if ( isdefined( var_0._ID47712 ) )
            {
                thread _ID3191( var_0, var_10, var_11, undefined, undefined );
                var_0 thread _ID52627();
                var_0._ID7._ID24881 = 1;
                var_18 = var_0 _ID52330();

                if ( isdefined( var_18 ) && var_18 == "interrupt" )
                {
                    while ( !isdefined( var_0._ID51879 ) )
                        waittillframeend;

                    var_0 stopanimscripted();
                    var_0 notify( "newanim" );
                    var_0 notify( "animontag_thread" );
                }

                var_0 _meth_8584( 0 );
                self._ID51879 = undefined;
                var_0._ID47712 = undefined;
                var_0._ID7._ID24881 = 0;
            }
            else
                _ID3191( var_0, var_10, var_11, undefined, undefined );
        }

        if ( isdefined( var_0._ID27942 ) && isdefined( var_2._ID27437 ) )
            level.player thread _ID42237::_ID36516( var_2._ID27437 );

        if ( isdefined( var_2._ID16498 ) )
            var_0 thread _ID42237::_ID36516( var_2._ID16498 );

        if ( isdefined( var_0._ID27942 ) && isdefined( var_2._ID27436 ) )
            level.player thread _ID42407::_ID27079( var_2._ID27436 );
    }
    else if ( !isai( var_0 ) )
    {
        if ( var_0._ID11842 == 1 )
        {
            var_0 delete();
            return;
        }

        var_0 = _ID42407::_ID36874( var_0 );
    }

    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
    var_0._ID29969 = undefined;
    var_0._ID11803 = undefined;

    if ( !isalive( self ) && !isdefined( var_2._ID39494 ) )
    {
        var_0 delete();
        return;
    }

    var_0 unlink();

    if ( !isdefined( var_0._ID22746 ) )
    {
        if ( isdefined( var_0._ID24924 ) )
            var_0._ID24924 = undefined;

        var_0.allowdeath = 1;
    }

    if ( !isai( var_0 ) && var_0 _ID44363() )
    {
        if ( var_0._ID11842 )
        {
            var_0 delete();
            return;
        }
    }

    if ( isalive( var_0 ) )
    {
        if ( isai( var_0 ) )
        {
            if ( isdefined( var_0._ID7._ID11036 ) )
                var_0._ID7._ID11035 = var_0._ID7._ID11036;
            else
                var_0._ID7._ID11035 = !var_0 isbadguy();
        }

        var_0._ID14778 = undefined;
        var_0 notify( "jumpedout" );
        var_0 _ID42407::_ID10869();

        if ( isdefined( var_2._ID13955 ) && isalive( var_0 ) )
            var_0 _ID42407::_ID50799();

        if ( isai( var_0 ) )
        {
            if ( isdefined( var_2._ID16505 ) )
            {
                var_0._ID10423 = var_2._ID16505;
                var_0 allowedstances( "crouch" );
                var_0 thread animscripts\utility::_ID39672();
                var_0 allowedstances( "stand", "crouch", "prone" );
            }

            var_0 pushplayer( 0 );

            if ( ( !isdefined( var_0.keepgoalonunload ) || var_0.keepgoalonunload == 0 ) && _ID17582( var_0 ) )
            {
                var_0.goalradius = 600;
                var_0 setgoalpos( var_0.origin );
            }
        }
    }

    if ( isdefined( var_2._ID16493 ) && var_2._ID16493 )
    {
        var_0 delete();
        return;
    }

    var_0 _ID17545();
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
    if ( isdefined( self._ID31459 ) )
        return 1;

    if ( isdefined( self._ID11842 ) && self._ID11842 )
        return 1;

    return 0;
}

_ID26242( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 unlink();
    var_5 = var_1 gettagorigin( "tag_driver" );
    var_6 = var_1 gettagangles( "tag_driver" );
    var_0 forceteleport( var_5, var_6 );
    var_0 linkto( var_1, "tag_driver" );
    var_1 animscripted( "parachute_unload", self.origin, self.angles, var_2 );

    if ( isdefined( var_4 ) )
        var_1 thread _ID26241( "parachute_unload", "show_parachute", var_4 );
    else
        var_1 thread _ID26241( "parachute_unload", "show_parachute" );

    var_0 animscripted( "parachute_unload", var_0.origin, var_0.angles, var_3 );
    level thread _ID26238( var_0, var_1 );
    var_1 waittillmatch( "parachute_unload",  "end"  );
    var_1 notify( "parachute_landed" );

    if ( isalive( var_0 ) )
        var_0 unlink();
}

_ID26240( var_0 )
{
    var_1 = anglestoforward( var_0.angles );
    var_2 = vectornormalize( _ID42237::_ID14539( var_1 ) );
    var_3 = self.origin + var_2 * 10000;
    thread _ID42407::_ID11708( self, var_3, 1, 0, 0, 10 );
    self moveto( var_3, 1 );
}

_ID26238( var_0, var_1 )
{
    var_1 endon( "parachute_landed" );

    if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !isai( var_0 ) )
        var_0 setcandamage( 1 );

    var_2 = undefined;
    var_3 = undefined;

    for (;;)
    {
        var_0 waittill( "damage",  var_2, var_3  );

        if ( !isdefined( var_2 ) )
            continue;

        if ( var_2 < 1 )
            continue;

        if ( !isdefined( var_3 ) )
            continue;

        if ( isplayernumber( var_3 ) )
            break;
    }

    if ( !var_1 _ID42407::_ID13019( "parachute_open" ) )
    {
        var_1 notify( "rider_dead" );
        thread _ID3193( var_0, undefined, var_3 );
        wait 2;
        var_1 delete();
    }
    else
        iprintln( "parachute death anim here!" );
}

_ID26241( var_0, var_1, var_2 )
{
    self endon( "rider_dead" );
    self waittillmatch( var_0,  var_1  );

    if ( isdefined( var_2 ) )
        self thread [[ var_2 ]]();

    _ID42407::_ID13025( "parachute_open" );
}

_ID17582( var_0 )
{
    if ( isdefined( var_0._ID31124 ) )
        return 0;

    if ( var_0 _ID42407::_ID18155() )
        return 0;

    if ( isdefined( var_0._ID28791 ) )
        return 0;

    if ( !isdefined( var_0.target ) )
        return 1;

    var_1 = getnodearray( var_0.target, "targetname" );

    if ( var_1.size > 1 )
        return 0;

    var_2 = getent( var_0.target, "targetname" );

    if ( isdefined( var_2 ) && var_2.classname == "info_volume" )
    {
        var_0 setgoalvolumeauto( var_2 );
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

    if ( !isdefined( var_5 ) )
        var_5 = "animontagdone";

    if ( isdefined( self._ID23875 ) )
        var_6 = self._ID23875;
    else
        var_6 = self;

    if ( !isdefined( var_1 ) )
    {
        var_7 = var_0.origin;
        var_8 = var_0.angles;
    }
    else
    {
        var_7 = var_6 gettagorigin( var_1 );
        var_8 = var_6 gettagangles( var_1 );
    }

    if ( !isdefined( var_0._ID24856 ) && getdvar( "ragdoll_enable" ) != "0" )
    {
        if ( isdefined( var_0._ID47849 ) )
            level thread _ID52424( var_0, self );
        else if ( isdefined( var_0._ID28894 ) )
            level thread _ID3192( var_0, self );
    }

    var_0 animscripted( var_5, var_7, var_8, var_2 );

    if ( isai( var_0 ) )
        thread _ID11529( var_0, var_6, var_5 );

    if ( isdefined( var_0._ID3007 ) )
    {
        var_0._ID3007 = undefined;
        var_9 = getanimlength( var_2 );
        var_10 = var_9 - 0.25;

        if ( isdefined( var_0.vehicle_anim_ends_on_finish ) && var_0.vehicle_anim_ends_on_finish && animhasnotetrack( var_2, "finish" ) )
        {
            var_11 = getnotetracktimes( var_2, "finish" );
            var_12 = var_11[0] * var_9;

            if ( var_12 < var_10 )
                var_10 = var_12;
        }

        if ( var_10 > 0 )
            wait(var_10);

        if ( !isdefined( var_0 ) || _func_2a5( var_0 ) )
            return;

        var_0 stopanimscripted();
        var_0.interval = 0;
        var_0 thread _ID29331();
    }
    else
    {
        if ( isdefined( var_3 ) )
        {
            for ( var_13 = 0; var_13 < var_3.size; var_13++ )
            {
                var_0 waittillmatch( var_5,  var_3[var_13]  );
                var_0 thread [[ var_4[var_13] ]]();
            }
        }

        if ( isdefined( var_0.vehicle_anim_ends_on_finish ) && var_0.vehicle_anim_ends_on_finish && animhasnotetrack( var_2, "finish" ) )
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

    if ( isdefined( self ) && self.interval == 0 )
        self.interval = 80;
}

_ID3192( var_0, var_1 )
{
    if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !isai( var_0 ) )
        var_0 setcandamage( 1 );

    var_0 endon( "anim_on_tag_done" );

    if ( !isdefined( var_0._ID6900 ) || !var_0._ID6900 )
        thread _ID3194( var_0, var_1 );

    var_2 = undefined;
    var_3 = undefined;
    var_4 = var_1.health <= 0;

    for (;;)
    {
        if ( !var_4 && !( isdefined( var_1 ) && var_1.health > 0 ) )
            break;

        var_0 waittill( "damage",  var_2, var_3  );

        while ( isdefined( var_0._ID47712 ) && !isdefined( var_0._ID51879 ) )
            waittillframeend;

        if ( isdefined( var_0._ID14786 ) )
            break;

        if ( !isdefined( var_2 ) )
            continue;

        if ( var_2 < 1 )
            continue;

        if ( !isdefined( var_3 ) )
            continue;

        if ( isplayernumber( var_3 ) )
            break;
    }

    if ( !isalive( var_0 ) )
        return;

    thread _ID3193( var_0, var_1, var_3 );
}

_ID3193( var_0, var_1, var_2 )
{
    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;

    if ( isdefined( var_0._ID28893 ) )
    {
        var_3 = getangledelta( var_0._ID28893, 0, 1 );
        var_4 = physicstrace( var_0.origin + ( 0, 0, 16 ), var_0.origin - ( 0, 0, 10000 ) );
        var_5 = distance( var_0.origin + ( 0, 0, 16 ), var_4 );

        if ( abs( var_3[2] + 16 ) <= abs( var_5 ) )
        {
            var_0 thread _ID42407::_ID27079( "generic_death_falling" );
            var_0 animscripted( "fastrope_fall", var_0.origin, var_0.angles, var_0._ID28893 );
            var_0 waittillmatch( "fastrope_fall",  "start_ragdoll"  );
        }
    }

    if ( !isdefined( var_0 ) )
        return;

    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;
    var_0 notify( "rope_death",  var_2  );
    _ID42372::_ID9791( var_2 );
    var_0 kill( var_2.origin, var_2 );

    if ( isdefined( var_0._ID31459 ) || isdefined( var_0._ID11842 ) )
    {
        var_0 notsolid();
        var_6 = getweaponmodel( var_0.weapon );
        var_7 = var_0.weapon;

        if ( isdefined( var_6 ) )
        {
            var_0 detach( var_6, "tag_weapon_right" );
            var_8 = var_0 gettagorigin( "tag_weapon_right" );
            var_9 = var_0 gettagangles( "tag_weapon_right" );
            level._ID17495 = spawn( "weapon_" + var_7, ( 0, 0, 0 ) );
            level._ID17495.angles = var_9;
            level._ID17495.origin = var_8;
        }
    }
    else
        var_0 animscripts\shared::_ID12143();

    if ( isdefined( var_0._ID9797 ) )
    {
        if ( isdefined( var_0._ID15885 ) )
        {
            var_10 = 0.33;

            if ( isdefined( var_0._ID23614 ) )
                var_10 = var_0._ID23614;

            var_11 = var_0 getanimtime( var_0._ID15883 );

            if ( var_11 < var_10 )
                wait(var_0._ID15885 * ( var_10 - var_11 ));

            if ( _func_2a5( var_0 ) )
                return;
        }

        var_12 = length( var_0._ID9797 );
        var_13 = vectornormalize( var_1 localtoworldcoords( var_0._ID9797 ) - var_0.origin ) * var_12;
        var_0 startragdollfromimpact( "torso_lower", var_13 );
    }
    else
        var_0 startragdoll();
}

_ID52424( var_0, var_1 )
{
    if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( !isai( var_0 ) )
        var_0 setcandamage( 1 );

    var_0 endon( "anim_on_tag_done" );
    var_2 = gettime();
    var_3 = undefined;
    var_4 = undefined;

    for (;;)
    {
        var_0 waittill( "damage",  var_3, var_4  );

        while ( isdefined( var_0._ID47712 ) && !isdefined( var_0._ID51879 ) )
            waittillframeend;

        if ( !isdefined( var_3 ) )
            continue;

        if ( var_3 < 1 )
            continue;

        if ( !isdefined( var_4 ) )
            continue;

        if ( isplayernumber( var_4 ) )
            break;
    }

    if ( !isalive( var_0 ) )
        return;

    var_0._ID9813 = undefined;
    var_0._ID9827 = undefined;
    var_0._ID3004 = 1;
    var_0._ID7._ID24881 = 1;
    var_0 kill();
    var_5 = _ID42237::_ID37527( var_0 == var_1._ID29965[0], 1400, 800 );

    if ( gettime() - var_2 < var_5 )
    {
        var_0 animscripted( "snowmobile_unload_death", var_0.origin, var_0.angles, var_0._ID46105 );
        var_0 waittillmatch( "snowmobile_unload_death",  "start_ragdoll"  );
    }

    var_0 animscripts\shared::_ID12143();
    var_0 startragdoll();
}

_ID3194( var_0, var_1 )
{
    var_0 endon( "anim_on_tag_done" );
    var_0 endon( "death" );
    var_1 waittill( "death",  var_2, var_3, var_4  );

    if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
        return;

    var_5 = 0;

    if ( isdefined( var_0._ID23614 ) )
    {
        var_6 = var_0 getanimtime( var_0._ID15883 );

        if ( var_6 < var_0._ID23614 )
            var_5 = 1;
    }

    if ( !_func_2a5( var_0 ) )
    {
        if ( var_5 )
        {
            var_0 notify( "killanimscript" );
            waitframe;
            var_0 thread _ID10205();
        }

        if ( isdefined( var_2 ) )
            var_0 kill( var_0.origin, var_2 );
        else
            var_0 kill();
    }
}

_ID10205()
{
    waittillframeend;

    if ( !_func_2a5( self ) )
        self delete();
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
    var_0 animscripted( "movetospot", var_1, var_2, var_3 );
    var_0 waittillmatch( "movetospot",  "end"  );
}

_ID17607( var_0, var_1, var_2 )
{
    if ( !isalive( var_0 ) )
        return;

    if ( isdefined( self._ID24848 ) )
        return;

    var_3 = _ID3052( self, var_0._ID40222 );
    var_0._ID40081 = var_1;

    if ( isdefined( var_3._ID13635 ) )
        return _ID17542( var_0 );

    if ( isdefined( level._ID40231 ) && isdefined( level._ID40231[self.classname] ) )
    {
        self [[ level._ID40231[self.classname] ]]();
        return;
    }

    if ( isdefined( var_3._ID39494 ) && isdefined( self ) )
    {
        if ( isdefined( self._ID11583 ) && self._ID11583 )
            return;

        thread _ID17566( var_0, var_0._ID40222, 1 );
        wait(var_3._ID39494);

        if ( isdefined( var_0 ) && isdefined( self ) )
        {
            self._ID17471 = var_0._ID40222;
            _ID42411::_ID40066( "unload" );
        }

        return;
    }

    if ( isdefined( var_0 ) )
    {
        if ( isdefined( var_0._ID28894 ) && var_2 != "bm21_troops" )
            return;

        _ID45456::_ID54623( var_0 );
        [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_0.origin );
        var_0 delete();
    }
}

_ID17597( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID39208 );
}

_ID17596( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID40288 ) )
        thread _ID32549( var_2._ID40288 );

    _ID3191( var_0, var_2._ID34225, var_2._ID39208 );
    thread _ID17566( var_0, var_1 );
}

_ID17594( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID3052( self, var_1 );

    if ( isdefined( var_2._ID40287 ) )
        thread _ID32549( var_2._ID40287 );

    _ID3191( var_0, var_2._ID34225, var_2._ID39182 );
    thread _ID17566( var_0, var_1 );
}

_ID17595( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID39182 );
}

_ID17593( var_0, var_1 )
{
    var_2 = level._ID40069[self.classname][var_1];

    if ( isdefined( var_2._ID19312 ) )
        var_0._ID40168 = var_2._ID19312;
}

_ID17592( var_0, var_1 )
{
    var_2 = level._ID40069[self.classname][var_1];

    if ( isdefined( var_2._ID19311 ) )
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

    if ( isdefined( var_0._ID14778 ) )
        var_2 = var_0._ID14778;

    if ( isdefined( var_2 ) )
        return var_2;

    if ( !isdefined( self._ID39936 ) )
        return;

    for ( var_3 = 0; var_3 < self._ID39936.size; var_3++ )
    {
        if ( self._ID39936[var_3] )
            continue;

        return var_3;
    }

    if ( isdefined( var_0._ID31516 ) )
    {

    }
}

_ID17575( var_0, var_1, var_2 )
{
    var_3 = _ID3052( self, var_1 );
    var_4 = self._ID23512[var_3._ID23512];

    if ( !isalive( var_0 ) )
        return;

    var_4 endon( "death" );
    var_0 endon( "death" );
    var_0.cheat._ID48626 = 1;

    if ( isdefined( var_2 ) && var_2 && isdefined( var_3._ID26295 ) )
        [[ var_3._ID26295 ]]( self, var_0, var_1, var_4 );

    _ID42413::_ID32486( var_4 );
    var_5 = var_4 _meth_85b2();
    var_4 setdefaultdroppitch( 0 );
    wait 0.1;
    var_0 endon( "guy_man_turret_stop" );
    level thread _ID42331::_ID23499( var_4, _ID42407::_ID16219() );
    var_4 setturretignoregoals( 1 );

    if ( var_4._ID26175._ID1282 == "technical" )
        var_0 _ID42407::_ID10949();

    if ( isdefined( var_3._ID34227 ) && var_3._ID34227 )
        var_4 thread _ID42332::main( var_0, var_3 );
    else
    {
        var_4 thread _ID44818( var_0, var_5 );

        for (;;)
        {
            if ( !isdefined( var_0 getturret() ) )
                var_0 useturret( var_4 );

            wait 1;
        }
    }
}

_ID44818( var_0, var_1 )
{
    self endon( "death" );
    var_0 waittill( "death" );
    self setdefaultdroppitch( var_1 );
}

_ID17601( var_0 )
{
    var_0 endon( "jumpedout" );
    var_0 waittill( "death" );

    if ( isdefined( var_0 ) )
        var_0 unlink();
}

_ID17542( var_0 )
{
    if ( !isdefined( var_0._ID40222 ) )
        return;

    var_1 = var_0._ID40222;
    var_2 = _ID3052( self, var_1 );

    if ( !isdefined( var_2._ID13635 ) )
        return;

    [[ level._ID16945 ]]( "MOD_RIFLE_BULLET", "torso_upper", var_0.origin );
    var_0._ID9813 = var_2._ID13635;
    var_3 = self.angles;
    var_4 = var_0.origin;

    if ( isdefined( var_2._ID13636 ) )
    {
        var_4 += anglestoforward( var_3 ) * var_2._ID13636[0];
        var_4 += anglestoright( var_3 ) * var_2._ID13636[1];
        var_4 += anglestoup( var_3 ) * var_2._ID13636[2];
    }

    var_0 = _ID8613( var_0 );
    _ID10621( var_0, "weapon_" );
    var_0 notsolid();
    var_0.origin = var_4;
    var_0.angles = var_3;
    var_0 animscripted( "deathanim", var_4, var_3, var_2._ID13635 );
    var_5 = 0.3;

    if ( isdefined( var_2._ID13637 ) )
        var_5 = var_2._ID13637;

    var_6 = getanimlength( var_2._ID13635 );
    var_7 = gettime() + var_6 * 1000;
    wait(var_6 * var_5);
    var_8 = ( 0, 0, 1 );
    var_9 = var_0.origin;

    if ( getdvar( "ragdoll_enable" ) == "0" )
    {
        var_0 delete();
        return;
    }

    if ( isai( var_0 ) )
        var_0 animscripts\shared::_ID12143();
    else
        _ID10621( var_0, "weapon_" );

    while ( !var_0 isragdoll() && gettime() < var_7 )
    {
        var_9 = var_0.origin;
        wait 0.05;
        var_8 = var_0.origin - var_9;
        var_0 startragdoll();
    }

    wait 0.05;
    var_8 *= 20000;

    for ( var_10 = 0; var_10 < 3; var_10++ )
    {
        if ( isdefined( var_0 ) )
            var_9 = var_0.origin;

        wait 0.05;
    }

    if ( !var_0 isragdoll() )
        var_0 delete();
}

_ID8613( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = spawn( "script_model", var_0.origin );
    var_3.angles = var_0.angles;
    var_3 setmodel( var_0.model );
    var_4 = var_0 getattachsize();

    for ( var_5 = 0; var_5 < var_4 && ( var_2 || var_5 < 1 ); var_5++ )
    {
        var_3 attach( var_0 getattachmodelname( var_5 ), var_0 getattachtagname( var_5 ) );

        if ( var_5 == 0 )
            var_3._ID18304 = var_0 getattachmodelname( var_5 );
    }

    var_3 useanimtree( #animtree );

    if ( isdefined( var_0.team ) )
        var_3.team = var_0.team;

    var_3.cheat = var_0.cheat;
    var_3._ID43135 = var_0._ID43135;

    if ( isdefined( var_3.team ) && var_3.team != "allies" )
        var_3 thread _ID49347::addspecialmonitors();

    if ( !var_1 )
        var_0 delete();

    var_3 makefakeai();
    return var_3;
}

_ID40075( var_0, var_1 )
{
    self useanimtree( var_1 );
    self setanim( var_0 );
}

_ID40151( var_0 )
{
    var_1 = _ID3052( self, var_0 );
    return _ID40145( var_1._ID16341, var_1._ID34225, var_0 );
}

_ID40145( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_4 = undefined;
    var_5 = undefined;
    var_6 = self gettagorigin( var_1 );
    var_7 = self gettagangles( var_1 );
    var_4 = getstartorigin( var_6, var_7, var_0 );
    var_5 = getstartangles( var_6, var_7, var_0 );
    var_3.origin = var_4;
    var_3.angles = var_5;
    var_3._ID40222 = var_2;
    return var_3;
}

_ID20593( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        return 1;

    var_3 = var_0.classname;
    var_4 = level._ID40300[var_3][var_2];

    foreach ( var_6 in var_4 )
    {
        if ( var_6 == var_1 )
            return 1;
    }

    return 0;
}

_ID15570( var_0 )
{
    var_1 = level._ID40069[self.classname];
    var_2 = [];
    var_3 = [];

    for ( var_4 = 0; var_4 < self._ID39936.size; var_4++ )
    {
        if ( self._ID39936[var_4] )
            continue;

        if ( isdefined( var_1[var_4]._ID16341 ) && _ID20593( self, var_4, var_0 ) )
        {
            var_2[var_2.size] = _ID40151( var_4 );
            continue;
        }

        var_3[var_3.size] = var_4;
    }

    var_5 = spawnstruct();
    var_5._ID4471 = var_2;
    var_5._ID24916 = var_3;
    return var_5;
}

_ID16125()
{
    if ( isdefined( self._ID23875 ) )
        return self._ID23875;
    else
        return self;
}

_ID10621( var_0, var_1 )
{
    var_2 = var_0 getattachsize();
    var_3 = [];
    var_4 = [];
    var_5 = 0;

    for ( var_6 = 0; var_6 < var_2; var_6++ )
    {
        var_7 = var_0 getattachmodelname( var_6 );
        var_8 = var_0 getattachtagname( var_6 );

        if ( issubstr( var_7, var_1 ) )
        {
            var_3[var_5] = var_7;
            var_4[var_5] = var_8;
            var_5++;
        }
    }

    for ( var_6 = 0; var_6 < var_3.size; var_6++ )
        var_0 detach( var_3[var_6], var_4[var_6] );
}

_ID33902()
{
    if ( !isai( self ) )
        return 0;

    if ( !isdefined( self._ID25994 ) )
        return 0;

    return !isdefined( self._ID22746 );
}

_ID17580( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID28338 );
}

_ID17579( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );

    if ( !isdefined( var_2._ID28338 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _ID3191( var_0, var_2._ID34225, var_2._ID28338 );

    for (;;)
        _ID3191( var_0, var_2._ID34225, var_2._ID28339 );
}

_ID17567( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );

    if ( !isdefined( var_2._ID19303 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    for (;;)
        _ID3191( var_0, var_2._ID34225, var_2._ID19303 );
}

_ID17568( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID19303 );
}

_ID17569( var_0, var_1 )
{
    var_2 = _ID3052( self, var_1 );

    if ( !isdefined( var_2._ID19303 ) )
        return;

    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _ID3191( var_0, var_2._ID34225, var_2._ID19304 );
    thread _ID17566( var_0, var_1 );
}

_ID17570( var_0, var_1 )
{
    return isdefined( _ID3052( self, var_1 )._ID19304 );
}

_ID35557( var_0 )
{
    self waittill( "stable_for_unlink" );

    if ( isalive( var_0 ) )
        var_0 unlink();
}

_ID38055()
{

}

_ID3162( var_0 )
{
    var_1 = [];

    foreach ( var_3 in self._ID29965 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( isdefined( level._ID40068[var_0] ) && ![[ level._ID40068[var_0] ]]( var_3, var_3._ID40222 ) )
            continue;

        if ( isdefined( level._ID40070[var_0] ) )
        {
            var_3 notify( "newanim" );
            var_3._ID28828 = [];
            thread [[ level._ID40070[var_0] ]]( var_3, var_3._ID40222 );
            var_1[var_1.size] = var_3;
            continue;
        }

        var_3 notify( "newanim" );
        var_3._ID28828 = [];
        thread _ID17606( var_3, var_3._ID40222, var_0 );
        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID17606( var_0, var_1, var_2 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_3 = _ID3052( self, var_1 );

    if ( isdefined( var_3._ID2371[var_2] ) )
        thread _ID32549( var_3._ID2371[var_2] );

    _ID3191( var_0, var_3._ID34225, var_3._ID2370[var_2] );
    _ID17566( var_0, var_1 );
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
    var_0 = self getcentroid();
    var_1 = self getpointinbounds( 1, 0, 0 );
    var_2 = distance( var_1, var_0 );
    var_3 = getcorpsearray();

    foreach ( var_5 in var_3 )
    {
        if ( distance( var_5.origin, var_0 ) < var_2 )
            var_5 delete();
    }
}

_ID11058()
{
    if ( isdefined( self._ID29969 ) )
        self._ID29969 _ID17550( self, self._ID40222 );
}

_ID17550( var_0, var_1 )
{
    var_0 notify( "jumpedout" );
    self._ID29965 = _ID42237::_ID3321( self._ID29965, var_0 );
    self._ID39936[var_1] = 0;
    var_0._ID29969 = undefined;
    var_0._ID11803 = undefined;
    var_0 _ID17545();
}
