// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );
    self clearanim( %root, 0.1 );
    self clearanim( %german_shepherd_idle, 0.2 );
    self clearanim( %german_shepherd_attackidle_knob, 0.2 );
    thread _ID22623( "attackIdle" );

    for (;;)
    {
        if ( _ID33926() )
        {
            self clearanim( %german_shepherd_idle, 0.2 );
            _ID51719();
        }
        else
        {
            self orientmode( "face current" );
            self clearanim( %german_shepherd_attackidle_knob, 0.2 );
            self setflaggedanimrestart( "dog_idle", %german_shepherd_idle, 1, 0.2, self._ID3195 );
        }

        animscripts\shared::_ID11529( "dog_idle" );

        if ( isdefined( self._ID28541 ) )
        {
            self._ID1230 = self._ID28541;
            self._ID28541 = undefined;
        }
    }
}

_ID45812( var_0 )
{
    var_1 = self._ID322._ID740 - self._ID740;
    var_2 = length( var_1 );

    if ( var_2 < 1 )
        return 1;

    var_3 = anglestoforward( self._ID65 );
    return ( var_3[0] * var_1[0] + var_3[1] * var_1[1] ) / var_2 > var_0;
}

_ID51719()
{
    self clearanim( %german_shepherd_attackidle_knob, 0.1 );

    if ( _ID45812( 0.866 ) )
        self orientmode( "face angle", self._ID65[1] );
    else
    {
        if ( isdefined( self._ID322 ) )
        {
            var_0 = vectortoyaw( self._ID322._ID740 - self._ID740 );
            var_1 = angleclamp180( var_0 - self._ID65[1] );

            if ( abs( var_1 ) > 10 )
            {
                self orientmode( "face enemy" );
                self._ID28541 = self._ID1230;
                self._ID1230 = 0.3;

                if ( var_1 > 0 )
                    var_2 = %german_shepherd_rotate_ccw;
                else
                    var_2 = %german_shepherd_rotate_cw;

                self setflaggedanimrestart( "dog_turn", var_2, 1, 0.2, 1.0 );
                animscripts\shared::_ID11529( "dog_turn" );
                self._ID1230 = self._ID28541;
                self._ID28541 = undefined;
                self clearanim( %german_shepherd_rotate_cw, 0.2 );
                self clearanim( %german_shepherd_rotate_ccw, 0.2 );
            }
        }

        self orientmode( "face angle", self._ID65[1] );
    }

    if ( _ID33903() )
        self setflaggedanimrestart( "dog_idle", %german_shepherd_attackidle_growl, 1, 0.2, 1 );
    else
    {
        var_3 = 33;
        var_4 = 66;

        if ( isdefined( self._ID23864 ) )
        {
            if ( self._ID23864 == "growl" )
            {
                var_3 = 15;
                var_4 = 30;
            }
            else if ( self._ID23864 == "bark" )
            {
                var_3 = 15;
                var_4 = 85;
            }
        }

        var_5 = randomint( 100 );

        if ( var_5 < var_3 )
            self setflaggedanimrestart( "dog_idle", %german_shepherd_attackidle_b, 1, 0.2, self._ID3195 );
        else
        {
            if ( var_5 < var_4 )
            {
                self setflaggedanimrestart( "dog_idle", %german_shepherd_attackidle_bark, 1, 0.2, self._ID3195 );
                return;
            }

            self setflaggedanimrestart( "dog_idle", %german_shepherd_attackidle_growl, 1, 0.2, self._ID3195 );
        }
    }
}

_ID33926()
{
    return isdefined( self._ID322 ) && isalive( self._ID322 ) && distancesquared( self._ID740, self._ID322._ID740 ) < 1000000;
}

_ID33903()
{
    if ( isdefined( self._ID31246 ) )
        return 1;

    if ( !isalive( self._ID322 ) )
        return 1;

    return !self cansee( self._ID322 );
}

_ID22623( var_0 )
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self clearanim( %german_shepherd_look_2, 0 );
    self clearanim( %german_shepherd_look_4, 0 );
    self clearanim( %german_shepherd_look_6, 0 );
    self clearanim( %german_shepherd_look_8, 0 );
    self setdefaultaimlimits();
    self._ID894 = 90;
    self._ID590 = -90;
    self setanimlimited( anim._ID11477[var_0][2], 1, 0 );
    self setanimlimited( anim._ID11477[var_0][4], 1, 0 );
    self setanimlimited( anim._ID11477[var_0][6], 1, 0 );
    self setanimlimited( anim._ID11477[var_0][8], 1, 0 );
    animscripts\track::_ID32548( 1, 0.2 );
    animscripts\track::_ID38149( %german_shepherd_look_2, %german_shepherd_look_4, %german_shepherd_look_6, %german_shepherd_look_8 );
}
