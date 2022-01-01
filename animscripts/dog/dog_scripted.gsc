// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "death" );
    self notify( "killanimscript" );
    self._ID8196["root"] = %root;
    self endon( "end_sequence" );
    self startscriptedanim( self._ID8196["notifyName"], self._ID8196["origin"], self._ID8196["angles"], self._ID8196["anim"], self._ID8196["animMode"], self._ID8196["root"] );
    self._ID8196 = undefined;

    if ( isdefined( self._ID9843 ) )
        self._ID9842 = self._ID9843;

    self waittill( "killanimscript" );
}

_ID521( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self._ID8196["notifyName"] = var_0;
    self._ID8196["origin"] = var_1;
    self._ID8196["angles"] = var_2;
    self._ID8196["anim"] = var_3;

    if ( isdefined( var_4 ) )
        self._ID8196["animMode"] = var_4;
    else
        self._ID8196["animMode"] = "normal";

    if ( isdefined( var_5 ) )
        self._ID8196["root"] = var_5;
    else
        self._ID8196["root"] = %root;
}
