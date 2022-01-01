// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    precachemodel( "grenade_bag" );
    createthreatbiasgroup( "allies" );
    createthreatbiasgroup( "axis" );
    createthreatbiasgroup( "team3" );
    createthreatbiasgroup( "civilian" );
    _ID42259::_ID2058( "generic", "rappel_pushoff_initial_npc", _ID42407::_ID12443 );
    _ID42259::_ID2058( "generic", "ps_rappel_pushoff_initial_npc", _ID42407::_ID12443 );
    _ID42259::_ID2058( "generic", "feet_on_ground", _ID42407::_ID10870 );
    _ID42259::_ID2058( "generic", "ps_rappel_clipout_npc", _ID42407::_ID10870 );

    foreach ( var_1 in level._ID805 )
        var_1 setthreatbiasgroup( "allies" );

    level._ID1537 = 0;
    level._ID1357 = [];
    level._ID21342 = 0;
    level._ID13989 = 0;
    level._ID23777 = 0;
    level._ID15456 = [];
    level._ID34438 = [];

    if ( !isdefined( level._ID9822 ) )
        level._ID9822 = [];

    level._ID35273 = 0;
    level._ID16965 = [];

    if ( !isdefined( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["regular"] = ::_ID36740;
    level._ID36742["elite"] = ::_ID36737;
    level._ID37353 = [];
    level._ID37353["axis"] = ::_ID35171;
    level._ID37353["allies"] = ::_ID35170;
    level._ID37353["team3"] = ::_ID35173;
    level._ID37353["neutral"] = ::_ID35172;
    level._ID24767 = 0;
    level._ID17619 = randomintrange( 1, 4 );

    if ( !isdefined( level._ID10115 ) )
        level._ID10115 = 2048;

    if ( !isdefined( level._ID10114 ) )
        level._ID10114 = 512;

    level._ID28238 = "J_Shoulder_RI";
    level._ID23498 = 1024;

    if ( !isdefined( level._ID23101 ) )
        level._ID23101 = 11;

    level._ID1516 = 0;
    var_3 = getaispeciesarray();
    _ID42237::_ID3350( var_3, ::_ID22461 );
    level._ID2247 = [];
    level._ID11937 = [];
    var_4 = getspawnerarray();

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
        var_4[var_5] thread _ID35141();

    level._ID11937 = undefined;
    thread _ID28652();
    _ID42237::_ID3350( var_3, ::_ID35176 );
    level._ID2248 = getarraykeys( level._ID2247 );

    for ( var_5 = 0; var_5 < level._ID2248.size; var_5++ )
    {
        if ( !issubstr( tolower( level._ID2248[var_5] ), "rpg" ) )
            continue;

        precacheitem( "rpg_player" );
        break;
    }

    level._ID2248 = undefined;
}

_ID2475()
{

}

_ID7399( var_0 )
{
    if ( var_0.size <= 16 )
        return;

    var_1 = 0;
    var_2 = 0;

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( !var_0[var_3]._ID1194 != "axis" )
            continue;

        var_1++;

        if ( !var_0[var_3] _ID18152() )
            continue;

        var_2++;
    }
}

_ID18152()
{
    if ( isdefined( self._ID31090 ) )
        return 1;

    return isdefined( self._ID31091 );
}

_ID28652()
{
    foreach ( var_2, var_1 in level._ID9822 )
    {
        level._ID9822[var_2] = [];
        level._ID9822[var_2]["spawners"] = [];
        level._ID9822[var_2]["ai"] = [];

        if ( !isdefined( level._ID14385[var_2] ) )
            _ID42237::_ID14400( var_2 );
    }
}

_ID35085()
{
    self endon( "death" );

    for (;;)
    {
        if ( self._ID216 > 0 )
            self waittill( "spawned" );

        waitframe;

        if ( !self._ID216 )
            return;
    }
}

_ID2263()
{
    level._ID9822[self._ID31114]["ai"][self._ID39468] = self;
    var_0 = self._ID39468;
    var_1 = self._ID31114;

    if ( isdefined( self._ID31115 ) )
        _ID41177();
    else
        self waittill( "death" );

    level._ID9822[var_1]["ai"][var_0] = undefined;
    _ID39600( var_1 );
}

_ID40112()
{
    var_0 = self._ID39468;
    var_1 = self._ID31114;

    if ( !isdefined( level._ID9822 ) || !isdefined( level._ID9822[self._ID31114] ) )
    {
        waitframe;

        if ( !isdefined( self ) )
            return;
    }

    level._ID9822[var_1]["vehicles"][var_0] = self;
    self waittill( "death" );
    level._ID9822[var_1]["vehicles"][var_0] = undefined;
    _ID39600( var_1 );
}

_ID35267()
{
    level._ID9822[self._ID31114] = [];
    waitframe;

    if ( !isdefined( self ) || self._ID216 == 0 )
        return;

    self._ID35273 = level._ID35273;
    level._ID35273++;
    level._ID9822[self._ID31114]["spawners"][self._ID35273] = self;
    var_0 = self._ID31114;
    var_1 = self._ID35273;
    _ID35085();
    level._ID9822[var_0]["spawners"][var_1] = undefined;
    _ID39600( var_0 );
}

_ID40265()
{
    level._ID9822[self._ID31114] = [];
    waitframe;

    if ( !isdefined( self ) )
        return;

    self._ID35273 = level._ID35273;
    level._ID35273++;
    level._ID9822[self._ID31114]["vehicle_spawners"][self._ID35273] = self;
    var_0 = self._ID31114;
    var_1 = self._ID35273;
    _ID35085();
    level._ID9822[var_0]["vehicle_spawners"][var_1] = undefined;
    _ID39600( var_0 );
}

_ID39600( var_0 )
{
    level notify( "updating_deathflag_" + var_0 );
    level endon( "updating_deathflag_" + var_0 );
    waitframe;

    foreach ( var_3, var_2 in level._ID9822[var_0] )
    {
        if ( getarraykeys( var_2 ).size > 0 )
            return;
    }

    _ID42237::_ID14402( var_0 );
}

_ID26047( var_0 )
{
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isai( var_1 ) )
            continue;

        var_1 thread _ID42407::_ID19375( 0.15 );
        var_1 _ID42407::_ID10896();
        var_1._ID41303 = 0;
    }
}

_ID19528( var_0 )
{
    var_0 endon( "death" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( !isai( var_1 ) )
            continue;

        var_1 thread _ID42407::_ID19375( 0.15 );
        var_1 _ID42407::_ID12467();
        var_1._ID41303 = 1;
    }
}

_ID11239( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger" );

        if ( !var_0._ID216 )
            return;

        if ( self._ID1191 != var_0._ID1193 )
            return;

        if ( isdefined( var_0._ID38945 ) )
            return;

        var_1 = var_0 _ID42407::_ID35014();

        if ( _ID42407::_ID35060( var_1 ) )
            var_0 notify( "spawn_failed" );

        if ( isdefined( self._ID1296 ) && self._ID1296 > 0 )
            wait(self._ID1296);
    }
}

_ID38908( var_0 )
{
    var_1 = var_0._ID28953;
    var_2 = var_0._ID1191;
    var_0 waittill( "trigger" );
    var_0 _ID42407::_ID916();

    if ( isdefined( var_1 ) )
        waitframe;

    var_3 = getentarray( var_2, "targetname" );

    foreach ( var_5 in var_3 )
    {
        if ( var_5._ID172 == "script_vehicle" )
        {
            if ( isdefined( var_5._ID31299 ) && var_5._ID31299 == 1 || !isdefined( var_5._ID1191 ) )
                thread _ID42411::_ID40260( var_5 );
            else
                var_5 thread _ID42411::_ID35194();

            continue;
        }

        var_5 thread _ID38910();

        if ( level._ID227 )
            wait 0.1;
    }

    if ( isdefined( level._ID35137 ) )
        _ID38871( var_2 );
}

_ID38871( var_0 )
{
    var_1 = _ID42237::_ID16640( var_0, "targetname" );

    if ( getentarray( var_0, "target" ).size <= 1 )
        _ID42407::_ID10354( var_1 );

    var_2 = _ID15928( var_1 );
    _ID42237::_ID3350( var_2, ::_ID38910 );
}

_ID15928( var_0 )
{
    var_1 = [];
    var_2 = [];

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4._ID31441 ) )
            continue;

        if ( !isdefined( var_2[var_4._ID31441] ) )
            var_2[var_4._ID31441] = [];

        var_2[var_4._ID31441][var_2[var_4._ID31441].size] = var_4;
    }

    foreach ( var_7 in var_2 )
    {
        foreach ( var_4 in var_7 )
        {
            var_9 = _ID15979( var_4, var_7.size );
            var_1[var_1.size] = var_9;
        }
    }

    return var_1;
}

_ID15979( var_0, var_1 )
{
    if ( !isdefined( level._ID35274 ) )
        level._ID35274 = [];

    if ( !isdefined( level._ID35274[var_0._ID31441] ) )
        level._ID35274[var_0._ID31441] = _ID9169( var_0._ID31441 );

    var_2 = level._ID35274[var_0._ID31441];
    var_3 = var_2._ID28210[var_2._ID28224];
    var_2._ID28224++;
    var_2._ID28224 = var_2._ID28224 % var_2._ID28210.size;
    var_3._ID740 = var_0._ID740;

    if ( isdefined( var_0._ID65 ) )
        var_3._ID65 = var_0._ID65;
    else if ( isdefined( var_0._ID1191 ) )
    {
        var_4 = getnode( var_0._ID1191, "targetname" );

        if ( isdefined( var_4 ) )
            var_3._ID65 = vectortoangles( var_4._ID740 - var_3._ID740 );
    }

    if ( isdefined( level._ID35136 ) )
        var_3 [[ level._ID35136 ]]( var_0 );

    if ( isdefined( var_0._ID1191 ) )
        var_3._ID1191 = var_0._ID1191;

    var_3._ID216 = 1;
    return var_3;
}

_ID9169( var_0 )
{
    var_1 = getspawnerarray();
    var_2 = spawnstruct();
    var_3 = [];

    foreach ( var_5 in var_1 )
    {
        if ( !isdefined( var_5._ID31441 ) )
            continue;

        if ( var_5._ID31441 != var_0 )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_2._ID28224 = 0;
    var_2._ID28210 = var_3;
    return var_2;
}

_ID38910()
{
    self endon( "death" );
    _ID42407::_ID916();

    if ( !isdefined( self ) )
        return undefined;

    if ( isdefined( self._ID31152 ) )
    {
        var_0 = _ID42407::_ID12076( self, 1 );
        return undefined;
    }
    else if ( !issubstr( self._ID170, "actor" ) )
        return undefined;

    var_1 = isdefined( self._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );

    if ( isdefined( self._ID31214 ) )
        var_0 = self stalingradspawn( var_1 );
    else
        var_0 = self dospawn( var_1 );

    if ( !_ID42407::_ID35060( var_0 ) )
    {
        if ( isdefined( self._ID31101 ) )
        {
            if ( self._ID31101 == "heat" )
                var_0 _ID42407::_ID12492();

            if ( self._ID31101 == "cqb" )
                var_0 _ID42407::_ID12467();
        }

        var_0 _ID42271::_ID52580();
    }

    return var_0;
}

_ID38909( var_0 )
{
    var_1 = var_0._ID1191;
    var_2 = 0;
    var_3 = getentarray( var_1, "targetname" );

    foreach ( var_5 in var_3 )
    {
        if ( !isdefined( var_5._ID1191 ) )
            continue;

        var_6 = getent( var_5._ID1191, "targetname" );

        if ( !isdefined( var_6 ) )
        {
            if ( !isdefined( var_5._ID31273 ) )
                continue;

            var_6 = var_5 _ID42237::_ID15807();

            if ( !isdefined( var_6 ) )
                continue;

            if ( !isspawner( var_6 ) )
                continue;
        }

        var_2 = 1;
        break;
    }

    var_0 waittill( "trigger" );
    var_0 _ID42407::_ID916();
    var_3 = getentarray( var_1, "targetname" );

    foreach ( var_5 in var_3 )
        var_5 thread _ID38877();
}

_ID38877()
{
    var_0 = _ID38876();
    var_1 = _ID38910();

    if ( !isdefined( var_1 ) )
    {
        self delete();

        if ( isdefined( var_0 ) )
        {
            var_1 = var_0 _ID38910();
            var_0 delete();

            if ( !isdefined( var_1 ) )
                return;
        }
        else
            return;
    }

    if ( !isdefined( var_0 ) )
        return;

    var_1 waittill( "death" );

    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0._ID216 ) )
        var_0._ID216 = 1;

    for (;;)
    {
        if ( !isdefined( var_0 ) )
            break;

        var_2 = var_0 _ID38910();

        if ( !isdefined( var_2 ) )
        {
            var_0 delete();
            break;
        }

        var_2 thread _ID29445( var_0 );
        var_2 waittill( "death",  var_3  );

        if ( !_ID27638( var_2, var_3 ) )
        {
            if ( !isdefined( var_0 ) )
                break;

            var_0._ID216++;
        }

        if ( !isdefined( var_2 ) )
            continue;

        if ( !isdefined( var_0 ) )
            break;

        if ( !isdefined( var_0._ID216 ) )
            break;

        if ( var_0._ID216 <= 0 )
            break;

        if ( !_ID42407::_ID31523() )
            wait(randomfloatrange( 1, 3 ));
    }

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID38876()
{
    if ( isdefined( self._ID1191 ) )
    {
        var_0 = getent( self._ID1191, "targetname" );

        if ( isdefined( var_0 ) && isspawner( var_0 ) )
            return var_0;
    }

    if ( isdefined( self._ID31273 ) )
    {
        var_0 = _ID42237::_ID15807();

        if ( isdefined( var_0 ) && isspawner( var_0 ) )
            return var_0;
    }

    return undefined;
}

_ID14580( var_0 )
{
    _ID42237::_ID3350( var_0, ::_ID14579 );
    _ID42237::_ID3350( var_0, ::_ID14582 );
}

_ID29445( var_0 )
{
    var_0 endon( "death" );

    if ( isdefined( self._ID31208 ) )
    {
        if ( self._ID31208 )
            return;
    }

    self waittill( "death" );

    if ( !isdefined( self ) )
        var_0._ID216++;
}

_ID10298( var_0 )
{
    for ( var_1 = 0; var_1 < 2; var_1++ )
    {
        switch ( var_1 )
        {
            case 0:
                var_2 = "axis";
                break;
            default:
                var_2 = "allies";
                break;
        }

        var_3 = getentarray( var_2, "team" );

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        {
            if ( isdefined( var_3[var_4]._ID31453 ) )
            {
                if ( var_3[var_4]._ID31453 == var_0 )
                    var_3[var_4] thread _ID10268();
            }
        }
    }
}

_ID21313( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( var_0._ID1193 ) && var_0._ID1193 != "flood_spawner" )
        return;

    var_0 delete();
}

