// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "grenadecower" );

    if ( isdefined( self._ID17407 ) )
    {
        self [[ self._ID17407 ]]();
        return;
    }

    if ( self._ID7._ID28253 == "prone" )
    {
        animscripts\stop::main();
        return;
    }

    self animmode( "zonly_physics" );
    self orientmode( "face angle", self.angles[1] );
    var_0 = 0;

    if ( isdefined( self.grenade ) )
        var_0 = angleclamp180( vectortoangles( self.grenade.origin - self.origin )[1] - self.angles[1] );
    else
        var_0 = self.angles[1];

    if ( self._ID7._ID28253 == "stand" )
    {
        if ( isdefined( self.grenade ) && _ID39067( var_0 ) )
            return;

        self setflaggedanimknoballrestart( "cowerstart", animscripts\utility::_ID22630( "grenade", "cower_squat" ), %body, 1, 0.2 );
        self._ID9575 = ::_ID53386;
        animscripts\shared::_ID11529( "cowerstart" );
    }

    self._ID7._ID28253 = "crouch";
    self._ID7._ID24414 = "stop";
    self setflaggedanimknoballrestart( "cower", animscripts\utility::_ID22630( "grenade", "cower_squat_idle" ), %body, 1, 0.2 );
    animscripts\shared::_ID11529( "cower" );
    self waittill( "never" );
}

_ID53386()
{
    self orientmode( "face angle", self.angles[1] );
    self.nododgemove = 1;
    self setflaggedanimknoballrestart( "cowerend", animscripts\utility::_ID22630( "grenade", "cower_squat_up" ), %body, 1, 0.4 );
    animscripts\shared::_ID11529( "cowerend" );
    self._ID9575 = undefined;
    self._ID7._ID24414 = "stop";
    self.nododgemove = 0;
    animscripts\exit_node::_ID36145();
}

_ID319()
{
    self.safetochangescript = 1;
}

_ID39067( var_0 )
{
    if ( randomint( 2 ) == 0 )
        return 0;

    if ( self.stairsstate != "none" )
        return 0;

    var_1 = undefined;

    if ( abs( var_0 ) > 90 )
        var_1 = animscripts\utility::_ID22630( "grenade", "cower_dive_back" );
    else
        var_1 = animscripts\utility::_ID22630( "grenade", "cower_dive_front" );

    var_2 = getangledelta( var_1, 0, 0.5 );
    var_3 = self localtoworldcoords( var_2 );

    if ( !self maymovetopoint( var_3 ) )
        return 0;

    self.safetochangescript = 0;
    self setflaggedanimknoballrestart( "cowerstart", var_1, %body, 1, 0.2 );
    animscripts\shared::_ID11529( "cowerstart" );
    self.safetochangescript = 1;
    return 1;
}
