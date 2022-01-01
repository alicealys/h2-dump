// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID9117()
{
    var_0 = [];
    var_0[var_0.size] = "phone";
    var_0[var_0.size] = "smoke";
    var_0[var_0.size] = "lean_smoke";
    var_0[var_0.size] = "coffee";
    var_0[var_0.size] = "sleep";
    var_0[var_0.size] = "sit_load_ak";
    var_0[var_0.size] = "smoke_balcony";

    if ( isdefined( level._ID19307 ) )
        var_0 = [[ level._ID19307 ]]( var_0 );

    return var_0;
}

_ID19317()
{
    level._ID16935["_idle_call_idle_func"] = ::_ID19302;
}

_ID19302()
{
    waitframe;

    if ( !isalive( self ) )
        return;

    var_0 = undefined;

    if ( !isdefined( self._ID1191 ) )
        var_0 = self;
    else
    {
        var_0 = getnode( self._ID1191, "targetname" );
        var_1 = getent( self._ID1191, "targetname" );
        var_2 = _ID42237::_ID16638( self._ID1191, "targetname" );
        var_3 = undefined;

        if ( isdefined( var_0 ) )
            var_3 = ::_ID15856;
        else if ( isdefined( var_1 ) )
            var_3 = ::_ID15700;
        else if ( isdefined( var_2 ) )
            var_3 = _ID42237::_ID16638;

        for ( var_0 = [[ var_3 ]]( self._ID1191, "targetname" ); isdefined( var_0._ID1191 ); var_0 = [[ var_3 ]]( var_0._ID1191, "targetname" ) )
        {

        }
    }

    var_4 = var_0._ID31039;

    if ( _ID42338::_ID51421() && ( isdefined( var_0._ID916 ) || isdefined( var_0._ID31197 ) ) )
        return;

    if ( !isdefined( var_4 ) )
        var_4 = "random";

    if ( !_ID7347( var_4, var_0 ) )
        return;

    if ( var_4 == "random" )
    {
        var_4 = _ID9176();
        var_0._ID31039 = var_4;
    }

    var_5 = var_4 + "_idle";
    var_6 = var_4 + "_into_idle";
    var_7 = var_4 + "_react";
    var_8 = var_4 + "_death";
    thread _ID19320( var_0, var_6, var_5, var_7, var_8 );
}

_ID19322( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stop_idle_proc" );

    if ( isdefined( self._ID1644 ) )
    {
        level _ID42407::_ID1985( _ID42237::_ID14413, _ID42389::_ID36321() );

        if ( isdefined( self._ID1644._ID28153._ID8751 ) )
        {
            level _ID42407::_ID1985( _ID42237::_ID14413, _ID42389::_ID36320() );
            _ID42407::_ID1985( _ID42407::_ID13027, "_stealth_saw_corpse" );
        }
    }
    else
        _ID42407::_ID1985( _ID42407::_ID41116, "enemy" );

    _ID42407::_ID1890( _ID42407::_ID31877, "stop_idle_proc" );
    thread _ID42407::_ID11232();

    if ( isdefined( self._ID31391 ) )
        self waittill( "_patrol_reached_path_end" );
    else
        var_0 _ID42259::_ID3027( self, var_1 );
}

_ID11208( var_0 )
{
    if ( isdefined( var_0 ) && isdefined( level._ID30895["generic"][var_0] ) )
    {
        var_1 = level._ID30895["generic"][var_0];
        self._ID1365 = "gravity";
        self._ID1651 = self;
        self._ID1364 = var_0;
        self._ID1366 = "generic";
        self._ID1403 = 0;
        self animcustom( animscripts\animmode::_ID616 );
        var_2 = 0.0;

        if ( isdefined( self._ID26395 ) && isdefined( level._ID30895["generic"][self._ID26395] ) )
        {
            var_3 = self getanimtime( level._ID30895["generic"][self._ID26395] );

            if ( var_3 > 0.666667 )
                var_2 = 3 * ( var_3 - 0.666667 );
            else if ( var_3 > 0.333333 )
                var_2 = 3 * ( var_3 - 0.333333 );
            else
                var_2 = 3 * var_3;

            self setanimtime( var_1, var_2 );
        }

        var_4 = getanimlength( var_1 );
        var_5 = ( 1.0 - var_2 ) * var_4;
        wait(var_5);
    }
}

