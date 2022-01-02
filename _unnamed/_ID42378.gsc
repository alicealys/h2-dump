// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID36250()
{
    _ID14953();
    var_0 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_0, "friendly_behavior" );
    var_0 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_0, "friendly_behavior" );
}

_ID14989()
{
    thread _ID42407::_ID32226( 0 );
    self._ID1644._ID5029._ID25553 = self.grenadeammo;
    self.grenadeammo = 0;
    self._ID14794 = undefined;
    self.ignoreme = 1;
}

_ID14990()
{
    thread _ID42407::_ID32226( 1 );

    if ( isdefined( self._ID1644._ID5029._ID25553 ) )
        self.grenadeammo = self._ID1644._ID5029._ID25553;
    else
        self.grenadeammo = 3;

    self.ignoreme = 0;
    self pushplayer( 0 );
    _ID42407::_ID10896();
    thread _ID14979();
    self allowedstances( "prone", "crouch", "stand" );

    if ( self.type != "dog" || !isdefined( self._ID19464 ) || !self._ID19464 )
        _ID42407::_ID3136();
}

_ID14979( var_0 )
{
    self endon( "death" );

    if ( self._ID1644._ID22585._ID35573 != "prone" )
        return;

    _ID42407::_ID13025( "_stealth_custom_anim" );
    var_1 = "_stealth_prone_2_run_roll";

    if ( isdefined( var_0 ) )
        self orientmode( "face angle", var_0[1] + 20 );

    thread _ID42386::_ID36246( self, "gravity", var_1 );
    var_2 = getanimlength( _ID42407::_ID16122( var_1 ) );
    wait(var_2 - 0.2);
    self notify( "stop_animmode" );
    _ID42407::_ID13021( "_stealth_custom_anim" );
}

_ID14953()
{
    _ID42407::_ID13024( "_stealth_custom_anim" );
    _ID42407::_ID13024( "_stealth_override_goalpos" );
    self._ID1644._ID5029 = spawnstruct();
    self._ID1644._ID5029._ID2281 = [];
    _ID14937();
    self._ID1644._ID28153 = spawnstruct();
    thread _ID42386::_ID2342();
}

_ID14932( var_0 )
{
    foreach ( var_3, var_2 in var_0 )
        _ID42386::_ID2261( "state", var_3, var_2 );

    var_4 = self._ID1644._ID5029._ID2281["state"]["hidden"];
    thread _ID42386::_ID2310( var_4, "friendly_behavior" );
    var_4 = self._ID1644._ID5029._ID2281["state"]["spotted"];
    thread _ID42386::_ID2311( var_4, "friendly_behavior" );
}

_ID14937()
{
    var_0 = [];
    var_0["hidden"] = ::_ID14989;
    var_0["spotted"] = ::_ID14990;
    _ID14932( var_0 );
}