_ID28953( var_0 )
{
    var_0 endon( "death" );
    var_1 = var_0._ID31414;
    waitframe;

    if ( !isdefined( level._ID21375[var_1] ) )
        return;

    var_0 waittill( "trigger" );
    _ID9401( var_1 );
}

_ID9401( var_0 )
{
    if ( !isdefined( level._ID21375[var_0] ) )
        return;

    var_1 = level._ID21375[var_0];
    var_2 = getarraykeys( var_1 );

    if ( var_2.size <= 1 )
        return;

    var_3 = _ID42237::_ID28945( var_2 );
    var_1[var_3] = undefined;

    foreach ( var_9, var_5 in var_1 )
    {
        foreach ( var_8, var_7 in var_5 )
        {
            if ( isdefined( var_7 ) )
                var_7 delete();
        }

        level._ID21375[var_0][var_9] = undefined;
    }
}

_ID21376( var_0 )
{
    var_1 = getspawnerarray();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( isdefined( var_1[var_2]._ID31264 ) && var_0 == var_1[var_2]._ID31264 )
            var_1[var_2] delete();
    }
}

_ID21308( var_0 )
{
    var_1 = var_0._ID31264;
    var_0 waittill( "trigger" );
    waitframe;
    waitframe;
    _ID21376( var_1 );
    _ID21313( var_0 );
}

_ID12440( var_0 )
{
    var_1 = var_0._ID31161;
    var_0 waittill( "trigger" );
    var_2 = getspawnerarray();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( !isdefined( var_2[var_3]._ID31161 ) )
            continue;

        if ( var_1 != var_2[var_3]._ID31161 )
            continue;

        if ( isdefined( var_2[var_3]._ID31200 ) )
            level notify( "stop_flanker_behavior" + var_2[var_3]._ID31200 );

        var_2[var_3] _ID42407::_ID32251( 0 );
        var_2[var_3] notify( "emptied spawner" );
    }

    var_0 notify( "deleted spawners" );
}

_ID21309( var_0 )
{
    var_1 = getspawnerarray();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isdefined( var_1[var_2]._ID31264 ) )
            continue;

        if ( var_0 != var_1[var_2]._ID31264 )
            continue;

        var_1[var_2] delete();
    }
}

_ID38906( var_0 )
{

}

_ID35079( var_0, var_1 )
{
    if ( !isdefined( level._ID17381 ) || !isdefined( level._ID17381[var_1] ) )
    {
        level._ID17382[var_1] = 0;
        level._ID17381[var_1] = [];
    }

    var_2 = level._ID17382[var_1];
    var_3 = level._ID17381[var_1][var_2];

    if ( isdefined( var_3 ) )
        var_3 delete();

    var_4 = "weapon_fraggrenade";

    if ( isdefined( level._ID794 ) && isdefined( level._ID794._ID40034 ) )
    {
        if ( _ID42237::_ID8201() )
            var_4 = "weapon_frag_grenade_var";
        else
            var_4 = "weapon_flash_grenade_var";
    }

    var_3 = spawn( var_4, var_0 );
    level._ID17381[var_1][var_2] = var_3;
    level._ID17382[var_1] = ( var_2 + 1 ) % 16;
    return var_3;
}

_ID41177()
{
    self endon( "death" );
    self waittill( "pain_death" );
}

_ID12101()
{
    thread drop_akimbo();
    var_0 = self._ID1194;
    _ID41177();

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID24898 ) )
        return;

    self._ID510 = 1;

    if ( self._ID464 <= 0 )
        return;

    level._ID24782--;

    if ( level._ID24782 > 0 )
        return;

    level._ID24782 = 3 + randomint( 2 );
    var_1 = 25;
    var_2 = 12;
    var_3 = self._ID740 + ( randomint( var_1 ) - var_2, randomint( var_1 ) - var_2, 2 ) + ( 0, 0, 42 );
    var_4 = ( 0, randomint( 360 ), 90 );
    thread _ID35080( var_3, var_4, self._ID1194 );
}

drop_akimbo()
{
    self waittill( "weapon_dropped",  var_0  );

    if ( isdefined( var_0 ) && var_0 _meth_85c4() )
    {
        var_1 = _ID42237::_ID37527( _ID42407::_ID18252( var_0._ID669, "TAG_AKIMBO" ), "TAG_AKIMBO", "TAG_FLASH" );
        var_0 attach( var_0._ID669, var_1 );
    }
}

_ID35080( var_0, var_1, var_2 )
{
    var_3 = _ID35079( var_0, var_2 );
    var_3 setmodel( "grenade_bag" );
    var_3._ID65 = var_1;
    var_3 hide();
    wait 0.7;

    if ( !isdefined( var_3 ) )
        return;

    var_3 show();
}

_ID12078()
{
    _ID42288::_ID11877();
}

_ID312()
{

}

_ID35141()
{
    level._ID2247[self._ID170] = 1;

    if ( isdefined( self._ID31137 ) )
    {
        switch ( self._ID31137 )
        {
            case "easy":
                if ( level._ID15361 > 1 )
                    _ID42407::_ID32251( 0 );

                break;
            case "hard":
                if ( level._ID15361 < 2 )
                    _ID42407::_ID32251( 0 );

                break;
        }
    }

    if ( isdefined( self._ID31152 ) )
        thread _ID12078();

    if ( isdefined( self._ID31025 ) )
    {
        var_0 = self._ID31025;

        if ( !isdefined( level._ID1357[var_0] ) )
            _ID2393( var_0 );

        thread _ID2397( level._ID1357[var_0] );
    }

    if ( isdefined( self._ID31125 ) )
    {
        var_1 = 0;

        if ( isdefined( level._ID1356 ) )
        {
            if ( isdefined( level._ID1356[self._ID31125] ) )
                var_1 = level._ID1356[self._ID31125].size;
        }

        level._ID1356[self._ID31125][var_1] = self;
    }

    if ( isdefined( self._ID31247 ) )
    {
        if ( self._ID31247 > level._ID1516 )
            level._ID1516 = self._ID31247;

        var_1 = 0;

        if ( isdefined( level._ID1358 ) )
        {
            if ( isdefined( level._ID1358[self._ID31247] ) )
                var_1 = level._ID1358[self._ID31247].size;
        }

        level._ID1358[self._ID31247][var_1] = self;
    }

    if ( isdefined( self._ID31114 ) )
        thread _ID35267();

    if ( isdefined( self._ID1191 ) )
        _ID9103();

    if ( isdefined( self._ID31442 ) )
        _ID1971();

    if ( isdefined( self._ID31414 ) )
        _ID1932();

    if ( !isdefined( self._ID35075 ) )
        self._ID35075 = [];

    for (;;)
    {
        var_2 = undefined;
        self waittill( "spawned",  var_2  );

        if ( !isalive( var_2 ) )
            continue;

        if ( isdefined( level._ID35278 ) )
            self thread [[ level._ID35278 ]]( var_2 );

        if ( isdefined( self._ID31125 ) )
        {
            for ( var_3 = 0; var_3 < level._ID1356[self._ID31125].size; var_3++ )
            {
                if ( level._ID1356[self._ID31125][var_3] != self )
                    level._ID1356[self._ID31125][var_3] delete();
            }
        }

        var_2._ID35073 = self._ID35075;
        var_2._ID988 = self;

        if ( isdefined( self._ID1193 ) )
        {
            var_2 thread _ID35176( self._ID1193 );
            continue;
        }

        var_2 thread _ID35176();
    }
}

_ID35176( var_0 )
{
    level._ID2247[self._ID170] = 1;
    _ID35177( var_0 );
    self endon( "death" );

    if ( _ID33955() )
        self delete();

    character_model_specialcases();
    thread _ID30393();
    self._ID14234 = 1;
    self notify( "finished spawning" );

    if ( self._ID1194 == "allies" && !isdefined( self._ID31362 ) )
        thread _ID15003();
}

_ID33955()
{
    if ( !isdefined( self._ID31137 ) )
        return 0;

    var_0 = 0;

    switch ( self._ID31137 )
    {
        case "easy":
            if ( level._ID15361 > 1 )
                var_0 = 1;

            break;
        case "hard":
            if ( level._ID15361 < 2 )
                var_0 = 1;

            break;
    }

    return var_0;
}

_ID30393()
{
    self endon( "death" );

    if ( !isdefined( self._ID35073 ) )
    {
        self._ID988 = undefined;
        return;
    }

    for ( var_0 = 0; var_0 < self._ID35073.size; var_0++ )
    {
        var_1 = self._ID35073[var_0];

        if ( isdefined( var_1["param5"] ) )
        {
            thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"], var_1["param4"], var_1["param5"] );
            continue;
        }

        if ( isdefined( var_1["param4"] ) )
        {
            thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"], var_1["param4"] );
            continue;
        }

        if ( isdefined( var_1["param3"] ) )
        {
            thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"] );
            continue;
        }

        if ( isdefined( var_1["param2"] ) )
        {
            thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"] );
            continue;
        }

        if ( isdefined( var_1["param1"] ) )
        {
            thread [[ var_1["function"] ]]( var_1["param1"] );
            continue;
        }

        thread [[ var_1["function"] ]]();
    }

    var_2 = _ID42237::_ID37527( isdefined( level._ID40261 ) && level._ID40261 && self._ID172 == "script_vehicle", self._ID31474, self._ID1194 );

    if ( isdefined( var_2 ) )
    {
        for ( var_0 = 0; var_0 < level._ID35073[var_2].size; var_0++ )
        {
            var_1 = level._ID35073[var_2][var_0];

            if ( isdefined( var_1["param5"] ) )
            {
                thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"], var_1["param4"], var_1["param5"] );
                continue;
            }

            if ( isdefined( var_1["param4"] ) )
            {
                thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"], var_1["param4"] );
                continue;
            }

            if ( isdefined( var_1["param3"] ) )
            {
                thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"], var_1["param3"] );
                continue;
            }

            if ( isdefined( var_1["param2"] ) )
            {
                thread [[ var_1["function"] ]]( var_1["param1"], var_1["param2"] );
                continue;
            }

            if ( isdefined( var_1["param1"] ) )
            {
                thread [[ var_1["function"] ]]( var_1["param1"] );
                continue;
            }

            thread [[ var_1["function"] ]]();
        }
    }

    self._ID35073 = undefined;
    self._ID988 = undefined;
}

_ID35404()
{
    if ( !_ID42407::_ID20614() )
        return;

    _ID42407::_ID1868( ::_ID35402 );
    thread _ID24551();
}

_ID24551()
{
    self waittill( "death",  var_0, var_1, var_2  );

    if ( !isdefined( self ) )
        return;

    if ( !self isbadguy() )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( var_2 ) )
    {
        var_0._ID24550 = undefined;
        return;
    }

    if ( !isdefined( var_0._ID24550 ) )
        var_0._ID24550 = 1;
    else
        var_0._ID24550++;

    if ( _ID42407::_ID20618() && var_0._ID24550 >= 4 )
        var_0 notify( "sur_ch_quadkill" );

    waitframe;
    var_0._ID24550 = undefined;
}

_ID35402( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
    {
        self._ID21789 = var_1;
        self._ID21790 = var_4;
    }
}

_ID54353( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( !isplayernumber( var_0 ) && ( !isdefined( var_1 ) || var_1 != "seaknight_mark19" ) )
        return;

    if ( isdefined( var_1 ) )
    {
        switch ( var_1 )
        {
            case "fraggrenade":
            case "claymore":
            case "rpg":
            case "javelin":
            case "c4":
            case "seaknight_mark19":
                var_3 = 1;
        }
    }

    if ( isdefined( var_2 ) && ( var_2 == "MOD_EXPLOSIVE" || var_2 == "MOD_GRENADE_SPLASH" ) )
        var_3 = 1;

    if ( var_3 )
    {
        if ( !isdefined( level._ID51309 ) )
            level._ID51309 = 1;
        else
        {
            level._ID51309++;

            if ( level._ID51309 == 20 )
                _ID42407::_ID16864( "EXPLOSION_MAN" );
        }
    }
}

_ID9828()
{
    self waittill( "death",  var_0, var_1, var_2  );
    level notify( "ai_killed",  self  );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_0 ) )
    {
        if ( self._ID1194 == "axis" || self._ID1194 == "team3" )
        {
            var_3 = undefined;

            if ( isdefined( var_0._ID85 ) )
            {
                if ( isdefined( var_0._ID20896 ) && var_0._ID20896 )
                    var_3 = "sentry";

                if ( isdefined( var_0._ID279 ) )
                    var_3 = "destructible";

                var_0 = var_0._ID85;
            }
            else if ( isdefined( var_0._ID743 ) )
            {
                if ( isai( var_0 ) && isplayernumber( var_0._ID743 ) )
                    var_3 = "friendly";

                var_0 = var_0._ID743;
            }
            else if ( isdefined( var_0._ID9644 ) )
            {
                if ( isdefined( var_0._ID279 ) )
                    var_3 = "destructible";

                var_0 = var_0._ID9644;
            }

            _ID54353( var_0, var_2, var_1 );
            var_4 = 0;

            if ( isplayernumber( var_0 ) )
                var_4 = 1;

            if ( isdefined( level._ID28165 ) && level._ID28165 )
                var_4 = 1;

            if ( var_4 )
                var_0 _ID42354::_ID29410( self, var_1, var_2, var_3 );
        }
    }

    for ( var_5 = 0; var_5 < self._ID9826.size; var_5++ )
    {
        var_6 = self._ID9826[var_5];

        switch ( var_6["params"] )
        {
            case 0:
                [[ var_6["func"] ]]( var_0 );
                continue;
            case 1:
                [[ var_6["func"] ]]( var_0, var_6["param1"] );
                continue;
            case 2:
                [[ var_6["func"] ]]( var_0, var_6["param1"], var_6["param2"] );
                continue;
            case 3:
                [[ var_6["func"] ]]( var_0, var_6["param1"], var_6["param2"], var_6["param3"] );
                continue;
        }
    }
}

_ID2262()
{
    self._ID9601 = [];

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );

        if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        {
            var_7 = var_1 getcurrentweapon();

            if ( isdefined( var_7 ) && _ID42407::_ID20872( var_7 ) && isdefined( var_4 ) && ( var_4 == "MOD_PISTOL_BULLET" || var_4 == "MOD_RIFLE_BULLET" ) )
                var_1 thread _ID42354::_ID29418();
        }

        foreach ( var_9 in self._ID9601 )
            thread [[ var_9 ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );

        if ( !isalive( self ) || self._ID274 )
            break;
    }
}

_ID22461()
{
    if ( isdefined( self._ID31114 ) )
        level._ID9822[self._ID31114] = 1;

    if ( isdefined( self._ID1191 ) )
        _ID9103();
}

_ID9103()
{
    var_0 = _ID15858();

    if ( isdefined( var_0 ) )
    {
        var_1 = var_0["destination"];
        var_2 = var_0["get_target_func"];

        for ( var_3 = 0; var_3 < var_1.size; var_3++ )
            _ID9102( var_1[var_3], var_2 );
    }
}

