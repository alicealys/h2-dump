// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3155 = [];
    self._ID3155["hiding"]["stand"] = ::_ID32553;
    self._ID3155["hiding"]["crouch"] = ::_ID32553;
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_swim_up" );

    if ( !isdefined( self._ID3263 ) || self._ID3263 != "cover_u" )
        self._ID3263 = "cover_u";

    animscripts\corner::_ID8741( "up", 0 );
}

_ID319()
{
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "up" );
}

_ID32553()
{
    self._ID7._ID3291 = animscripts\swim::_ID16643( "cover_u" );
    self._ID18567 = 0;
}
