// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    precacheshader( "h2_damage_feedback" );
    precacheshader( "h2_damage_feedback_headshot" );
    _ID42407::_ID12469();
    _ID42407::_ID12470();
    _ID42237::_ID3350( level._ID805, ::_ID19666 );
    _ID42237::_ID3350( level._ID805, _ID42407::_ID15503 );
    _ID42237::_ID3350( level._ID805, ::_ID24130 );
}

_ID19666()
{
    self._ID19130 = newclienthudelem( self );
    self._ID19130.alignx = "center";
    self._ID19130.aligny = "middle";
    self._ID19130.horzalign = "center";
    self._ID19130.vertalign = "middle";
    self._ID19130.alpha = 0;
    self._ID19130._ID53718 = 0;
    self._ID19130._ID72 = 1;
    self._ID19130 setshader( "h2_damage_feedback", 50, 100 );
    self._ID19130.y = 25;
    self._ID19131 = newclienthudelem( self );
    self._ID19131.alignx = "center";
    self._ID19131.aligny = "middle";
    self._ID19131.horzalign = "center";
    self._ID19131.vertalign = "middle";
    self._ID19131.alpha = 0;
    self._ID19131._ID72 = 1;
    self._ID19131 setshader( "h2_damage_feedback_headshot", 50, 100 );
    self._ID19131.y = 25;
}

_ID24130()
{
    _ID42407::_ID1868( ::_ID9633 );
}

_ID36604()
{
    _ID42407::_ID29503( ::_ID9633 );
}

_ID9633( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = 0;

    if ( isdefined( self._ID6315 ) )
    {
        var_11 = [];
        var_11["MOD_PISTOL_BULLET"] = 1;
        var_11["MOD_RIFLE_BULLET"] = 1;

        if ( isdefined( var_11[var_4] ) )
        {
            if ( var_0 <= self._ID6315 && ( !isdefined( self._ID23165 ) || !self._ID23165 || !isdefined( var_9 ) || !issubstr( var_9, "iw5_em1" ) ) )
                return;
        }
    }

    if ( isdefined( self.damagelocation ) && ( self.damagelocation == "head" || self.damagelocation == "helmet" ) )
        var_10 = 1;

    var_1 _ID39695( self, var_10, var_4 );
}

_ID39695( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( isdefined( var_0.team ) )
        var_3 = var_0.team;
    else if ( isdefined( var_0._ID31474 ) )
        var_3 = var_0._ID31474;

    if ( !isdefined( var_3 ) )
        return;

    if ( var_3 == "neutral" || isdefined( self.team ) && var_3 == self.team )
        return;

    if ( isdefined( var_0._ID43135 ) && isdefined( var_0._ID43135.ts_forced_hit_marker ) && var_0._ID43135.ts_forced_hit_marker )
        var_0._ID43135.ts_forced_hit_marker = 0;
    else if ( isdefined( var_0._ID22746 ) && var_0._ID22746 )
        return;

    if ( isdefined( var_0._ID16986 ) && var_0._ID16986 )
        return;

    if ( isdefined( var_0._ID31241 ) && var_0._ID31241 )
        return;

    _ID39697( var_0, var_2 );
    _ID39696( var_1, var_0 );
}

_ID39697( var_0, var_1 )
{
    if ( !_ID42407::_ID20501() )
        return;

    if ( isdefined( var_0 ) && isdefined( var_0._ID11013 ) && var_0._ID11013 )
        return;

    if ( isplayernumber( self ) )
    {
        var_2 = "SP_hit_alert_npc";

        if ( soundexists( var_2 ) )
        {
            level.player playlocalsound( var_2 );
            return;
        }
    }
    else if ( isplayernumber( var_0 ) )
    {
        if ( isdefined( var_1 ) && var_1 == "MOD_CRUSH" )
        {
            var_2 = "h2_player_gets_crushed";

            if ( soundexists( var_2 ) )
                level.player playlocalsound( var_2 );
        }
    }
}

_ID39696( var_0, var_1 )
{
    if ( !_ID42407::_ID20500() )
        return;

    if ( !isplayernumber( self ) )
        return;

    if ( isdefined( var_1.skiphitmarker ) && var_1.skiphitmarker )
        return;

    var_2 = 1;

    if ( isdefined( level._ID34362._ID35417 ) )
        var_2 = level._ID34362._ID35417;

    var_3 = var_1.health <= 0 || !isalive( var_1 ) || isdefined( var_1._ID52049 ) && var_1._ID52049;

    if ( var_3 && !isdefined( var_1._ID45747 ) || isdefined( var_1.alwaysredhitmarker ) && var_1.alwaysredhitmarker )
    {
        self._ID19130.color = ( 1, 0, 0 );
        self._ID19131.color = ( 1, 0, 0 );
        self._ID19130._ID53718 = 1;
    }
    else if ( self._ID19130._ID53718 )
    {
        self._ID19130.color = ( 1, 1, 1 );
        self._ID19131.color = ( 1, 1, 1 );
        self._ID19130._ID53718 = 0;
    }

    if ( isdefined( var_0 ) && var_0 && isdefined( var_1 ) && var_3 )
    {
        self._ID19131.alpha = 1;
        self._ID19131 fadeovertime( var_2 );
        self._ID19131.alpha = 0;
        var_4 = getdvarfloat( "cg_crosshairVerticalOffset" ) * 240;
        self._ID19131.y = 25 - int( var_4 );
    }
    else
    {
        self._ID19130.alpha = 1;
        self._ID19130 fadeovertime( var_2 );
        self._ID19130.alpha = 0;
        var_4 = getdvarfloat( "cg_crosshairVerticalOffset" ) * 240;
        self._ID19130.y = 25 - int( var_4 );
    }
}