_ID35170()
{
    self._ID1258 = 0;
}

_ID35171()
{
    if ( self._ID1244 == "human" && !isdefined( level._ID11030 ) )
        thread _ID12101();

    _ID42407::_ID1868( _ID42298::_ID4385 );

    if ( isdefined( self._ID31102 ) )
        self._ID199 = self._ID31102;
}

_ID35173()
{
    _ID35171();
}

_ID35172()
{

}

_ID36737()
{
    self endon( "death" );
    self._ID12385 = 1;
    self._ID11624 = 0.5;

    if ( !isdefined( self._ID31023 ) )
        self._ID4867 = 5;

    self._ID2219 = 1;

    if ( _ID42407::_ID18177() )
    {
        var_0 = undefined;

        switch ( level._ID15361 )
        {
            case 0:
                var_0 = 0;
                break;
            case 1:
                var_0 = 2;
                break;
            case 2:
                var_0 = 3;
                break;
            case 3:
                var_0 = 4;
                break;
        }

        if ( level._ID15361 > 0 )
        {
            self._ID470 = "flash_grenade";
            self._ID464 = var_0;
        }
    }
}

_ID35270()
{
    var_0 = undefined;

    if ( isdefined( self._ID1302 ) )
        var_0 = self._ID1302;
    else
        return;

    if ( isdefined( var_0 ) && weaponclass( var_0 ) != "rocketlauncher" )
        _ID42407::_ID53909();
}

_ID36740()
{

}

_ID26190( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "death" );

    if ( self._ID486 <= 0 )
        return;

    if ( var_0 >= self._ID642 )
    {
        var_7 = self._ID642;
        self._ID642 = var_7 * 3;
        wait 5;
        self._ID642 = var_7;
    }
}

_ID6315( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) || self._ID486 <= 0 )
        return;

    if ( isdefined( self._ID22746 ) && self._ID22746 )
        return;

    if ( !issubstr( var_4, "BULLET" ) )
        return;

    var_7 = self._ID6315;

    if ( var_0 < self._ID6315 )
        var_7 = var_0;

    self._ID486 = self._ID486 + var_7;
}

_ID35178()
{
    _ID42298::_ID10109();
    _ID42298::_ID465();
}

_ID2293()
{
    if ( !isalive( self ) )
        return;

    if ( self._ID486 <= 1 )
        return;

    self._ID18169 = undefined;
    self._ID9549 = ::_ID44701;
    _ID42407::_ID53909();
    self waittill( "death" );

    if ( !isdefined( self ) )
        return;

    self._ID18169 = 1;
    self._ID9549 = undefined;
    self laseroff();
}

_ID44701()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( animscripts\shared::_ID6909() )
        _ID42407::_ID53909();
    else
        self laseroff();
}

_ID35179()
{
    if ( isdefined( self._ID31149 ) )
        self._ID11582 = 1;

    if ( isdefined( self._ID31114 ) )
        thread _ID2263();

    if ( isdefined( self._ID31044 ) )
        self._ID86 = self._ID31044;

    if ( isdefined( self._ID31457 ) )
        thread _ID35867();

    if ( isdefined( self._ID31117 ) )
        thread _ID9844();

    if ( isdefined( self._ID31366 ) )
        _ID42407::_ID10973();

    if ( isdefined( self._ID31357 ) )
        self._ID34236 = 1;

    if ( isdefined( self._ID31268 ) )
        thread _ID2293();

    if ( isdefined( self._ID31109 ) )
    {
        var_0 = self._ID31109;

        if ( var_0 == 1 )
            var_0 = 8;

        _ID42407::_ID12471( var_0 );
    }

    if ( isdefined( self._ID31175 ) )
        self._ID625 = self._ID31175;
    else
        self._ID625 = _func_2ee();

    if ( isdefined( self._ID31209 ) )
        _ID42407::_ID32315( self._ID31209 );

    if ( isdefined( self._ID11574 ) )
        self._ID309 = 0;

    if ( isdefined( self._ID31188 ) )
        self._ID381 = self._ID31188 == 1;
    else
        self._ID381 = self._ID1194 == "allies";

    self._ID842 = self._ID1194 == "allies" && self._ID381;

    if ( isdefined( self._ID922 ) && self._ID922 == "mgpair" )
        thread _ID42330::_ID9167();

    if ( isdefined( self._ID31238 ) && !( isdefined( self._ID31299 ) && self._ID31299 == 1 || isdefined( self._ID31460 ) ) )
        thread _ID32338();

    if ( isdefined( self._ID31478 ) )
        self setthreatbiasgroup( self._ID31478 );
    else if ( self._ID1194 == "neutral" )
        self setthreatbiasgroup( "civilian" );
    else
        self setthreatbiasgroup( self._ID1194 );

    if ( isdefined( self._ID31071 ) )
        _ID42407::_ID32226( self._ID31071 );

    if ( isdefined( self._ID31023 ) )
        self._ID4867 = self._ID31023;

    if ( isdefined( self._ID31256 ) )
        self._ID511 = 1;

    if ( isdefined( self._ID31254 ) )
        self._ID513 = 1;

    if ( isdefined( self._ID31255 ) )
    {
        self._ID507 = 1;
        self clearenemy();
    }

    if ( isdefined( self._ID31431 ) )
        self._ID628 = self._ID31431;

    if ( isdefined( self._ID31180 ) )
    {
        if ( self._ID31180 == "player" )
        {
            self._ID377 = level._ID794;
            level._ID794._ID1193 = "player";
        }
    }

    if ( isdefined( self._ID31181 ) )
        self._ID760 = self._ID31181;

    if ( isdefined( self._ID31284 ) )
        self._ID761 = self._ID31284;

    if ( isdefined( self._ID31275 ) )
        self._ID7._ID11035 = 1;

    if ( isdefined( self._ID31136 ) )
        self._ID287 = 1;

    if ( isdefined( self._ID31201 ) )
    {
        self._ID470 = "flash_grenade";
        self._ID464 = self._ID31201;
    }

    if ( isdefined( self._ID31384 ) )
        self._ID744 = 1;

    if ( isdefined( self._ID31454 ) )
        self._ID486 = self._ID31454;

    if ( isdefined( self._ID31360 ) )
        self._ID24898 = self._ID31360;
}

_ID35177( var_0 )
{
    _ID49347::cheat_init();
    _ID45456::ts_init();
    thread _ID2262();
    thread _ID37270();
    thread _ID9790();
    thread death_hero_stats();
    thread _ID35404();

    if ( !isdefined( level._ID2272 ) )
        self thermaldrawenable();

    self._ID35273 = undefined;

    if ( !isdefined( self._ID39468 ) )
        _ID42407::_ID32184();

    if ( !isdefined( self._ID9826 ) )
        self._ID9826 = [];

    thread _ID9828();
    level thread _ID42297::_ID14940( self );
    self._ID1298 = 16;
    _ID19770();
    _ID35178();
    _ID35179();
    [[ level._ID37353[self._ID1194] ]]();
    thread [[ level._ID36742[self._ID36736] ]]();
    thread _ID42279::_ID24130();
    _ID42232::_ID2288();
    _ID32333();

    if ( isdefined( self._ID31400 ) )
    {
        self setgoalentity( level._ID794 );
        return;
    }

    if ( isdefined( self._ID31460 ) )
    {
        if ( isdefined( self._ID31462 ) )
        {
            var_1 = level._ID36281[self._ID31462];
            self thread [[ var_1 ]]();
        }
        else
            self thread [[ level._ID16935["_spawner_stealth_default"] ]]();
    }

    if ( isdefined( self._ID31252 ) )
    {
        self thread [[ level._ID16935["_idle_call_idle_func"] ]]();
        return;
    }

    if ( isdefined( self._ID31253 ) && !isdefined( self._ID31299 ) )
        self thread [[ level._ID16935["_idle_call_idle_func"] ]]();

    if ( isdefined( self._ID31391 ) && !isdefined( self._ID31299 ) )
    {
        thread _ID42338::_ID26367();
        return;
    }

    if ( isdefined( self._ID31416 ) && self._ID31416 == 1 )
        _ID42407::_ID12526();

    if ( isdefined( self._ID31124 ) )
    {
        if ( !isdefined( self._ID31413 ) )
            self._ID452 = 800;

        self setgoalentity( level._ID794 );
        level thread _ID10207( self );
        return;
    }

    if ( isdefined( self._ID39928 ) )
        return;

    if ( isdefined( self._ID31299 ) && self._ID31299 == 1 )
    {
        _ID32332();
        self setgoalpos( self._ID740 );
        return;
    }

    if ( !isdefined( self._ID31460 ) )
    {

    }

    _ID32332();

    if ( isdefined( self._ID1191 ) )
        thread _ID16964();
}

_ID19770()
{
    _ID42407::_ID32270();

    if ( isdefined( self._ID31242 ) )
        self._ID464 = self._ID31242;
    else
        self._ID464 = 3;

    if ( isdefined( self._ID834 ) )
        self._ID698 = animscripts\combat_utility::_ID20910();

    if ( !_ID42407::_ID20614() )
        self._ID24730 = 1;
}

_ID31563()
{
    if ( self._ID1194 == "neutral" )
        self setthreatbiasgroup( "civilian" );
    else
        self setthreatbiasgroup( self._ID1194 );

    _ID19770();
    self._ID4867 = 1;
    _ID42298::_ID465();
    _ID42407::_ID7867();
    self._ID525 = 96;
    self._ID10998 = undefined;
    self._ID511 = 0;
    self._ID1204 = 0;
    self._ID744 = 0;
    self._ID745 = 20;
    self._ID512 = 0;
    self._ID846 = 1;
    self._ID926 = 1;
    self._ID49 = 0;
    self._ID64 = 540;
    self._ID107 = 0.75;
    self._ID304 = 0;
    self._ID308 = 1;
    self._ID309 = 1;
    self._ID452 = level._ID10115;
    self._ID450 = level._ID10114;
    self._ID513 = 0;
    self pushplayer( 0 );

    if ( isdefined( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();

    _ID42407::_ID10959();
    self._ID628 = 67108864;
    self._ID31213 = 0;
    self._ID1298 = 16;
    _ID42407::_ID39502();
    self._ID846 = 1;
    self._ID926 = 1;
    animscripts\init::_ID32193();
    self._ID381 = self._ID1194 == "allies";
}

_ID10207( var_0 )
{
    var_0 endon( "death" );

    while ( isalive( var_0 ) )
    {
        if ( var_0._ID452 > 200 )
            var_0._ID452 = var_0._ID452 - 200;

        wait 6;
    }
}

_ID14412( var_0 )
{
    self endon( "death" );

    if ( !self._ID14439 )
    {
        var_0._ID39928 = 1;
        self._ID14439 = 1;
        var_0 waittill( "death" );
        self._ID14439 = 0;
        self notify( "get new user" );
    }
}

_ID32338()
{
    self endon( "death" );
    waitframe;

    if ( isdefined( self._ID1194 ) && self._ID1194 == "allies" )
        self._ID381 = 0;

    var_0 = level._ID16984[self._ID31238];

    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( var_0._ID1191 ) )
    {
        var_1 = getnode( var_0._ID1191, "targetname" );
        var_2 = getent( var_0._ID1191, "targetname" );
        var_3 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
        var_4 = undefined;

        if ( isdefined( var_1 ) )
        {
            var_4 = var_1;
            self setgoalnode( var_4 );
        }
        else if ( isdefined( var_2 ) )
        {
            var_4 = var_2;
            self setgoalpos( var_4._ID740 );
        }
        else if ( isdefined( var_3 ) )
        {
            var_4 = var_3;
            self setgoalpos( var_4._ID740 );
        }

        if ( isdefined( var_4._ID851 ) && var_4._ID851 != 0 )
            self._ID452 = var_4._ID851;

        if ( isdefined( var_4._ID450 ) && var_4._ID450 != 0 )
            self._ID450 = var_4._ID450;
    }

    if ( isdefined( self._ID1191 ) )
        self setgoalvolume( var_0 );
    else
        self setgoalvolumeauto( var_0 );
}

_ID16013( var_0 )
{
    return getentarray( var_0, "targetname" );
}

_ID16015( var_0 )
{
    return getnodearray( var_0, "targetname" );
}

_ID53485( var_0 )
{
    return getvehiclenodearray( var_0, "targetname" );
}

_ID16017( var_0 )
{
    return _ID42237::_ID16640( var_0, "targetname" );
}

_ID24870( var_0 )
{
    return isdefined( var_0._ID851 ) && var_0._ID851 != 0;
}

_ID16971( var_0, var_1 )
{
    _ID16964( var_0, "origin", var_1 );
}

_ID16972( var_0, var_1 )
{
    _ID16964( var_0, "struct", var_1 );
}

_ID16964( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( self._ID39928 ) )
        return;

    var_5 = _ID15858( var_0, var_1 );

    if ( !isdefined( var_5 ) )
    {
        self notify( "reached_path_end" );
        return;
    }

    _ID16969( var_5["destination"], var_5["get_target_func"], var_5["set_goal_func_quits"], var_2, var_3, var_4 );
}

_ID15800( var_0 )
{
    if ( var_0.size == 1 )
        return var_0[0];

    var_1 = var_0[0]._ID1193;

    if ( !isdefined( level._ID16965[var_1] ) )
        level._ID16965[var_1] = var_0;

    var_0 = level._ID16965[var_1];
    var_2 = var_0[0];
    var_3 = [];

    for ( var_4 = 0; var_4 < var_0.size - 1; var_4++ )
        var_3[var_4] = var_0[var_4 + 1];

    var_3[var_0.size - 1] = var_0[0];
    level._ID16965[var_1] = var_3;
    return var_2;
}

