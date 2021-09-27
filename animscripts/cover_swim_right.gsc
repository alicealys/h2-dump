// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3155 = [];
    self._ID3155["hiding"]["stand"] = ::_unknown_002C;
    self._ID3155["hiding"]["crouch"] = ::_unknown_003B;
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_swim_right" );

    if ( !_func_02F( self._ID3263 ) || self._ID3263 != "cover_corner_r" )
        self._ID3263 = "cover_corner_r";

    var_0 = anim._ID3277["soldier"]["swim"]["arrival_cover_corner_r_angleDelta"][4][4];
    animscripts\corner::_ID8741( "right", var_0[1] );
}

_ID319()
{
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "right" );
}

_ID32552()
{
    self._ID7._ID3291 = animscripts\swim::_ID16643( "cover_corner_r" );
    var_0 = anim._ID3277["soldier"]["swim"]["arrival_cover_corner_r_angleDelta"][4][4];
    self._ID18567 = var_0[1];
}
