// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3155 = [];
    self._ID3155["hiding"]["stand"] = ::_ID32551;
    self._ID3155["hiding"]["crouch"] = ::_ID32551;
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_swim_left" );

    if ( !isdefined( self._ID3263 ) || self._ID3263 != "cover_corner_l" )
        self._ID3263 = "cover_corner_l";

    var_0 = anim._ID3277["soldier"]["swim"]["arrival_cover_corner_l_angleDelta"][4][4];
    animscripts\corner::_ID8741( "left", var_0[1] );
}

_ID319()
{
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "left" );
}

_ID32551()
{
    self._ID7._ID3291 = animscripts\swim::_ID16643( "cover_corner_l" );
    var_0 = anim._ID3277["soldier"]["swim"]["arrival_cover_corner_l_angleDelta"][4][4];
    self._ID18567 = var_0[1];
}