_ID16969( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self notify( "stop_going_to_node" );
    self endon( "stop_going_to_node" );
    self endon( "death" );

    for (;;)
    {
        var_0 = _ID15800( var_0 );
        var_6 = var_4;

        if ( isdefined( var_0._ID31418 ) )
        {
            if ( var_0._ID31418 > 1 )
                var_6 = var_0._ID31418;

            var_0._ID31418 = 0;
        }

        if ( _ID24870( var_0 ) )
            self._ID452 = var_0._ID851;
        else
            self._ID452 = level._ID10115;

        if ( isdefined( var_0._ID488 ) )
            self._ID450 = var_0._ID488;
        else
            self._ID450 = level._ID10114;

        [[ var_2 ]]( var_0 );

        if ( _ID42407::_ID13023( "_stealth_override_goalpos" ) )
        {
            for (;;)
            {
                self waittill( "goal" );

                if ( !_ID42407::_ID13019( "_stealth_override_goalpos" ) )
                    break;

                _ID42407::_ID13031( "_stealth_override_goalpos" );
            }
        }
        else
            self waittill( "goal" );

        var_0 notify( "trigger",  self  );

        if ( isdefined( var_3 ) )
            [[ var_3 ]]( var_0 );

        if ( isdefined( var_0._ID31195 ) )
            _ID42237::_ID14402( var_0._ID31195 );

        if ( isdefined( var_0._ID31167 ) )
            _ID42407::_ID13025( var_0._ID31167 );

        if ( isdefined( var_0._ID31191 ) )
            _ID42237::_ID14388( var_0._ID31191 );

        if ( isdefined( var_0._ID922 ) )
            self notify( var_0._ID922 );

        if ( _ID37341( var_0 ) )
            return 1;

        var_0 _ID42407::_ID916();

        if ( isdefined( var_0._ID31197 ) )
            _ID42237::_ID14413( var_0._ID31197 );

        var_0 _ID42407::_ID31523();

        if ( isdefined( var_0._ID31122 ) )
            wait(var_0._ID31122);

        while ( isdefined( var_0._ID31418 ) )
        {
            var_0._ID31418 = 0;

            if ( _ID16970( var_0, var_1, var_6 ) )
            {
                var_0._ID31418 = 1;
                var_0 notify( "script_requires_player" );
                break;
            }

            wait 0.1;
        }

        if ( isdefined( var_5 ) )
            [[ var_5 ]]( var_0 );

        if ( !isdefined( var_0._ID1191 ) )
            break;

        var_7 = [[ var_1 ]]( var_0._ID1191 );

        if ( !var_7.size )
            break;

        var_0 = var_7;
    }

    self notify( "reached_path_end" );

    if ( isdefined( self._ID31212 ) )
        return;

    if ( isdefined( self getgoalvolume() ) )
        self setgoalvolumeauto( self getgoalvolume() );
    else
        self._ID452 = level._ID10115;
}

_ID16970( var_0, var_1, var_2 )
{
    foreach ( var_4 in level._ID805 )
    {
        if ( distancesquared( var_4._ID740, var_0._ID740 ) < distancesquared( self._ID740, var_0._ID740 ) )
            return 1;
    }

    var_6 = anglestoforward( self._ID65 );

    if ( isdefined( var_0._ID1191 ) )
    {
        var_7 = [[ var_1 ]]( var_0._ID1191 );

        if ( var_7.size == 1 )
            var_6 = vectornormalize( var_7[0]._ID740 - var_0._ID740 );
        else if ( isdefined( var_0._ID65 ) )
            var_6 = anglestoforward( var_0._ID65 );
    }
    else if ( isdefined( var_0._ID65 ) )
        var_6 = anglestoforward( var_0._ID65 );

    var_8 = [];

    foreach ( var_4 in level._ID805 )
        var_8[var_8.size] = vectornormalize( var_4._ID740 - self._ID740 );

    foreach ( var_12 in var_8 )
    {
        if ( vectordot( var_6, var_12 ) > 0 )
            return 1;
    }

    var_14 = var_2 * var_2;

    foreach ( var_4 in level._ID805 )
    {
        if ( distancesquared( var_4._ID740, self._ID740 ) < var_14 )
            return 1;
    }

    return 0;
}

_ID16966( var_0 )
{
    if ( var_0._ID170 == "info_volume" )
    {
        self setgoalvolumeauto( var_0 );
        self notify( "go_to_node_new_goal" );
        return;
    }

    _ID16968( var_0 );
}

_ID16968( var_0 )
{
    _ID42407::_ID32330( var_0 );
    self notify( "go_to_node_new_goal" );
}

_ID16967( var_0 )
{
    _ID42407::_ID32334( var_0 );
    self notify( "go_to_node_new_goal" );
}

_ID37341( var_0 )
{
    if ( !isdefined( var_0._ID1191 ) )
        return 0;

    var_1 = getentarray( var_0._ID1191, "targetname" );

    if ( !var_1.size )
        return 0;

    var_2 = var_1[0];

    if ( var_2._ID170 != "misc_turret" )
        return 0;

    thread _ID39891( var_2 );
    return 1;
}

_ID29502( var_0 )
{
    waitframe;

    if ( isdefined( var_0 ) )
        var_0._ID9104 = undefined;
}

_ID9102( var_0, var_1 )
{
    var_2 = 0;
    var_3 = [];
    var_4 = 0;

    for (;;)
    {
        if ( !isdefined( var_0._ID9104 ) )
        {
            var_0._ID9104 = 1;
            level thread _ID29502( var_0 );

            if ( isdefined( var_0._ID31195 ) )
            {
                if ( !isdefined( level._ID14385[var_0._ID31195] ) )
                    _ID42237::_ID14400( var_0._ID31195 );
            }

            if ( isdefined( var_0._ID31197 ) )
            {
                if ( !isdefined( level._ID14385[var_0._ID31197] ) )
                    _ID42237::_ID14400( var_0._ID31197 );
            }

            if ( isdefined( var_0._ID31191 ) )
            {
                if ( !isdefined( level._ID14385[var_0._ID31191] ) )
                    _ID42237::_ID14400( var_0._ID31191 );
            }

            if ( isdefined( var_0._ID1191 ) )
            {
                var_5 = [[ var_1 ]]( var_0._ID1191 );
                var_3 = _ID42237::_ID1960( var_3, var_5 );
            }
        }

        var_4++;

        if ( var_4 >= var_3.size )
            break;

        var_0 = var_3[var_4];
    }
}

_ID15858( var_0, var_1 )
{
    var_2["entity"] = ::_ID16013;
    var_2["origin"] = ::_ID16013;
    var_2["node"] = ::_ID16015;
    var_2["struct"] = ::_ID16017;
    var_3["entity"] = ::_ID16966;
    var_3["origin"] = ::_ID16966;
    var_3["struct"] = ::_ID16968;
    var_3["node"] = ::_ID16967;

    if ( !isdefined( var_1 ) )
        var_1 = "node";

    var_4 = [];

    if ( isdefined( var_0 ) )
        var_4["destination"][0] = var_0;
    else
    {
        var_0 = getentarray( self._ID1191, "targetname" );

        if ( var_0.size > 0 )
            var_1 = "entity";

        if ( var_1 == "node" )
        {
            var_0 = getnodearray( self._ID1191, "targetname" );

            if ( !var_0.size )
            {
                var_0 = _ID42237::_ID16640( self._ID1191, "targetname" );

                if ( !var_0.size )
                    return;

                var_1 = "struct";
            }
        }

        var_4["destination"] = var_0;
    }

    var_4["get_target_func"] = var_2[var_1];
    var_4["set_goal_func_quits"] = var_3[var_1];
    return var_4;
}

_ID32333()
{
    if ( isdefined( self._ID31236 ) )
        self._ID450 = self._ID31236;
    else
        self._ID450 = level._ID10114;
}

_ID32332( var_0 )
{
    if ( isdefined( self._ID31413 ) )
    {
        self._ID452 = self._ID31413;
        return;
    }

    if ( isdefined( self._ID31212 ) )
    {
        if ( isdefined( var_0 ) && isdefined( var_0._ID851 ) )
        {
            self._ID452 = var_0._ID851;
            return;
        }
    }

    if ( !isdefined( self getgoalvolume() ) )
    {
        if ( self._ID1244 == "civilian" )
            self._ID452 = 128;
        else
            self._ID452 = level._ID10115;
    }
}

_ID4467( var_0 )
{
    for (;;)
    {
        var_1 = self getturretowner();

        if ( !isalive( var_1 ) )
        {
            wait 1.5;
            continue;
        }

        if ( !isdefined( var_1._ID322 ) )
        {
            self settargetentity( _ID42237::_ID28945( var_0 ) );
            self notify( "startfiring" );
            self startfiring();
        }

        wait(2 + randomfloat( 1 ));
    }
}

_ID22912( var_0 )
{
    for (;;)
    {
        self settargetentity( _ID42237::_ID28945( var_0 ) );
        self notify( "startfiring" );
        self startfiring();
        wait(2 + randomfloat( 1 ));
    }
}

_ID39891( var_0 )
{
    if ( self isbadguy() && self._ID486 == 150 )
    {
        self._ID486 = 100;
        self._ID7._ID11035 = 1;
    }

    self useturret( var_0 );

    if ( isdefined( var_0._ID1191 ) && var_0._ID1191 != var_0._ID1193 )
    {
        var_1 = getentarray( var_0._ID1191, "targetname" );
        var_2 = [];

        for ( var_3 = 0; var_3 < var_1.size; var_3++ )
        {
            if ( var_1[var_3]._ID170 == "script_origin" )
                var_2[var_2.size] = var_1[var_3];
        }

        if ( isdefined( var_0._ID31062 ) )
            var_0 thread _ID4467( var_2 );
        else if ( isdefined( var_0._ID31277 ) )
        {
            var_0 setmode( "manual_ai" );
            var_0 thread _ID22912( var_2 );
        }
        else if ( var_2.size > 0 )
        {
            if ( var_2.size == 1 )
            {
                var_0._ID22903 = var_2[0];
                var_0 settargetentity( var_2[0] );
                thread _ID42331::_ID22904( var_0 );
            }
            else
                var_0 thread _ID42331::_ID23500( var_2 );
        }
    }

    thread _ID42331::_ID23495( var_0 );
    var_0 notify( "startfiring" );
}

_ID13924( var_0, var_1 )
{
    self endon( "death" );
    level._ID9446[var_0] = level._ID9446[var_0] + self._ID216;
    var_2 = 1;

    while ( self._ID216 > 0 )
    {
        self waittill( "spawned",  var_3  );

        if ( var_2 )
        {
            if ( getdvar( "fallback", "0" ) == "1" )
            {

            }

            level notify( "fallback_firstspawn" + var_0 );
            var_2 = 0;
        }

        wait 0.05;

        if ( _ID42407::_ID35060( var_3 ) )
        {
            level notify( "fallbacker_died" + var_0 );
            level._ID9446[var_0]--;
            continue;
        }

        var_3 thread _ID13917( var_0, var_1, "is spawner" );
    }
}

_ID13918( var_0, var_1 )
{
    var_0 waittill( "death" );
    level._ID9446[var_1]--;
    level notify( "fallbacker_died" + var_1 );
}

_ID13917( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID13915 ) || !isdefined( self._ID13915[var_0] ) )
        self._ID13915[var_0] = 1;
    else
        return;

    self._ID31177 = var_0;

    if ( !isdefined( var_2 ) )
        level._ID9446[var_0]++;

    if ( isdefined( var_1 ) && level._ID13922[var_0] )
        thread _ID13916( var_0, var_1 );

    level thread _ID13918( self, var_0 );
}

_ID13920( var_0, var_1 )
{
    var_0 waittill( "death" );
    level notify( "fallback_reached_goal" + var_1 );
}

_ID13921()
{
    self waittill( "goal" );
    self._ID513 = 0;
    self notify( "fallback_notify" );
    self notify( "stop_coverprint" );
}

_ID13916( var_0, var_1 )
{
    self notify( "stop_going_to_node" );
    self stopuseturret();
    self._ID513 = 1;
    self setgoalnode( var_1 );

    if ( _ID24870( var_1 ) )
        self._ID452 = var_1._ID851;

    self endon( "death" );
    level thread _ID13920( self, var_0 );
    thread _ID13921();

    if ( getdvar( "fallback", "0" ) == "1" )
        thread _ID8896( var_1._ID740 );

    self waittill( "fallback_notify" );
    level notify( "fallback_reached_goal" + var_0 );
}

_ID8896( var_0 )
{
    self endon( "fallback_notify" );
    self endon( "stop_coverprint" );

    for (;;)
        wait 0.05;
}

_ID24752( var_0, var_1 )
{
    var_2 = undefined;

    foreach ( var_4 in getallnodes() )
    {
        if ( isdefined( var_4._ID31177 ) && var_4._ID31177 == var_0 )
            var_2 = _ID42237::_ID1960( var_2, var_4 );
    }

    if ( !isdefined( var_2 ) )
        return;

    level._ID9446[var_0] = 0;
    level._ID35269[var_0] = 0;
    level._ID13922[var_0] = 0;
    var_6 = getspawnerarray();

    for ( var_7 = 0; var_7 < var_6.size; var_7++ )
    {
        if ( isdefined( var_6[var_7]._ID31177 ) && var_6[var_7]._ID31177 == var_0 )
        {
            if ( var_6[var_7]._ID216 > 0 )
            {
                var_6[var_7] thread _ID13924( var_0, var_2[randomint( var_2.size )] );
                level._ID35269[var_0]++;
            }
        }
    }

    var_8 = getaiarray();

    for ( var_7 = 0; var_7 < var_8.size; var_7++ )
    {
        if ( isdefined( var_8[var_7]._ID31177 ) && var_8[var_7]._ID31177 == var_0 )
            var_8[var_7] thread _ID13917( var_0 );
    }

    if ( !level._ID9446[var_0] && !level._ID35269[var_0] )
        return;

    var_6 = undefined;
    var_8 = undefined;
    thread _ID13926( var_0, var_1 );
    level waittill( "fallbacker_trigger" + var_0 );

    if ( getdvar( "fallback", "0" ) == "1" )
    {

    }

    level._ID13922[var_0] = 1;
    var_9 = undefined;
    var_8 = getaiarray();

    for ( var_7 = 0; var_7 < var_8.size; var_7++ )
    {
        if ( isdefined( var_8[var_7]._ID31177 ) && var_8[var_7]._ID31177 == var_0 || isdefined( var_8[var_7]._ID31178 ) && isdefined( var_1 ) && var_8[var_7]._ID31178 == var_1 )
            var_9 = _ID42237::_ID1960( var_9, var_8[var_7] );
    }

    var_8 = undefined;

    if ( !isdefined( var_9 ) )
        return;

    var_10 = var_9.size * 0.4;
    var_10 = int( var_10 );
    level notify( "fallback initiated " + var_0 );

    for ( var_7 = 0; var_7 < var_10; var_7++ )
        var_9[var_7] thread _ID13916( var_0, var_2[randomint( var_2.size )] );

    for ( var_7 = 0; var_7 < var_10; var_7++ )
        level waittill( "fallback_reached_goal" + var_0 );

    for ( var_7 = var_10; var_7 < var_9.size; var_7++ )
    {
        if ( isalive( var_9[var_7] ) )
            var_9[var_7] thread _ID13916( var_0, var_2[randomint( var_2.size )] );
    }
}

_ID13926( var_0, var_1 )
{
    level endon( "fallbacker_trigger" + var_0 );

    if ( getdvar( "fallback", "0" ) == "1" )
    {

    }

    for ( var_2 = 0; var_2 < level._ID35269[var_0]; var_2++ )
    {
        if ( getdvar( "fallback", "0" ) == "1" )
        {

        }

        level waittill( "fallback_firstspawn" + var_0 );
    }

    if ( getdvar( "fallback", "0" ) == "1" )
    {

    }

    var_3 = getaiarray();

    for ( var_2 = 0; var_2 < var_3.size; var_2++ )
    {
        if ( isdefined( var_3[var_2]._ID31177 ) && var_3[var_2]._ID31177 == var_0 || isdefined( var_3[var_2]._ID31178 ) && isdefined( var_1 ) && var_3[var_2]._ID31178 == var_1 )
            var_3[var_2] thread _ID13917( var_0 );
    }

    var_3 = undefined;
    var_4 = level._ID9446[var_0];

    for ( var_5 = 0; level._ID9446[var_0] > var_4 * 0.5; var_5++ )
    {
        if ( getdvar( "fallback", "0" ) == "1" )
        {

        }

        level waittill( "fallbacker_died" + var_0 );
    }

    level notify( "fallbacker_trigger" + var_0 );
}

