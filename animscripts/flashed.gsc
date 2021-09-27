// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19598()
{
    var_0 = [];
    var_0["flashed"] = [ %exposed_flashbang_v2, %exposed_flashbang_v4 ];
    var_0["flashed"] = _ID42237::_ID3320( var_0["flashed"] );
    anim._ID3277["soldier"]["flashed"] = var_0;
    anim._ID14503["soldier"] = 0;
}

_ID16445()
{
    var_0 = "soldier";

    if ( _func_02F( self._ID3152 ) && _func_02F( anim._ID14503[self._ID3152] ) )
        var_0 = self._ID3152;

    anim._ID14503[var_0]++;

    if ( anim._ID14503[var_0] >= anim._ID3277[var_0]["flashed"]["flashed"].size )
    {
        anim._ID14503[var_0] = 0;
        anim._ID3277[var_0]["flashed"]["flashed"] = _ID42237::_ID3320( anim._ID3277[var_0]["flashed"]["flashed"] );
    }

    return anim._ID3277[var_0]["flashed"]["flashed"][anim._ID14503[var_0]];
}

_ID14504( var_0 )
{
    self endon( "killanimscript" );
    self _meth_8118( "flashed_anim", var_0, %body, 0.2, _func_0BA( 0.9, 1.1 ) );
    animscripts\shared::_ID11529( "flashed_anim" );
}

_ID616()
{
    self endon( "death" );
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "flashed" );
    var_0 = _ID42407::_ID14506();

    if ( var_0 <= 0 )
        return;

    animscripts\face::_ID30759( "flashbang" );

    if ( _func_02F( self._ID35376 ) )
    {
        self [[ self._ID35376 ]]();
        return;
    }

    var_1 = _ID616();
    _unknown_0168( var_1, var_0 );
}

_ID14505( var_0, var_1 )
{
    self endon( "death" );
    self endon( "killanimscript" );

    if ( self._ID7._ID28253 == "prone" )
        animscripts\utility::_ID13390( 1 );

    self._ID7._ID28253 = "stand";
    self._ID49 = 1;
    thread _unknown_0177( var_0 );
    wait(var_1);
    self notify( "stop_flashbang_effect" );
    self._ID14514 = 0;
}