_ID19320( var_0, var_1, var_2, var_3, var_4 )
{
    self._ID49 = 1;
    self endon( "death" );
    var_5 = undefined;
    var_6 = undefined;

    if ( isdefined( self._ID31253 ) )
    {
        self endon( "stop_idle_proc" );

        if ( isdefined( var_1 ) && isdefined( level._ID30895["generic"][var_1] ) )
            _ID19322( var_0, var_1 );
        else
            _ID19322( var_0, var_2 );
    }

    if ( isdefined( self._ID31253 ) )
    {
        self._ID31039 = var_0._ID31039;
        var_0 = self;
    }

    if ( var_0._ID31039 == "sit_load_ak" )
    {
        var_7 = _ID42407::_ID35028( "chair_ak" );
        self._ID18156 = 1;
        self._ID3057 = _ID42407::_ID22802( var_7 );
        var_0 thread _ID42259::_ID3018( var_7, "sit_load_ak_react" );

        if ( isdefined( level._ID30895["chair_ak"]["pain_or_death_react"] ) )
        {
            var_5 = "pain_or_death_react";
            var_6 = 1.1;
        }
    }

    if ( var_0._ID31039 == "lean_smoke" || var_0._ID31039 == "smoke_balcony" )
        thread _ID42358::_ID3551();

    if ( var_0._ID31039 == "smoke_balcony" )
        thread _ID35362( var_0, var_4 );

    if ( var_0._ID31039 == "sleep" )
    {
        var_7 = _ID42407::_ID35028( "chair" );
        self._ID18156 = 1;
        self._ID3057 = _ID42407::_ID22802( var_7 );
        var_0 thread _ID42259::_ID3018( var_7, "sleep_react" );
        thread _ID29062();

        if ( isdefined( level._ID30895["chair"]["pain_or_death_react"] ) )
            var_5 = "pain_or_death_react";
    }

    if ( isdefined( level._ID19321 ) )
        self [[ level._ID19321 ]]( var_0, var_2, var_3, var_4 );

    var_0 _ID42407::_ID916();
    self._ID9813 = level._ID30895["generic"][var_4];

    if ( isdefined( self._ID1644 ) )
    {
        self._ID1644._ID9995 = "idling";
        var_8 = undefined;

        if ( var_0._ID31039 == "smoke_balcony" )
            var_8 = 1;

        _ID11208( var_1 );

        if ( isdefined( var_5 ) )
            thread _ID51496( var_0, var_5, [ "death", "pain" ], var_6 );

        var_0 _ID42389::_ID36236( self, var_2, var_3, undefined, var_8 );
        var_0 _ID42237::_ID41098( "stop_loop", "stop_idle_proc" );
        _ID42407::_ID7854();
        return;
    }
    else
    {
        _ID11208( var_1 );
        var_9 = "stop_loop";
        var_0 thread _ID42259::_ID3025( self, var_2, var_9 );
        thread _ID3165( var_0, var_3 );
        thread _ID29061( var_0, var_9, var_3 );
    }
}

_ID29062()
{
    self endon( "death" );
    self._ID507 = 1;
    _ID29063();
    self._ID507 = 0;
}

_ID29063()
{
    self endon( "death" );

    if ( isdefined( self._ID1644 ) )
    {
        thread _ID42389::_ID36301();
        self endon( "stealth_enemy_endon_alert" );
    }

    var_0 = 70;
    _ID42237::_ID3350( level._ID805, ::_ID29064, self, var_0 );
    self waittill( "_idle_reaction" );
}

_ID29064( var_0, var_1 )
{
    var_0 endon( "death" );
    var_0 endon( "_idle_reaction" );
    self endon( "death" );
    var_0 endon( "enemy" );
    var_2 = var_1 * var_1;

    for (;;)
    {
        while ( distancesquared( self._ID740, var_0._ID740 ) > var_2 )
            wait 0.1;

        var_0._ID507 = 0;

        while ( distancesquared( self._ID740, var_0._ID740 ) <= var_2 )
            wait 0.1;

        var_0._ID507 = 1;
    }
}