_ID13925( var_0 )
{
    if ( !isdefined( level._ID13915 ) || !isdefined( level._ID13915[var_0._ID31177] ) )
        level thread _ID24752( var_0._ID31177, var_0._ID31178 );

    var_0 waittill( "trigger" );
    level notify( "fallbacker_trigger" + var_0._ID31177 );
    _ID21313( var_0 );
}

_ID3373( var_0 )
{
    self waittill( "goal" );

    if ( _ID24870( var_0 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = level._ID10115;
}

_ID13919()
{
    self endon( "fallback" );
    self endon( "fallback_clear_goal" );
    self endon( "fallback_clear_death" );

    for (;;)
    {
        if ( isdefined( self._ID8894 ) )
        {

        }

        wait 0.05;
    }
}

_ID13923()
{
    self endon( "fallback_clear_goal" );
    self endon( "fallback_clear_death" );

    for (;;)
    {
        if ( isdefined( self._ID8894 ) )
        {

        }

        wait 0.05;
    }
}

_ID13915()
{
    var_0 = getnode( self._ID1191, "targetname" );
    self._ID8894 = var_0;
    self setgoalnode( var_0 );

    if ( isdefined( self._ID31426 ) )
        thread _ID3373( var_0 );
    else if ( _ID24870( var_0 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = level._ID10115;

    for (;;)
    {
        self waittill( "fallback" );
        self._ID525 = 20;
        level thread _ID13920( self );

        if ( getdvar( "fallback", "0" ) == "1" )
            thread _ID13923();

        if ( isdefined( var_0._ID1191 ) )
        {
            var_0 = getnode( var_0._ID1191, "targetname" );
            self._ID8894 = var_0;
            self setgoalnode( var_0 );
            thread _ID13921();

            if ( _ID24870( var_0 ) )
                self._ID452 = var_0._ID851;

            continue;
        }

        level notify( "fallback_arrived" + self._ID31177 );
        return;
    }
}

_ID10268()
{
    wait 0.05;
    self delete();
}

_ID40624( var_0, var_1 )
{
    var_2 = var_0[0] - var_1[0];
    var_3 = var_0[1] - var_1[1];
    var_4 = var_0[2] - var_1[2];
    var_2 *= var_2;
    var_3 *= var_3;
    var_4 *= var_4;
    var_5 = var_2 + var_3 + var_4;
    return var_5;
}

_ID35371( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID14993( var_0 )
{
    if ( !isdefined( level._ID14994 ) )
        thread _ID14995();

    for (;;)
    {
        var_0 waittill( "trigger" );
        level notify( "friendly_died" );

        if ( var_0._ID1193 == "friendly_wave" )
            level._ID14996 = var_0;
        else
            level._ID14996 = undefined;

        wait 1;
    }
}

_ID32447( var_0 )
{
    if ( !isdefined( self._ID1191 ) )
        return;

    var_1 = getentarray( self._ID1191, "targetname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        var_1[var_2] _ID42407::_ID32251( var_0 );
}

_ID15003()
{
    if ( !isdefined( level._ID37884 ) )
        level._ID37884 = 0;

    level._ID37884++;
    self waittill( "death" );
    level notify( "friendly_died" );
    level._ID37884--;
}

_ID14995()
{
    level._ID14994 = 1;
    var_0 = getentarray( "friendly_wave", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID32447, 0 );

    if ( !isdefined( level._ID23101 ) )
        level._ID23101 = 7;

    var_1 = 1;

    for (;;)
    {
        if ( isdefined( level._ID14996 ) && isdefined( level._ID14996._ID1191 ) )
        {
            var_2 = level._ID14996;
            var_3 = getentarray( level._ID14996._ID1191, "targetname" );

            if ( !var_3.size )
            {
                level waittill( "friendly_died" );
                continue;
            }

            var_4 = 0;
            var_5 = isdefined( level._ID14996._ID916 );

            while ( isdefined( level._ID14996 ) && level._ID37884 < level._ID23101 )
            {
                if ( var_2 != level._ID14996 )
                {
                    var_5 = isdefined( level._ID14996._ID916 );
                    var_2 = level._ID14996;
                    var_3 = getentarray( level._ID14996._ID1191, "targetname" );
                }
                else if ( !var_5 )
                    var_4 = randomint( var_3.size );
                else if ( var_4 == var_3.size )
                    var_4 = 0;

                var_3[var_4] _ID42407::_ID32251( 1 );
                var_6 = isdefined( var_3[var_4]._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );

                if ( isdefined( var_3[var_4]._ID31214 ) )
                    var_7 = var_3[var_4] stalingradspawn( var_6 );
                else
                    var_7 = var_3[var_4] dospawn( var_6 );

                var_3[var_4] _ID42407::_ID32251( 0 );

                if ( _ID42407::_ID35060( var_7 ) )
                {
                    wait 0.2;
                    continue;
                }

                if ( isdefined( var_3[var_4]._ID31101 ) )
                {
                    if ( var_3[var_4]._ID8362 == "heat" )
                        var_7 _ID42407::_ID12492();

                    if ( var_3[var_4]._ID8362 == "cqb" )
                        var_7 _ID42407::_ID12467();
                }

                if ( isdefined( level._ID15042 ) )
                    level thread [[ level._ID15042 ]]( var_7 );
                else
                    var_7 setgoalentity( level._ID794 );

                if ( var_5 )
                {
                    if ( level._ID14996._ID916 == 0 )
                        waitframe;
                    else
                        wait(level._ID14996._ID916);

                    var_4++;
                    continue;
                }

                wait(randomfloat( 5 ));
            }
        }

        level waittill( "friendly_died" );
    }
}

_ID14963( var_0 )
{
    var_1 = getnode( var_0._ID1191, "targetname" );
    var_2 = getent( var_1._ID1191, "targetname" );
    var_2 setmode( "auto_ai" );
    var_2 cleartargetentity();
    var_3 = 0;

    for (;;)
    {
        var_0 waittill( "trigger",  var_4  );

        if ( !isai( var_4 ) )
            continue;

        if ( !isdefined( var_4._ID1194 ) )
            continue;

        if ( var_4._ID1194 != "allies" )
            continue;

        if ( isdefined( var_4._ID31501 ) && var_4._ID31501 == 0 )
            continue;

        if ( var_4 thread _ID14961( var_2, var_1 ) )
        {
            var_4 thread _ID14960( var_2, var_1 );
            var_2 waittill( "friendly_finished_using_mg42" );

            if ( isalive( var_4 ) )
                var_4._ID39330 = gettime() + 10000;
        }

        wait 1;
    }
}

_ID14956( var_0, var_1 )
{
    var_1 endon( "friendly_finished_using_mg42" );
    var_0 waittill( "death" );
    var_1 notify( "friendly_finished_using_mg42" );
}

_ID14962( var_0 )
{
    var_0 endon( "friendly_finished_using_mg42" );
    self._ID1257 = 1;
    self setcursorhint( "HINT_NOICON" );
    self sethintstring( &"PLATFORM_USEAIONMG42" );
    self waittill( "trigger" );
    self._ID1257 = 0;
    self sethintstring( "" );
    self stopuseturret();
    self notify( "stopped_use_turret" );
    var_0 notify( "friendly_finished_using_mg42" );
}

_ID14961( var_0, var_1 )
{
    if ( self._ID1257 )
        return 0;

    if ( isdefined( self._ID39330 ) && gettime() < self._ID39330 )
        return 0;

    if ( distance( level._ID794._ID740, var_1._ID740 ) < 100 )
        return 0;

    return 1;
}

_ID14958( var_0, var_1 )
{
    var_0 endon( "friendly_finished_using_mg42" );
    self waittill( "trigger" );
    var_0 notify( "friendly_finished_using_mg42" );
}

_ID14959()
{
    if ( !isdefined( self._ID14954 ) )
        return;

    self._ID14954 notify( "friendly_finished_using_mg42" );
}

_ID24903()
{
    self endon( "death" );
    self waittill( "goal" );
    self._ID452 = self._ID25570;

    if ( self._ID452 < 32 )
        self._ID452 = 400;
}

_ID14960( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "friendly_finished_using_mg42" );
    level thread _ID14956( self, var_0 );
    self._ID25570 = self._ID452;
    self._ID452 = 28;
    thread _ID24903();
    self setgoalnode( var_1 );
    self._ID513 = 1;
    self waittill( "goal" );
    self._ID452 = self._ID25570;

    if ( self._ID452 < 32 )
        self._ID452 = 400;

    self._ID513 = 0;
    self._ID452 = self._ID25570;

    if ( distance( level._ID794._ID740, var_1._ID740 ) < 32 )
    {
        var_0 notify( "friendly_finished_using_mg42" );
        return;
    }

    self._ID14954 = var_0;
    thread _ID14962( var_0 );
    thread _ID14955( var_0 );
    self useturret( var_0 );

    if ( isdefined( var_0._ID1191 ) )
    {
        var_2 = getent( var_0._ID1191, "targetname" );

        if ( isdefined( var_2 ) )
            var_2 thread _ID14958( var_0, self );
    }

    for (;;)
    {
        if ( distance( self._ID740, var_1._ID740 ) < 32 )
            self useturret( var_0 );
        else
            break;

        wait 1;
    }

    var_0 notify( "friendly_finished_using_mg42" );
}

_ID14955( var_0 )
{
    self endon( "death" );
    var_0 waittill( "friendly_finished_using_mg42" );
    _ID14957();
}

_ID14957()
{
    self endon( "death" );
    var_0 = self._ID14954;
    self._ID14954 = undefined;
    self stopuseturret();
    self notify( "stopped_use_turret" );
    self._ID1257 = 0;
    self._ID452 = self._ID25570;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0._ID1191 ) )
        return;

    var_1 = getnode( var_0._ID1191, "targetname" );
    var_2 = self._ID452;
    self._ID452 = 8;
    self setgoalnode( var_1 );
    wait 2;
    self._ID452 = 384;
    return;
    self waittill( "goal" );

    if ( isdefined( self._ID1191 ) )
    {
        var_1 = getnode( self._ID1191, "targetname" );

        if ( isdefined( var_1._ID1191 ) )
            var_1 = getnode( var_1._ID1191, "targetname" );

        if ( isdefined( var_1 ) )
            self setgoalnode( var_1 );
    }

    self._ID452 = var_2;
}

_ID37270()
{
    if ( isdefined( level._ID24942 ) )
        return;

    if ( isdefined( level._ID22245 ) && !level._ID22245 )
        return;

    _ID42407::_ID1868( ::_ID37271 );
}

_ID37271( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( self ) )
        return;

    if ( isalive( self ) )
        return;

    if ( !isalive( var_1 ) )
        return;

    if ( !isdefined( var_1._ID1282 ) )
        return;

    if ( var_1 _ID42411::_ID20763() )
        return;

    if ( isdefined( level.tanksquishdamageimmunity ) && level.tanksquishdamageimmunity == var_4 )
        return;

    if ( !isdefined( self._ID24924 ) )
        self startragdoll();

    if ( !isdefined( self ) )
        return;

    _ID42407::_ID29503( ::_ID37271 );
}

_ID26237( var_0, var_1, var_2, var_3, var_4 )
{
    var_0 endon( "death" );
    var_0._ID26235 = var_1;

    if ( isdefined( var_1._ID916 ) )
        var_0._ID26232 = var_1._ID916;

    if ( isdefined( var_3 ) && isdefined( var_4 ) )
    {
        var_0._ID26233 = var_3;
        var_0._ID26234 = var_4;
    }
    else
        var_0._ID26236 = var_2;

    var_0 setgoalpos( var_0._ID740 );
    var_0 setgoalnode( var_1 );
    var_0._ID452 = 12;
    var_0 waittill( "goal" );
    var_0._ID452 = 28;
    var_0 waittill( "shot_at_target" );
    var_0._ID26233 = undefined;
    var_0._ID26236 = undefined;
    var_0._ID26232 = undefined;
}

_ID34096( var_0, var_1, var_2 )
{
    var_3 = getstartorigin( var_0, var_1, var_2 );

    for (;;)
        wait 0.05;
}

_ID35354()
{
    _ID42407::_ID32251( 1 );

    if ( isdefined( self._ID31214 ) )
        var_0 = self stalingradspawn();
    else
        var_0 = self dospawn();

    if ( _ID42407::_ID35060( var_0 ) )
        return;

    if ( isdefined( self._ID31101 ) )
    {
        if ( self._ID31101 == "heat" )
            var_0 _ID42407::_ID12492();

        if ( self._ID31101 == "cqb" )
            var_0 _ID42407::_ID12467();
    }

    var_0._ID15043 = 1;
}

_ID41176()
{
    self endon( "death" );
    self waittill( "leaveSquad" );
}

_ID15039()
{
    _ID42237::_ID3350( getentarray( self._ID1191, "targetname" ), ::_ID15040, self );

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( _ID1825() && _ID16297() == self )
            _ID39544();

        self waittill( "friendly_wave_start",  var_3  );
        _ID32636( var_3, self );

        if ( !isdefined( var_3._ID1191 ) )
            continue;

        var_4 = getent( var_3._ID1191, "targetname" );
        var_4 thread _ID35353( self );
    }
}

_ID14573( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( isdefined( self._ID922 ) && self._ID922 == "instant_respawn" )
        var_0 = 1;

    level._ID35281 = [];
    var_1 = getentarray( self._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID14576, var_0 );
    var_2 = 0;
    var_3 = 0;

    for (;;)
    {
        self waittill( "trigger",  var_4  );

        if ( !_ID25346() )
            continue;

        if ( !var_3 )
        {
            var_3 = 1;
            _ID42407::_ID916();
        }

        if ( self istouching( level._ID794 ) )
            var_2 = 1;
        else
        {
            if ( !isalive( var_4 ) )
                continue;

            if ( isplayernumber( var_4 ) )
                var_2 = 1;
            else if ( !isdefined( var_4._ID20921 ) || !var_4._ID20921 )
                continue;
        }

        var_1 = getentarray( self._ID1191, "targetname" );

        if ( isdefined( var_1[0] ) )
        {
            if ( isdefined( var_1[0]._ID31415 ) )
                _ID9401( var_1[0]._ID31415 );
        }

        var_1 = getentarray( self._ID1191, "targetname" );

        for ( var_5 = 0; var_5 < var_1.size; var_5++ )
        {
            var_1[var_5]._ID28022 = var_2;
            var_1[var_5] notify( "flood_begin" );
        }

        if ( var_2 )
        {
            wait 5;
            continue;
        }

        wait 0.1;
    }
}

_ID9402( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1[var_0[var_2]._ID31415] = 1;

    var_3 = getarraykeys( var_1 );
    var_4 = _ID42237::_ID28945( var_3 );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2]._ID31415 != var_4 )
            var_0[var_2] delete();
    }
}

