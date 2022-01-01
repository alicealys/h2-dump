// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID38715 = 1;
    _ID2179( %traverse90, 90 );
}

_ID2179( var_0, var_1 )
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    var_2 = self getnegotiationstartnode();
    self orientmode( "face angle", var_2._ID65[1] );
    var_3 = var_2._ID38701 - var_2._ID740[2];
    thread animscripts\traverse\shared::_ID37473( var_3 - var_1 );
    self setflaggedanimknoballrestart( "traverse", var_0, %body, 1, 0.15, 1 );
    var_4 = gettime();
    thread animscripts\notetracks::_ID11530( "traverse", "no clear", ::_ID17735 );

    if ( !animhasnotetrack( var_0, "gravity on" ) )
    {
        var_4 = 1.23;
        var_5 = 0.2;
        wait 5.9;
        self traversemode( "gravity" );
        wait(var_5);
    }
    else
    {
        self waittillmatch( "traverse",  "gravity on"  );
        self traversemode( "gravity" );

        if ( !animhasnotetrack( var_0, "blend" ) )
            wait 0.2;
        else
            self waittillmatch( "traverse",  "blend"  );
    }
}

_ID17735( var_0 )
{
    if ( var_0 != "traverse_death" )
        return;

    self endon( "killanimscript" );

    if ( self._ID486 == 1 )
    {
        self._ID7._ID24881 = 1;

        if ( self._ID38715 > 1 )
            self setflaggedanimknoball( "deathanim", %traverse90_end_death, %body, 1, 0.2, 1 );
        else
            self setflaggedanimknoball( "deathanim", %traverse90_start_death, %body, 1, 0.2, 1 );

        animscripts\face::_ID30759( "death" );
    }

    self._ID38715++;
}