_ID29061( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    thread _ID29065( "enemy" );
    thread _ID29065( "stop_idle_proc" );
    thread _ID29065( "react" );
    thread _ID29065( "doFlashBanged" );
    thread _ID29065( "explode" );
    var_4 = undefined;
    self waittill( "_idle_reaction",  var_4  );
    _ID42407::_ID7854();
    var_0 notify( var_1 );

    if ( isdefined( self._ID3057 ) )
    {
        self._ID3058 = 1;
        self._ID54288 = gettime();
        var_0 thread _ID42259::_ID3099( self._ID3057, var_2 );
    }

    if ( var_4 == "stop_idle_proc" )
    {
        _ID42407::_ID3136();
        return;
    }

    if ( var_4 != "doFlashBanged" )
    {
        if ( isdefined( var_3 ) || isdefined( self._ID18156 ) )
            var_0 _ID42259::_ID3020( self, var_2, var_3 );
        else
            var_0 _ID42259::_ID3021( self, "gravity", var_2 );
    }
}

_ID29065( var_0 )
{
    self waittill( var_0 );
    self notify( "_idle_reaction",  var_0  );
}

_ID35362( var_0, var_1 )
{
    thread _ID42407::_ID10229();
    thread _ID7845( var_0 );
    self waittill( "damage" );

    if ( isdefined( self._ID9813 ) )
    {
        if ( isdefined( self._ID1644 ) )
            _ID42389::_ID10969();

        var_0 _ID42259::_ID3020( self, var_1 );
        self delete();
    }
}

_ID7845( var_0 )
{
    self endon( "death" );

    if ( !isdefined( self._ID1644 ) )
        self waittill( "_idle_reaction" );
    else
        var_0 _ID42237::_ID41098( "stop_loop", "stop_idle_proc" );

    _ID42407::_ID7854();

    if ( isdefined( self._ID22746 ) && self._ID22746 )
        _ID42407::_ID36519();
}

_ID3165( var_0, var_1 )
{
    if ( !isdefined( self._ID3057 ) )
        return;

    var_2 = self._ID3057;
    self waittill( "death" );

    if ( isdefined( self._ID3058 ) )
        return;

    var_0 thread _ID42259::_ID3099( var_2, var_1 );
}

_ID51496( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( self._ID3057 ) )
        return;

    var_4 = self._ID3057;

    if ( isarray( var_2 ) )
        _ID42237::_ID53925( var_2 );
    else
        self waittill( var_2 );

    if ( isdefined( self ) )
    {
        if ( isdefined( self._ID3058 ) )
        {
            if ( !isdefined( var_3 ) || !isdefined( self._ID54288 ) )
                return;

            if ( gettime() > self._ID54288 + 1000 * var_3 )
                return;
        }

        self._ID3058 = 1;
    }

    var_0 thread _ID42259::_ID3099( var_4, var_1 );
}

_ID9176()
{
    var_0 = _ID9117();
    return var_0[randomint( 2 )];
}

_ID7347( var_0, var_1 )
{
    var_2 = _ID9117();

    if ( var_0 == "random" )
    {
        var_3 = [];

        for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        {
            if ( !isdefined( level._ID30895["generic"][var_2[var_4] + "_react"] ) )
                var_3[var_3.size] = var_2[var_4];
        }

        if ( !var_3.size )
            return 1;

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        {

        }

        return 0;
    }

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( var_2[var_4] == var_0 )
        {
            if ( !isdefined( level._ID30895["generic"][var_0 + "_react"] ) )
                return 0;

            return 1;
        }
    }

    var_5 = "";

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        var_5 = var_5 + var_2[var_4] + ", ";

    var_5 += "and random.";
    return 0;
}

_ID15700( var_0, var_1 )
{
    return getent( var_0, var_1 );
}

_ID15856( var_0, var_1 )
{
    return getnode( var_0, var_1 );
}