_ID14576( var_0 )
{
    if ( isdefined( self._ID31754 ) )
        return;

    self._ID31754 = 1;
    self._ID38945 = 1;
    var_1 = self._ID1191;
    var_2 = self._ID1193;

    if ( !isdefined( var_1 ) && !isdefined( self._ID31299 ) )
        waitframe;

    var_3 = [];

    if ( isdefined( var_1 ) )
    {
        var_4 = getentarray( var_1, "targetname" );

        for ( var_5 = 0; var_5 < var_4.size; var_5++ )
        {
            if ( !issubstr( var_4[var_5]._ID170, "actor" ) )
                continue;

            var_3[var_3.size] = var_4[var_5];
        }
    }

    var_6 = spawnstruct();
    var_7 = self._ID740;
    _ID14577( var_6, var_3.size > 0, var_0 );

    if ( isalive( var_6._ID2231 ) )
        var_6._ID2231 waittill( "death" );

    if ( !isdefined( var_1 ) )
        return;

    var_4 = getentarray( var_1, "targetname" );

    if ( !var_4.size )
        return;

    for ( var_5 = 0; var_5 < var_4.size; var_5++ )
    {
        if ( !issubstr( var_4[var_5]._ID170, "actor" ) )
            continue;

        var_4[var_5]._ID1193 = var_2;
        var_8 = var_1;

        if ( isdefined( var_4[var_5]._ID1191 ) )
        {
            var_9 = getent( var_4[var_5]._ID1191, "targetname" );

            if ( !isdefined( var_9 ) || !issubstr( var_9._ID170, "actor" ) )
                var_8 = var_4[var_5]._ID1191;
        }

        var_4[var_5]._ID1191 = var_8;
        var_4[var_5] thread _ID14576( var_0 );
        var_4[var_5]._ID28022 = 1;
        var_4[var_5] notify( "flood_begin" );
    }
}

_ID14577( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_3 = self._ID216;

    if ( !var_1 )
        var_1 = isdefined( self._ID922 ) && self._ID922 == "delete";

    _ID42407::_ID32251( 2 );

    if ( isdefined( self._ID916 ) )
        var_4 = self._ID916;
    else
        var_4 = 0;

    for (;;)
    {
        self waittill( "flood_begin" );

        if ( self._ID28022 )
            break;

        if ( var_4 )
            continue;

        break;
    }

    var_5 = distance( level._ID794._ID740, self._ID740 );

    while ( var_3 )
    {
        self._ID39050 = var_3;
        _ID42407::_ID32251( 2 );
        wait(var_4);
        var_6 = isdefined( self._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );

        if ( isdefined( self._ID31214 ) )
            var_7 = self stalingradspawn( var_6 );
        else
            var_7 = self dospawn( var_6 );

        if ( _ID42407::_ID35060( var_7 ) )
        {
            var_8 = 0;

            if ( var_4 < 2 )
                wait 2;

            continue;
        }
        else
        {
            if ( isdefined( self._ID31101 ) )
            {
                if ( self._ID31101 == "heat" )
                    var_7 _ID42407::_ID12492();

                if ( self._ID31101 == "cqb" )
                    var_7 _ID42407::_ID12467();
            }

            thread _ID2137( var_7 );
            var_7 thread _ID14574( self );

            if ( isdefined( self._ID31023 ) )
                var_7._ID4867 = self._ID31023;

            var_0._ID2231 = var_7;
            var_0 notify( "got_ai" );
            self waittill( "spawn_died",  var_9, var_8  );

            if ( var_4 > 2 )
                var_4 = randomint( 4 ) + 2;
            else
                var_4 = 0.5 + randomfloat( 0.5 );
        }

        if ( var_9 )
        {
            _ID41204( var_5 );
            continue;
        }

        if ( _ID28045( var_8 || var_1, var_0._ID2231 ) )
            var_3--;

        if ( !var_2 )
            _ID41220();
    }

    self delete();
}

_ID41178( var_0 )
{
    self endon( "death" );
    var_0 waittill( "death" );
}

_ID2137( var_0 )
{
    var_1 = self._ID1193;

    if ( !isdefined( level._ID35281[var_1] ) )
    {
        level._ID35281[var_1] = spawnstruct();
        level._ID35281[var_1] _ID42407::_ID32251( 0 );
        level._ID35281[var_1]._ID37878 = 0;
    }

    if ( !isdefined( self._ID2020 ) )
    {
        self._ID2020 = 1;
        level._ID35281[var_1]._ID37878++;
    }

    level._ID35281[var_1]._ID216++;
    _ID41178( var_0 );
    level._ID35281[var_1]._ID216--;

    if ( !isdefined( self ) )
        level._ID35281[var_1]._ID37878--;

    if ( level._ID35281[var_1]._ID37878 )
    {
        if ( level._ID35281[var_1]._ID216 / level._ID35281[var_1]._ID37878 < 0.32 )
            level._ID35281[var_1] notify( "waveReady" );
    }
}

_ID10047( var_0 )
{
    self endon( "debug_stop" );
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_ID41220()
{
    var_0 = self._ID1193;

    if ( level._ID35281[var_0]._ID216 )
        level._ID35281[var_0] waittill( "waveReady" );
}

_ID28045( var_0, var_1 )
{
    if ( var_0 )
        return 1;

    if ( isdefined( var_1 ) && isdefined( var_1._ID740 ) )
        var_2 = var_1._ID740;
    else
        var_2 = self._ID740;

    if ( distance( level._ID794._ID740, var_2 ) < 700 )
        return 1;

    return bullettracepassed( level._ID794 geteye(), var_1 geteye(), 0, undefined );
}

_ID41204( var_0 )
{
    self endon( "flood_begin" );
    var_0 *= 0.75;

    while ( distance( level._ID794._ID740, self._ID740 ) > var_0 )
        wait 1;
}

_ID14574( var_0 )
{
    thread _ID14575();
    self waittill( "death",  var_1  );
    var_2 = isalive( var_1 ) && isplayernumber( var_1 );

    if ( !var_2 && isdefined( var_1 ) && var_1._ID170 == "worldspawn" )
        var_2 = 1;

    var_3 = !isdefined( self );
    var_0 notify( "spawn_died",  var_3, var_2  );
}

_ID14575()
{
    if ( isdefined( self._ID31299 ) )
        return;

    self endon( "death" );
    var_0 = getnode( self._ID1191, "targetname" );

    if ( isdefined( var_0 ) )
        self setgoalnode( var_0 );
    else
    {
        var_0 = getent( self._ID1191, "targetname" );

        if ( isdefined( var_0 ) )
            self setgoalpos( var_0._ID740 );
    }

    if ( isdefined( level._ID13999 ) )
    {
        self._ID760 = level._ID13999;
        self._ID761 = level._ID23091;
    }

    if ( isdefined( var_0._ID851 ) && var_0._ID851 >= 0 )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = 256;

    self waittill( "goal" );

    while ( isdefined( var_0._ID1191 ) )
    {
        var_1 = getnode( var_0._ID1191, "targetname" );

        if ( isdefined( var_1 ) )
            var_0 = var_1;
        else
            break;

        self setgoalnode( var_0 );

        if ( _ID24870( var_0 ) )
            self._ID452 = var_0._ID851;
        else
            self._ID452 = 256;

        self waittill( "goal" );
    }

    if ( isdefined( self._ID922 ) )
    {
        if ( self._ID922 == "delete" )
        {
            self kill();
            return;
        }
    }

    if ( isdefined( var_0._ID1191 ) )
    {
        var_2 = getent( var_0._ID1191, "targetname" );

        if ( isdefined( var_2 ) && ( var_2._ID172 == "misc_mgturret" || var_2._ID172 == "misc_turret" ) )
        {
            self setgoalnode( var_0 );
            self._ID452 = 4;
            self waittill( "goal" );

            if ( !isdefined( self._ID31212 ) )
                self._ID452 = level._ID10115;

            _ID39891( var_2 );
        }
    }

    if ( isdefined( self._ID922 ) )
    {
        if ( isdefined( self._ID31367 ) )
        {
            if ( self._ID31367 == "furniture_push" )
                thread _ID15122();
        }

        if ( self._ID922 == "hide" )
        {
            thread _ID42407::_ID32226( 0 );
            return;
        }
    }

    if ( !isdefined( self._ID31212 ) && !isdefined( self getgoalvolume() ) )
        self._ID452 = level._ID10115;
}

_ID15122()
{
    var_0 = getent( self._ID1191, "targetname" )._ID740;
    _ID42237::_ID27077( "furniture_slide", var_0 );
    wait 0.9;

    if ( isdefined( level._ID41734 ) )
        _ID42237::_ID27077( _ID42237::_ID28945( level._ID41734 ), var_0 );
}

_ID14998()
{
    waitframe;
    var_0 = getentarray( self._ID1191, "targetname" );

    if ( !var_0.size )
    {
        var_1 = getnode( self._ID1191, "targetname" );

        for (;;)
        {
            self waittill( "trigger" );

            if ( isdefined( level._ID21926 ) && level._ID21926 == self )
            {
                wait 0.5;
                continue;
            }

            if ( !_ID25346() )
            {
                wait 0.5;
                continue;
            }

            level notify( "new_friendly_trigger" );
            level._ID21926 = self;
            var_2 = !isdefined( self._ID31068 ) || self._ID31068 == 0;
            _ID32703( var_1, var_2 );
        }
    }

    for (;;)
    {
        self waittill( "trigger" );

        while ( level._ID794 istouching( self ) )
            wait 0.05;

        if ( !_ID25346() )
        {
            wait 0.05;
            continue;
        }

        if ( isdefined( level._ID21926 ) && level._ID21926 == self )
            continue;

        level notify( "new_friendly_trigger" );
        level._ID21926 = self;
        _ID42237::_ID3350( var_0, ::_ID15041 );
        wait 0.5;
    }
}

_ID25346()
{
    var_0 = 1;

    if ( isdefined( self._ID31373 ) )
    {
        var_0 = 0;

        for ( var_1 = 0; var_1 < level._ID1821.size; var_1++ )
        {
            if ( !issubstr( self._ID31373, level._ID1821[var_1] ) )
                continue;

            var_0 = 1;
            break;
        }

        if ( !var_0 )
            return 0;
    }

    if ( !isdefined( self._ID31374 ) )
        return var_0;

    var_2 = 0;

    for ( var_1 = 0; var_1 < level._ID19477.size; var_1++ )
    {
        if ( !issubstr( self._ID31374, level._ID19477[var_1] ) )
            continue;

        var_2++;
    }

    var_3 = strtok( self._ID31374, " " );
    return var_2 == var_3.size;
}

_ID15041( var_0 )
{
    level endon( "new_friendly_trigger" );
    self waittill( "trigger" );
    var_0 = getnode( self._ID1191, "targetname" );
    var_1 = !isdefined( self._ID31068 ) || self._ID31068 == 0;
    _ID32703( var_0, var_1 );
}

_ID41175()
{
    self endon( "death" );
    var_0 = self._ID31113;

    while ( self._ID216 )
    {
        self waittill( "spawned",  var_1  );
        var_1 thread _ID9816( var_0 );
    }
}

_ID9816( var_0 )
{
    level._ID9838[var_0]++;
    self waittill( "death" );
    level._ID9838[var_0]--;
    level notify( "spawner_expired" + var_0 );
}

_ID9817()
{
    var_0 = self._ID31113;
    level._ID9838[var_0]++;
    var_1 = self._ID740;
    _ID41175();
    level notify( "spawner dot" + var_1 );
    level._ID9838[var_0]--;
    level notify( "spawner_expired" + var_0 );
}

_ID14999()
{
    var_0 = getentarray( "friendly_chain_on_death", "targetname" );
    var_1 = getspawnerarray();
    level._ID9838 = [];

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isdefined( var_1[var_2]._ID31113 ) )
            continue;

        var_3 = var_1[var_2]._ID31113;

        if ( !isdefined( level._ID9838[var_3] ) )
            level._ID9838[var_3] = 0;

        var_1[var_2] thread _ID9817();
    }

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( !isdefined( var_0[var_2]._ID31113 ) )
            return;

        var_0[var_2] thread _ID15000();
    }
}

_ID15000()
{
    while ( level._ID9838[self._ID31113] > 0 )
        level waittill( "spawner_expired" + self._ID31113 );

    level endon( "start_chain" );
    var_0 = getnode( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "trigger" );
        _ID32703( var_0, 1 );
        iprintlnbold( "Area secured, move up!" );
        wait 5;
    }
}

_ID32703( var_0, var_1 )
{
    level notify( "new_escort_trigger" );
    level notify( "new_escort_debug" );
    level notify( "start_chain",  var_1  );
}

_ID15001()
{
    level._ID15037 = [];
    level._ID15038 = [];
    _ID42237::_ID3350( getentarray( "friendlychain", "targetname" ), ::_ID14998 );
}

_ID39544()
{
    var_0 = [];
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID15037.size; var_2++ )
    {
        var_0[var_0.size] = level._ID15037[var_2];
        var_1[var_1.size] = level._ID15038[var_2];
    }

    level._ID15037 = var_0;
    level._ID15038 = var_1;

    if ( _ID1825() )
        return;

    _ID42237::_ID14388( "spawning_friendlies" );
}

_ID16296()
{
    return level._ID15037[level._ID15037.size - 1];
}

_ID1825()
{
    return level._ID15037.size > 0;
}

_ID16297()
{
    return level._ID15038[level._ID15038.size - 1];
}

_ID32636( var_0, var_1 )
{
    level._ID15037[level._ID15037.size] = var_0._ID740;
    level._ID15038[level._ID15038.size] = var_1;
    _ID42237::_ID14402( "spawning_friendlies" );
}

_ID10216()
{
    self endon( "death" );
    self endon( "leaveSquad" );
    wait 0.5;
    self setgoalentity( level._ID794 );
}

_ID35353( var_0 )
{
    self notify( "stopTrigger" );
    self endon( "stopTrigger" );
    self waittill( "trigger" );

    if ( _ID16297() != var_0 )
        return;

    _ID39544();
}

_ID15040( var_0 )
{
    var_1 = getent( self._ID1191, "targetname" );

    for (;;)
    {
        self waittill( "trigger" );
        var_0 notify( "friendly_wave_start",  var_1  );

        if ( !isdefined( var_1._ID1191 ) )
            continue;
    }
}

_ID16984()
{
    var_0 = getentarray( "info_volume", "classname" );
    level._ID9815 = [];
    level._ID16984 = [];

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( isdefined( var_2._ID31113 ) )
            level._ID9815[var_2._ID31113] = var_2;

        if ( isdefined( var_2._ID31238 ) )
            level._ID16984[var_2._ID31238] = var_2;
    }
}

