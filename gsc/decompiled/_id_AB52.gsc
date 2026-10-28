// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    var_0 = getentarray( "leaking", "targetname" );

    if ( !var_0.size )
        return;

    var_0 thread precachefx();
    var_0 thread methodsinit();
    common_scripts\utility::array_thread( var_0, ::_id_B763 );
}

_id_B763()
{
    switch ( self.script_noteworthy )
    {
        case "barrel_oil":
            _id_BC68();
            break;
        case "barrel_acid":
            _id_BC68();
            break;
        case "barrel_sludge":
            _id_BC68();
            break;
        case "barrel_water":
            _id_BC68();
            break;
    }

    thread _id_D429();
}

_id_BC68()
{
    self.a = self.origin;
    self.up = anglestoup( self.angles );
    var_0 = anglestoup( ( 0, 90, 0 ) );
    self.org = self.a + self.up * 22;
    self.a += self.up * 1.5;
    self.b = self.a + self.up * 41.4;
    self.volume = 25861.7;
    self._id_B9D6 = self.volume;
    var_1 = vectordot( self.up, var_0 );
    var_2 = self.b;

    if ( var_1 < 0 )
        var_2 = self.a;

    var_1 = abs( 1 - abs( var_1 ) );
    self._id_B8B5 = physicstrace( self.org, self.org + ( 0, 0, -80 ) )[2];
    self._id_C712 = var_2[2] + var_1 * 14;
}

_id_D429()
{
    self setcandamage( 1 );
    self._id_AF84 = isdefined( level._effect["leak_interactive_pool"] ) && isdefined( level._effect["leak_interactive_pool"][self.script_noteworthy] );
    self._id_CB93 = isdefined( level._effect["leak_interactive_drain"] ) && isdefined( level._effect["leak_interactive_drain"][self.script_noteworthy] );
    self endon( "drained" );

    for (;;)
    {
        self waittill( "damage", var_0, var_1, var_2, var_3, var_4 );

        if ( var_4 == "MOD_MELEE" || var_4 == "MOD_IMPACT" )
            continue;

        var_3 = self [[ level._id_B162[var_4] ]]( var_3, var_4 );

        if ( !isdefined( var_3 ) )
            continue;

        thread _id_ADD0( var_3 );
    }
}

_id_ADD0( var_0 )
{
    var_1 = pointonsegmentnearesttopoint( self.a, self.b, var_0 );
    var_2 = undefined;

    if ( var_1 == self.a )
        var_2 = self.up * -1;
    else if ( var_1 == self.b )
        var_2 = self.up;
    else
        var_2 = vectorfromlinetopoint( self.a, self.b, var_0 );

    var_3 = var_0[2] - self._id_B8B5;

    if ( var_3 < 0.02 )
        var_3 = 0;

    var_4 = var_3 / ( self._id_C712 - self._id_B8B5 ) * self.volume;

    if ( self._id_B9D6 > var_4 )
    {
        if ( self._id_AF84 )
            thread _id_AF32( var_0, var_2 );

        thread common_scripts\utility::play_sound_in_space( level._sound["leak_interactive_leak"][self.script_noteworthy], var_0 );

        while ( self._id_B9D6 > var_4 )
        {
            playfx( level._effect["leak_interactive_leak"][self.script_noteworthy], var_0, var_2 );
            self._id_B9D6 -= 100;
            wait 0.1;
        }

        if ( self._id_CB93 )
            playfx( level._effect["leak_interactive_drain"][self.script_noteworthy], var_0, var_2 );
    }

    if ( self._id_B9D6 / self.volume <= 0.05 )
        self notify( "drained" );
}

_id_AF32( var_0, var_1 )
{
    self._id_AF84 = 0;
    playfx( level._effect["leak_interactive_pool"][self.script_noteworthy], var_0, var_1 );
    wait 0.5;
    self._id_AF84 = 1;
}

methodsinit()
{
    level._id_B162 = [];
    level._id_B162["MOD_UNKNOWN"] = ::_id_CA73;
    level._id_B162["MOD_PISTOL_BULLET"] = ::_id_D424;
    level._id_B162["MOD_RIFLE_BULLET"] = ::_id_D424;
    level._id_B162["MOD_GRENADE"] = ::_id_CA73;
    level._id_B162["MOD_GRENADE_SPLASH"] = ::_id_CA73;
    level._id_B162["MOD_PROJECTILE"] = ::_id_CA73;
    level._id_B162["MOD_PROJECTILE_SPLASH"] = ::_id_CA73;
    level._id_B162["MOD_MELEE"] = ::_id_D2AC;
    level._id_B162["MOD_HEAD_SHOT"] = ::_id_D2AC;
    level._id_B162["MOD_CRUSH"] = ::_id_D2AC;
    level._id_B162["MOD_TELEFRAG"] = ::_id_D2AC;
    level._id_B162["MOD_FALLING"] = ::_id_D2AC;
    level._id_B162["MOD_SUICIDE"] = ::_id_D2AC;
    level._id_B162["MOD_TRIGGER_HURT"] = ::_id_CA73;
    level._id_B162["MOD_EXPLOSIVE"] = ::_id_CA73;
    level._id_B162["MOD_IMPACT"] = ::_id_D2AC;
    level._id_B162["MOD_EXPLOSIVE_BULLET"] = ::_id_D424;
}

_id_D424( var_0, var_1 )
{
    return var_0;
}

_id_CA73( var_0, var_1 )
{
    var_2 = vectornormalize( vectorfromlinetopoint( self.a, self.b, var_0 ) );
    var_0 = pointonsegmentnearesttopoint( self.a, self.b, var_0 );
    return var_0 + var_2 * 4;
}

_id_D2AC( var_0, var_1 )
{
    return undefined;
}

_id_BD95( var_0, var_1 )
{

}

precachefx()
{
    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0].script_noteworthy != "barrel_oil" )
            continue;

        level._effect["leak_interactive_leak"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_leak" );
        level._effect["leak_interactive_pool"][self[var_0].script_noteworthy] = loadfx( "fx/misc/oilsplash_decal_spawner" );
        level._effect["leak_interactive_drain"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_drain" );
        level._sound["leak_interactive_leak"][self[var_0].script_noteworthy] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0].script_noteworthy != "barrel_acid" )
            continue;

        level._effect["leak_interactive_leak"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_leak" );
        level._effect["leak_interactive_pool"][self[var_0].script_noteworthy] = loadfx( "fx/misc/oilsplash_decal_spawner" );
        level._effect["leak_interactive_drain"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_drain" );
        level._sound["leak_interactive_leak"][self[var_0].script_noteworthy] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0].script_noteworthy != "barrel_water" )
            continue;

        level._effect["leak_interactive_leak"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_leak_water" );
        level._sound["leak_interactive_leak"][self[var_0].script_noteworthy] = "h1_oil_spill_start";
        break;
    }

    for ( var_0 = 0; var_0 < self.size; var_0++ )
    {
        if ( self[var_0].script_noteworthy != "barrel_sludge" )
            continue;

        level._effect["leak_interactive_leak"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_leak" );
        level._effect["leak_interactive_pool"][self[var_0].script_noteworthy] = loadfx( "fx/misc/oilsplash_decal_spawner" );
        level._effect["leak_interactive_drain"][self[var_0].script_noteworthy] = loadfx( "fx/impacts/barrel_drain" );
        level._sound["leak_interactive_leak"][self[var_0].script_noteworthy] = "h1_oil_spill_start";
        break;
    }
}
