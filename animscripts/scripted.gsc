// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self endon( "death" );
    self notify( "killanimscript" );
    self notify( "clearSuppressionAttack" );
    self._ID7._ID36843 = 0;
    self._ID8196["root"] = %body;
    self endon( "end_sequence" );
    self _meth_824F( self._ID8196["notifyName"], self._ID8196["origin"], self._ID8196["angles"], self._ID8196["anim"], self._ID8196["animMode"], self._ID8196["root"], self._ID8196["goalTime"] );
    self._ID8196 = undefined;

    if ( _func_02F( self._ID31544 ) || _func_02F( self._ID13765 ) )
    {
        animscripts\face::_ID30763( self._ID13765, self._ID31544, 0.9, "scripted_anim_facedone" );
        self._ID13765 = undefined;
        self._ID31544 = undefined;
    }

    if ( _func_02F( self._ID9843 ) )
        self._ID9842 = self._ID9843;

    self waittill( "killanimscript" );
}

_ID521( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self._ID8196["notifyName"] = var_0;
    self._ID8196["origin"] = var_1;
    self._ID8196["angles"] = var_2;
    self._ID8196["anim"] = var_3;

    if ( _func_02F( var_4 ) )
        self._ID8196["animMode"] = var_4;
    else
        self._ID8196["animMode"] = "normal";

    if ( _func_02F( var_5 ) )
        self._ID8196["root"] = var_5;
    else
        self._ID8196["root"] = %body;

    self._ID8196["goalTime"] = var_6;
}