_ID10036( var_0, var_1, var_2 )
{
    if ( 1 )
        return;

    var_3 = self getorigin();
    var_4 = 40 * sin( var_3[0] + var_3[1] ) - 40;
    var_3 = ( var_3[0], var_3[1], var_3[2] + var_4 );
    level endon( var_1 );
    self endon( "new_color" );

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0.8, 0.6 );

    var_5 = 0;

    for (;;)
    {
        var_5 += 12;
        var_6 = sin( var_5 ) * 0.4;

        if ( var_6 < 0 )
            var_6 *= -1;

        var_6 += 1;
        wait 0.05;
    }
}

_ID2393( var_0 )
{
    level._ID1357[var_0] = spawnstruct();
    level._ID1357[var_0]._ID2380 = 0;
    level._ID1357[var_0]._ID35279 = 0;
    level._ID1357[var_0]._ID2231 = [];
    level._ID1357[var_0]._ID35280 = [];
}

_ID2397( var_0 )
{
    self endon( "death" );
    self._ID10083 = 0;
    var_0._ID35279++;
    thread _ID2395( var_0 );
    thread _ID2396( var_0 );

    while ( self._ID216 )
    {
        self waittill( "spawned",  var_1  );

        if ( _ID42407::_ID35060( var_1 ) )
            continue;

        var_1 thread _ID2394( var_0 );
    }

    waitframe;

    if ( self._ID10083 )
        return;

    self._ID10083 = 1;
    var_0._ID35279--;
}

_ID2395( var_0 )
{
    self waittill( "death" );

    if ( self._ID10083 )
        return;

    var_0._ID35279--;
}

_ID2396( var_0 )
{
    self endon( "death" );
    self waittill( "emptied spawner" );
    waitframe;

    if ( self._ID10083 )
        return;

    self._ID10083 = 1;
    var_0._ID35279--;
}

_ID2394( var_0 )
{
    var_0._ID2380++;
    var_0._ID2231[var_0._ID2231.size] = self;

    if ( isdefined( self._ID31115 ) )
        _ID41177();
    else
        self waittill( "death" );

    var_0._ID2380--;
}

_ID6725( var_0 )
{
    var_1 = strtok( var_0._ID31273, " " );
    var_2 = [];
    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = var_1[var_4];
        var_6 = getent( var_5, "script_linkname" );

        if ( isdefined( var_6 ) )
        {
            var_2 = _ID42237::_ID1960( var_2, var_6 );
            continue;
        }

        var_7 = getnode( var_5, "script_linkname" );

        if ( !isdefined( var_7 ) )
            continue;

        var_3 = _ID42237::_ID1960( var_3, var_7 );
    }

    var_0 waittill( "trigger" );
    var_3 = _ID42237::_ID3320( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        var_3[var_4]._ID7712 = 0;

    var_8 = 0;

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        var_9 = var_2[var_4];

        if ( !isdefined( var_9 ) )
            continue;

        if ( isdefined( var_9._ID31439 ) )
            continue;

        while ( isdefined( var_3[var_8]._ID922 ) && var_3[var_8]._ID922 == "dont_spawn" )
            var_8++;

        var_9._ID740 = var_3[var_8]._ID740;
        var_9._ID65 = var_3[var_8]._ID65;
        var_9 _ID42407::_ID1947( ::_ID7711, var_3[var_8] );
        var_8++;
    }

    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_ID6723 );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_ID24388, var_3 );
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID6723()
{
    self._ID452 = 8;
    self._ID381 = 1;
}

_ID24388( var_0 )
{
    self endon( "death" );
    var_1 = 0;

    for (;;)
    {
        if ( !isalive( self._ID322 ) )
        {
            self waittill( "enemy" );
            var_1 = 0;
            continue;
        }

        if ( isplayernumber( self._ID322 ) )
        {
            if ( self._ID322 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) || _ID42237::_ID14385( "player_flashed" ) )
            {
                self._ID381 = 0;

                for (;;)
                {
                    self._ID452 = 180;
                    self setgoalpos( level._ID794._ID740 );
                    wait 1;
                }

                return;
            }
        }

        if ( var_1 )
        {
            if ( self cansee( self._ID322 ) )
            {
                wait 0.05;
                continue;
            }

            var_1 = 0;
        }
        else
        {
            if ( self cansee( self._ID322 ) )
                var_1 = 1;

            wait 0.05;
            continue;
        }

        if ( randomint( 3 ) > 0 )
        {
            var_2 = _ID14195( var_0 );

            if ( isdefined( var_2 ) )
            {
                _ID7711( var_2, self._ID7714 );
                self waittill( "goal" );
            }
        }
    }
}

_ID7711( var_0, var_1 )
{
    self setgoalnode( var_0 );
    self._ID7714 = var_0;
    var_0._ID7712 = 1;

    if ( isdefined( var_1 ) )
        var_1._ID7712 = 0;
}

_ID14195( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        if ( var_0[var_1]._ID7712 )
        {
            continue;
            continue;
        }

        return var_0[var_1];
    }

    return undefined;
}

_ID14583( var_0 )
{
    var_1 = getentarray( var_0._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID14579 );
    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, ::_ID14582, var_0 );
}

_ID14579( var_0 )
{

}

_ID38878( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    return isdefined( var_0._ID31418 );
}

_ID39400( var_0 )
{
    var_1 = getent( var_0._ID1191, "targetname" );
    waitframe;
    var_2 = getentarray( var_1._ID1191, "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_2[var_3]._ID31299 = 1;
        var_2[var_3] _ID42407::_ID1947( ::_ID40949, var_1 );
    }

    var_0 waittill( "trigger" );
    var_2 = getentarray( var_1._ID1191, "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID40949( var_0 )
{
    var_0 endon( "death" );
    self endon( "death" );
    self._ID452 = 8;
    var_0 waittill( "trigger" );
    thread _ID16964();
}

_ID14582( var_0 )
{
    if ( !isdefined( level._ID35137 ) || isspawner( self ) )
        self endon( "death" );

    self notify( "stop current floodspawner" );
    self endon( "stop current floodspawner" );

    if ( _ID20597() )
    {
        _ID28787( var_0 );
        return;
    }

    var_1 = _ID38878( var_0 );
    _ID42407::_ID916();

    if ( isdefined( level._ID35137 ) )
    {
        if ( !isspawner( self ) )
            self._ID216 = 1;
    }

    while ( self._ID216 > 0 )
    {
        while ( var_1 && !level._ID794 istouching( var_0 ) )
            wait 0.5;

        var_2 = isdefined( self._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );
        var_3 = self;

        if ( isdefined( level._ID35137 ) )
        {
            if ( !isspawner( self ) )
                var_3 = _ID15979( self, 1 );
        }

        if ( isdefined( self._ID31214 ) )
            var_4 = var_3 stalingradspawn( var_2 );
        else
            var_4 = var_3 dospawn( var_2 );

        if ( _ID42407::_ID35060( var_4 ) )
        {
            wait 2;
            continue;
        }

        if ( isdefined( self._ID31101 ) )
        {
            if ( self._ID31101 == "heat" )
                var_4 _ID42407::_ID12492();

            if ( self._ID31101 == "cqb" )
                var_4 _ID42407::_ID12467();
        }

        var_4 thread _ID29445( self );
        var_4 thread _ID13594( var_0 );

        if ( isdefined( var_4 ) && !isdefined( var_4._ID1193 ) )
        {
            if ( isdefined( self._ID1193 ) )
                var_4._ID1193 = self._ID1193 + "_AI";
        }

        var_4 waittill( "death",  var_5  );

        if ( !_ID27638( var_4, var_5 ) )
            self._ID216++;
        else if ( isdefined( level._ID1746 ) )
        {
            if ( isdefined( level._ID1747 ) && var_5 == level._ID1747 )
            {
                if ( randomint( 2 ) == 0 )
                    self._ID216++;
            }
        }

        if ( !isdefined( var_4 ) )
            continue;

        if ( !_ID42407::_ID31523() )
            wait(randomfloatrange( 5, 9 ));
    }
}

_ID14581()
{
    self notify( "stop current floodspawner" );
}

_ID27638( var_0, var_1 )
{
    if ( isdefined( self._ID31208 ) )
    {
        if ( self._ID31208 )
            return 1;
    }

    if ( !isdefined( var_0 ) )
        return 0;

    if ( isalive( var_1 ) )
    {
        if ( isplayernumber( var_1 ) )
            return 1;

        if ( distance( var_1._ID740, level._ID794._ID740 ) < 200 )
            return 1;
    }
    else if ( isdefined( var_1 ) )
    {
        if ( var_1._ID170 == "worldspawn" )
            return 0;

        if ( distance( var_1._ID740, level._ID794._ID740 ) < 200 )
            return 1;
    }

    if ( distance( var_0._ID740, level._ID794._ID740 ) < 200 )
        return 1;

    return bullettracepassed( level._ID794 geteye(), var_0 geteye(), 0, undefined );
}

_ID20597()
{
    if ( !isdefined( self._ID1191 ) )
        return 0;

    var_0 = getentarray( self._ID1191, "targetname" );

    if ( !var_0.size )
        return 0;

    return issubstr( var_0[0]._ID170, "actor" );
}

_ID28786( var_0 )
{
    var_0._ID35008 waittill( "death" );
    self notify( "death_report" );
}

_ID28787( var_0 )
{
    self endon( "death" );
    var_1 = _ID38878( var_0 );
    _ID42407::_ID916();

    if ( var_1 )
    {
        while ( !level._ID794 istouching( var_0 ) )
            wait 0.5;
    }

    var_2 = getentarray( self._ID1191, "targetname" );
    self._ID35280 = 0;
    _ID42237::_ID3350( var_2, ::_ID28788, self );
    var_4 = randomint( var_2.size );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( self._ID216 <= 0 )
            return;

        var_4++;

        if ( var_4 >= var_2.size )
            var_4 = 0;

        var_5 = var_2[var_4];
        var_5._ID216 = 1;
        var_6 = var_5 _ID42407::_ID35014();

        if ( _ID42407::_ID35060( var_6 ) )
        {
            wait 2;
            continue;
        }

        self._ID216--;
        var_5._ID35008 = var_6;
        var_6 thread _ID29445( self );
        var_6 thread _ID13594( var_0 );
        thread _ID28786( var_5 );
    }

    var_7 = 0.01;

    while ( self._ID216 > 0 )
    {
        self waittill( "death_report" );
        _ID42407::_ID31523();
        wait(var_7);
        var_7 += 2.5;
        var_4 = randomint( var_2.size );

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        {
            var_2 = _ID42237::_ID3332( var_2 );

            if ( !var_2.size )
            {
                if ( isdefined( self ) )
                    self delete();

                return;
            }

            var_4++;

            if ( var_4 >= var_2.size )
                var_4 = 0;

            var_5 = var_2[var_4];

            if ( isalive( var_5._ID35008 ) )
                continue;

            if ( isdefined( var_5._ID1191 ) )
                self._ID1191 = var_5._ID1191;
            else
                self._ID1191 = undefined;

            var_6 = _ID42407::_ID35014();

            if ( _ID42407::_ID35060( var_6 ) )
            {
                wait 2;
                continue;
            }

            var_6 thread _ID29445( self );
            var_6 thread _ID13594( var_0 );
            var_5._ID35008 = var_6;
            thread _ID28786( var_5 );

            if ( self._ID216 <= 0 )
                return;
        }
    }
}

_ID28788( var_0 )
{
    var_0 endon( "death" );
    var_0._ID35280++;
    self waittill( "death" );
    var_0._ID35280--;

    if ( !var_0._ID35280 )
        var_0 delete();
}

_ID13594( var_0 )
{
    if ( isdefined( self._ID31212 ) )
        return;

    var_1 = level._ID10115;

    if ( isdefined( var_0 ) )
    {
        if ( isdefined( var_0._ID31413 ) )
        {
            if ( var_0._ID31413 == -1 )
                return;

            var_1 = var_0._ID31413;
        }
    }

    if ( isdefined( self._ID31212 ) )
        return;

    self endon( "death" );
    self waittill( "goal" );
    self._ID452 = var_1;
}

_ID12102()
{
    self endon( "death" );
    wait 95;
    self notify( "timeout" );
}

_ID12103()
{
    self endon( "timeout" );
    thread _ID12102();
    self waittill( "trigger" );
    _ID42407::_ID7285( 1 );
}

_ID38046( var_0 )
{
    for (;;)
        wait 0.05;
}

_ID33988()
{

}

_ID28955( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = getentarray( var_0._ID1191, "targetname" );

    if ( !var_1.size )
        return;

    var_2 = _ID42237::_ID28945( var_1 );
    var_1 = [];
    var_1[var_1.size] = var_2;

    if ( isdefined( var_2._ID31273 ) )
    {
        var_3 = strtok( var_2._ID31273, " " );

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
            var_1[var_1.size] = getent( var_3[var_4], "script_linkname" );
    }

    waitframe;
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID5316 );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
}

_ID5316()
{
    if ( isdefined( self._ID31212 ) )
        return;

    self endon( "death" );
    self waittill( "reached_path_end" );

    if ( !isdefined( self getgoalvolume() ) )
        self._ID452 = level._ID10115;
}

_ID25328( var_0 )
{
    var_1 = var_0 _ID42407::_ID16038();
    _ID42237::_ID14400( var_1 );

    while ( level._ID9838[var_0._ID31113] > 0 )
        level waittill( "spawner_expired" + var_0._ID31113 );

    _ID42237::_ID14402( var_1 );
}

_ID32838()
{
    self endon( "death" );
    waitframe;
    self._ID20621 = isplayernumber( self );
    self._ID13118 = [];
    self._ID13119 = [];

    for ( var_0 = 0; var_0 < level._ID13121; var_0++ )
        self._ID13118[var_0] = 0;
}

_ID2237()
{
    level._ID2237[level._ID39468] = self;
    self waittill( "death" );
    waitframe;
    level._ID2237[level._ID39468] = undefined;
}
#using_animtree("generic_human");

_ID35268( var_0 )
{
    var_1 = var_0 spawndrone();
    var_1 useanimtree( #animtree );

    if ( var_1._ID1302 != "none" )
    {
        var_2 = getweaponmodel( var_1._ID1302 );
        var_1 attach( var_2, "tag_weapon_right" );
        var_1 _ID42407::_ID39665( var_1._ID1302 );
    }

    var_1._ID988 = var_0;
    var_1._ID11842 = isdefined( var_0._ID922 ) && var_0._ID922 == "drone_delete_on_unload";
    var_0 notify( "drone_spawned",  var_1  );
    return var_1;
}

_ID35276( var_0 )
{
    if ( !isdefined( var_0._ID988 ) )
    {

    }

    var_0._ID988._ID216 = var_0._ID988._ID216 + 1;
    var_1 = var_0._ID988;
    var_1._ID216++;
    var_2 = var_1._ID740;
    var_3 = var_1._ID65;
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_4 = var_1 stalingradspawn();
    var_5 = _ID42407::_ID35060( var_4 );
    var_6 = 1;

    for ( var_7 = 5; var_5 && var_6 < var_7; var_5 = _ID42407::_ID35060( var_4 ) )
    {
        if ( getfreeaicount() == 0 )
            break;

        waittillframeend;
        var_4 = var_1 stalingradspawn();
        var_6++;
    }

    if ( var_5 )
        return undefined;

    var_4._ID988 = var_1;

    if ( isdefined( var_4._ID18272 ) )
    {
        var_4 detach( var_4._ID18272 );
        var_4._ID18272 = undefined;
    }

    var_4 setmodel( var_0._ID669 );
    var_4 _ID42226::_ID32651( var_0._ID18304 );

    if ( isdefined( var_0._ID18272 ) )
    {
        var_4 attach( var_0._ID18272 );
        var_4._ID18272 = var_0._ID18272;
    }

    var_4._ID40170 = var_0._ID40170;
    var_4._ID40222 = var_0._ID40222;
    var_4._ID35596 = var_0._ID35596;
    var_4._ID14771 = var_0._ID14771;
    var_4 _meth_83cc( var_0 );
    var_1._ID740 = var_2;
    var_1._ID65 = var_3;
    var_0 delete();
    var_8 = var_4._ID762;
    return var_4;
}

_ID35275( var_0 )
{
    var_1 = var_0._ID988;
    var_2 = var_1._ID740;
    var_3 = var_1._ID65;
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_4 = var_1 _ID42407::_ID12076();

    if ( !isdefined( var_4 ) )
    {

    }

    var_4 setmodel( var_0._ID669 );
    var_4 _ID42226::_ID32651( var_0._ID18304 );
    var_4._ID40170 = var_0._ID40170;
    var_4._ID40222 = var_0._ID40222;
    var_4._ID35596 = var_0._ID35596;
    var_4._ID14771 = var_0._ID14771;
    var_4 _meth_83cc( var_0 );
    var_1._ID740 = var_2;
    var_1._ID65 = var_3;
    var_0 delete();
    var_4 notify( "drone_stop" );
    return var_4;
}

death_hero_stats()
{
    self waittill( "death",  var_0, var_1, var_2  );

    if ( !isdefined( self ) )
        return;

    if ( !self isbadguy() )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isplayernumber( var_0 ) )
        return;

    thread hero_stats_total_kills();
    thread hero_stats_headshots();
}

hero_stats_total_kills()
{
    level._ID794 _meth_85cc( "total_kills", 1 );
}

hero_stats_headshots()
{
    if ( self._ID253 == "head" )
        level._ID794 _meth_85cc( "headshots", 1 );
}

_ID9790()
{
    thread death_achievements_rappel_hack();
    self waittill( "death",  var_0, var_1, var_2  );

    if ( !isdefined( self ) )
        return;

    if ( !self isbadguy() )
        return;

    if ( !isdefined( var_0 ) )
        return;

    thread achieve_2_birds_1_stone( var_0, var_1 );
    thread achieve_driveby( var_0 );
    thread achieve_harder_they_fall( var_0 );
    thread achieve_riotshield_melee( var_0, var_1 );
    thread _ID1761( var_0 );
    thread _ID1760( var_0 );
    thread achieve_stealth_knife( var_0, var_1 );
    thread achieve_threesome( var_0, var_1, var_2 );
    thread achieve_headbanger( var_0, var_1, var_2 );

    if ( isdefined( self._ID21790 ) )
        var_1 = self._ID21790;

    thread achieve_some_like_hot_thermal( var_0, var_1 );
    thread achieve_one_man_army( var_0, var_1, var_2 );
    thread achieve_akimbo( var_0, var_1 );
}

death_achievements_rappel_hack()
{
    self waittill( "rope_death",  var_0  );

    if ( !isdefined( self ) )
        return;

    thread achieve_harder_they_fall( var_0 );
}

achieve_headbanger( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) || !isdefined( var_2 ) || !isdefined( var_1 ) )
        return;

    if ( self._ID1194 != "axis" )
        return;

    if ( !isplayernumber( var_0 ) )
        return;

    if ( var_2 != "fraggrenade" )
        return;

    if ( var_1 != "MOD_IMPACT" )
        return;

    if ( !animscripts\utility::_ID9641( "head", "neck", "helmet" ) )
        return;

    _ID42407::_ID16864( "HEADBANGER" );
}

_ID47502( var_0, var_1 )
{
    if ( self._ID1194 != "axis" )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( var_0 != level._ID794 )
        return;

    if ( var_1 != "MOD_MELEE" )
        return;

    if ( !isdefined( level._ID47502 ) )
        level._ID47502 = 1;
    else
        level._ID47502++;

    if ( level._ID47502 == 3 )
        _ID42407::_ID16864( "THREE_OF_A_KIND" );

    level notify( "achieve_three_of_kind" );
    level endon( "achieve_three_of_kind" );
    wait 4;
    level._ID47502 = undefined;
}

_ID43689( var_0, var_1 )
{
    if ( self._ID1194 != "axis" )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( var_0 != level._ID794 )
        return;

    if ( var_1 == "MOD_MELEE" || !animscripts\utility::_ID9641( "head", "neck", "helmet" ) )
    {
        level._ID43689 = undefined;
        return;
    }

    if ( !isdefined( level._ID43689 ) )
        level._ID43689 = 1;
    else
        level._ID43689++;

    if ( level._ID43689 == 4 )
        _ID42407::_ID16864( "FOUR_OF_A_KIND" );

    level notify( "achieve_four_of_kind" );
    level endon( "achieve_four_of_kind" );
    wait 12;
    level._ID43689 = undefined;
}

_ID47289( var_0 )
{
    if ( self._ID1194 != "axis" )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( level._ID14385["player_flashed"] && var_0 == level._ID794 )
        _ID42407::_ID16864( "DAREDEVIL" );
}

_ID44360( var_0 )
{
    if ( self._ID1194 != "axis" )
        return;

    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_0._ID51676 ) )
        return;

    if ( !isdefined( var_0._ID85 ) )
        return;

    if ( var_0._ID85 != level._ID794 )
        return;

    if ( isdefined( level._ID45645 ) )
    {
        _ID42407::_ID16864( "ROADKILL" );
        level._ID45645 = undefined;
    }
    else
    {
        level._ID45645 = 1;
        wait 0.05;
    }
}

_ID9791( var_0 )
{

}

achieve_some_like_hot_thermal( var_0, var_1 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    var_2 = var_0 getcurrentweapon();

    if ( !isdefined( var_2 ) )
    {
        var_0.achieve_some_like_hot_thermal = undefined;
        return;
    }

    if ( var_2 == "none" )
    {
        var_0.achieve_some_like_hot_thermal = undefined;
        return;
    }

    if ( !weaponhasexplosivedamage( var_2 ) )
    {
        var_0.achieve_some_like_hot_thermal = undefined;
        return;
    }

    if ( !( var_1 == "MOD_PISTOL_BULLET" || var_1 == "MOD_RIFLE_BULLET" ) )
    {
        var_0.achieve_some_like_hot_thermal = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_some_like_hot_thermal ) )
        var_0.achieve_some_like_hot_thermal = 1;
    else
        var_0.achieve_some_like_hot_thermal++;

    if ( var_0.achieve_some_like_hot_thermal == 6 )
        var_0 _ID42407::_ID27440( "SOME_LIKE_IT_HOT" );

    level notify( "achieve_some_like_hot_thermal" );
    level endon( "achieve_some_like_hot_thermal" );
    wait 12;
    level.achieve_some_like_hot_thermal = undefined;
}

achieve_2_birds_1_stone( var_0, var_1 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !( var_1 == "MOD_PISTOL_BULLET" || var_1 == "MOD_RIFLE_BULLET" ) )
        return;

    if ( isdefined( var_0._ID11803 ) )
    {
        var_0.achieve_2_birds_1_stone = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_2_birds_1_stone ) )
        var_0.achieve_2_birds_1_stone = 1;
    else
        var_0.achieve_2_birds_1_stone++;

    if ( var_0.achieve_2_birds_1_stone == 2 )
        var_0 _ID42407::_ID27440( "TWO_BIRDS_WITH_ONE_STONE" );

    waitframe;
    var_0.achieve_2_birds_1_stone = undefined;
}

achieve_driveby( var_0 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( var_0._ID11803 ) )
    {
        var_0.achieve_driveby = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_driveby ) )
        var_0.achieve_driveby = 1;
    else
        var_0.achieve_driveby++;

    if ( var_0.achieve_driveby >= 20 )
        var_0 _ID42407::_ID27440( "DRIVE_BY" );
}

achieve_harder_they_fall( var_0 )
{
    if ( isdefined( self.achieve_harder_they_fall ) )
        return;

    self.achieve_harder_they_fall = 1;

    if ( !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( self._ID28997 ) )
    {
        var_0.achieve_harder_they_fall = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_harder_they_fall ) )
        var_0.achieve_harder_they_fall = 1;
    else
        var_0.achieve_harder_they_fall++;

    if ( var_0.achieve_harder_they_fall == 2 )
        var_0 _ID42407::_ID27440( "THE_HARDER_THEY_FALL" );

    level notify( "achieve_harder_they_fall" );
    level endon( "achieve_harder_they_fall" );
    wait 12;
    var_0.achieve_harder_they_fall = undefined;
}

achieve_riotshield_melee( var_0, var_1 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( var_1 != "MOD_MELEE" )
        return;

    var_2 = var_0 getcurrentweapon();

    if ( !isdefined( var_2 ) )
        return;

    if ( var_2 != "riotshield" )
        return;

    var_0 _ID42407::_ID27440( "UNNECESSARY_ROUGHNESS" );
}

_ID1761( var_0 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( var_0._ID20686 ) )
    {
        var_0._ID1761 = undefined;
        return;
    }

    if ( !isdefined( var_0._ID1761 ) )
        var_0._ID1761 = 1;
    else
        var_0._ID1761++;

    wait 0.1;

    if ( !isdefined( var_0._ID1761 ) )
        return;

    if ( var_0._ID1761 == 4 && var_0._ID6087 <= 4 )
        var_0 _ID42407::_ID27440( "KNOCK_KNOCK" );
}

_ID1760( var_0 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !var_0._ID586 )
    {
        var_0._ID1760 = undefined;
        return;
    }

    if ( !isdefined( var_0._ID1760 ) )
        var_0._ID1760 = 1;
    else
        var_0._ID1760++;

    if ( var_0._ID1760 == 4 )
        var_0 _ID42407::_ID27440( "DOWNED_BUT_NOT_OUT" );
}

achieve_one_man_army( var_0, var_1, var_2 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !isdefined( var_2 ) )
    {
        if ( var_0 isusingturret() )
            var_2 = "turret";
        else
        {
            var_0.achieve_one_man_army = [];
            return;
        }
    }
    else if ( var_1 == "MOD_MELEE" && var_2 != "riotshield" )
        var_2 = "knife";

    if ( !isdefined( var_0.achieve_one_man_army ) )
        var_0.achieve_one_man_army = [];

    foreach ( var_4 in var_0.achieve_one_man_army )
    {
        if ( var_2 != var_4 )
            continue;

        var_0.achieve_one_man_army = [];
    }

    var_0.achieve_one_man_army[var_0.achieve_one_man_army.size] = var_2;

    if ( var_0.achieve_one_man_army.size == 5 )
        var_0 _ID42407::_ID27440( "ONE_MAN_ARMY" );
}

achieve_akimbo( var_0, var_1 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( !var_0 isdualwielding() )
    {
        var_0.achieve_akimbo = undefined;
        return;
    }

    if ( !( var_1 == "MOD_PISTOL_BULLET" || var_1 == "MOD_RIFLE_BULLET" ) )
    {
        var_0.achieve_akimbo = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_akimbo ) )
        var_0.achieve_akimbo = 1;
    else
        var_0.achieve_akimbo++;

    if ( var_0.achieve_akimbo == 10 )
        var_0 _ID42407::_ID27440( "LOOK_MA_TWO_HANDS" );
}

achieve_stealth_knife( var_0, var_1 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( var_1 != "MOD_MELEE" )
        return;

    if ( !_ID42407::_ID13023( "_stealth_normal" ) )
        return;

    if ( !_ID42407::_ID13019( "_stealth_normal" ) )
        return;

    if ( isdefined( self._ID584 ) )
        return;

    if ( isdefined( self._ID21920 ) && self._ID21920 > 0 )
        return;

    var_0 _ID42407::_ID27440( "NO_REST_FOR_THE_WARY" );
}

achieve_threesome( var_0, var_1, var_2 )
{
    if ( !isplayernumber( var_0 ) )
        return;

    if ( var_1 != "MOD_GRENADE_SPLASH" )
    {
        var_0.achieve_threesome = undefined;
        return;
    }

    if ( !isdefined( var_2 ) )
    {
        var_0.achieve_threesome = undefined;
        return;
    }

    if ( var_2 == "claymore" )
    {
        var_0.achieve_threesome = undefined;
        return;
    }

    if ( weaponinventorytype( var_2 ) == "offhand" )
    {
        var_0.achieve_threesome = undefined;
        return;
    }

    if ( !isdefined( var_0.achieve_threesome ) )
        var_0.achieve_threesome = 1;
    else
        var_0.achieve_threesome++;

    if ( var_0.achieve_threesome == 3 )
        var_0 _ID42407::_ID27440( "THREESOME" );

    waitframe;
    var_0.achieve_threesome = undefined;
}

_ID1932()
{
    var_0 = self._ID31414;
    var_1 = self._ID31415;

    if ( !isdefined( level._ID21375[var_0] ) )
        level._ID21375[var_0] = [];

    if ( !isdefined( level._ID21375[var_0][var_1] ) )
        level._ID21375[var_0][var_1] = [];

    level._ID21375[var_0][var_1][self._ID13703] = self;
}

_ID1971()
{
    var_0 = self._ID31442;
    var_1 = self._ID31443;

    if ( !isdefined( level._ID35082[var_0] ) )
        level._ID35082[var_0] = [];

    if ( !isdefined( level._ID35082[var_0][var_1] ) )
        level._ID35082[var_0][var_1] = [];

    level._ID35082[var_0][var_1][self._ID13703] = self;
}

_ID35867()
{
    self endon( "death" );
    self._ID11025 = 1;
    wait 3;
    self._ID11025 = 0;
}

_ID9844()
{
    self endon( "death" );
    wait(self._ID31117);
    wait(randomfloat( 10 ));
    self kill();
}

character_model_specialcases()
{
    if ( isdefined( self._ID18304 ) )
    {
        switch ( self._ID18304 )
        {
            case "head_opforce_arab_d_hat":
                _ID42226::sethatmodel( "hat_opforce_arab_d" );
                break;
            case "head_opforce_merc_b_hat":
                _ID42226::sethatmodel( "hat_opforce_merc_b" );
                break;
            case "head_militia_bb_blk_hat":
                _ID42226::sethatmodel( "hat_militia_bb_blk" );
                break;
        }
    }
}
