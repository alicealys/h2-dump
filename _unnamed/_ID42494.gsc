// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34619( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "oneshot";
    var_7 = undefined;
    var_8 = "3d";
    return _ID34735( var_0, var_6, var_7, var_8, var_1, var_2, var_3, var_4, var_5 );
}

_ID34609( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "oneshot";
    var_7 = var_1;
    var_8 = "3d";
    return _ID34735( var_0, var_6, var_7, var_8, var_2, var_3, var_4, var_5 );
}

_ID34606( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "oneshot";
    var_6 = undefined;
    var_7 = "2d";
    return _ID34735( var_0, var_5, var_6, var_7, var_1, var_2, var_3, var_4 );
}

_ID34629( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "loop";
    var_7 = undefined;
    var_8 = "3d";
    return _ID34735( var_0, var_6, var_7, var_8, var_1, var_2, var_3, var_4, var_5 );
}

_ID34627( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = "loop";
    var_7 = var_1;
    var_8 = "3d";
    return _ID34735( var_0, var_6, var_7, var_8, var_2, var_3, var_4, var_5 );
}

_ID34626( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "loop";
    var_6 = undefined;
    var_7 = "2d";
    return _ID34735( var_0, var_5, var_6, var_7, var_1, var_2, var_3, var_4 );
}

_ID34612( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "oneshot";
    var_9 = undefined;
    var_10 = "3d";
    return _ID34735( var_0, var_8, var_9, var_10, var_3, var_4, var_5, var_6, var_7, var_1, var_2 );
}

_ID34611( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "oneshot";
    var_9 = var_1;
    var_10 = "3d";
    return _ID34735( var_0, var_8, var_9, var_10, var_4, var_5, var_6, var_7, ( 0, 0, 0 ), var_2, var_3 );
}

_ID34610( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = "oneshot";
    var_8 = undefined;
    var_9 = "2d";
    return _ID34735( var_0, var_7, var_8, var_9, var_3, var_4, var_5, var_6, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34616( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "loop";
    var_9 = undefined;
    var_10 = "3d";
    return _ID34735( var_0, var_8, var_9, var_10, var_3, var_4, var_5, var_6, var_7, var_1, var_2 );
}

_ID34615( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "loop";
    var_9 = var_3;
    var_10 = "3d";
    return _ID34735( var_0, var_8, var_9, var_10, var_4, var_5, var_6, var_7, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34614( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = "loop";
    var_8 = undefined;
    var_9 = "2d";
    return _ID34735( var_0, var_7, var_8, var_9, var_3, var_4, var_5, var_6, ( 0, 0, 0 ), var_1, var_2 );
}

_ID34632( var_0 )
{

}

_ID34735( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_12 = var_3 == "3d" && !isdefined( var_2 );
    var_13 = self;

    if ( !var_12 )
        var_13 = level._ID794;

    if ( !isdefined( var_13 ) )
        return;

    var_14 = var_13._ID740;

    if ( isdefined( var_2 ) )
        var_14 = var_2;

    var_15 = spawn( "script_origin", var_14 );
    var_13 thread _ID34740( var_0, var_1, var_12, var_2, var_3, var_15, var_4, var_5, var_6, var_7, var_8, var_9, var_10 );
    return var_15;
}

_ID34740( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    var_13 = self;
    var_14 = "sndx_play_alias_" + _ID42475::_ID34587();
    level endon( var_14 );
    var_5 endon( "death" );
    var_6 = _ID42463::_ID3891( undefined, var_6 );
    var_7 = _ID42463::_ID3891( 0.0, var_7 );
    var_8 = _ID42463::_ID3891( 0.1, var_8 );
    var_9 = _ID42463::_ID3891( 1.0, var_9 );
    var_10 = _ID42463::_ID3891( ( 0, 0, 0 ), var_10 );
    var_11 = _ID42463::_ID3891( 0, var_11 );
    var_12 = _ID42463::_ID3891( 0, var_12 );

    if ( var_2 )
    {
        var_15 = "tag_origin";

        if ( isdefined( var_13._ID669 ) || var_13._ID669 != "" || var_13 _meth_844f( var_15 ) < 0 )
            var_15 = "";

        var_5 linkto( var_13, var_15, var_10, ( 0, 0, 0 ) );
        var_5 thread _ID34737( var_8, var_14, var_13 );
    }

    if ( var_11 > 0 )
    {
        if ( var_12 )
            _ID42463::_ID4247( var_11 );
        else
            wait(var_11);
    }

    if ( var_1 == "oneshot" )
    {
        var_16 = "sounddone";
        var_17 = var_7;
        var_5 _ID34605( var_0, var_16, var_17 );
        var_5 thread _ID34738( 0.05, var_14, var_16 );
    }
    else
        var_5 _ID34625( var_0 );

    var_5 setvolume( 0, 0 );

    if ( isstring( var_6 ) )
        var_5 thread _ID34739( var_8, var_14, var_6 );

    var_5 setvolume( var_9, var_7 );
}

_ID34737( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    var_2 waittill( "death" );
    var_3 thread _ID34736( var_0, var_1 );
}

_ID34738( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    var_3 waittill( var_2 );
    var_3 thread _ID34736( undefined, var_1 );
}

_ID34739( var_0, var_1, var_2 )
{
    level endon( var_1 );
    self endon( "death" );
    var_3 = self;
    level waittill( var_2 );
    var_3 thread _ID34736( var_0, var_1 );
}

_ID34736( var_0, var_1 )
{
    level notify( var_1 );
    var_2 = self;

    if ( isdefined( var_2 ) )
    {
        if ( isdefined( var_0 ) )
        {
            var_2 setvolume( 0, var_0 );
            wait(var_0);
            waitframe;
        }

        if ( isdefined( var_2 ) )
            var_2 delete();
    }
}

_ID34605( var_0, var_1, var_2 )
{
    if ( soundexists( var_0 ) )
    {
        self._ID17491 = _ID42475::_ID34587();
        self._ID34565 = 1;
        var_1 = _ID42463::_ID3891( undefined, var_1 );
        var_2 = _ID42463::_ID3891( 0, var_2 );
        self playsound( var_0, var_1, 0, var_2 );
    }
    else
    {

    }
}

_ID34625( var_0 )
{
    if ( soundexists( var_0 ) )
    {
        if ( !isdefined( self._ID34564 ) )
        {
            self playloopsound( var_0 );
            self._ID17491 = _ID42475::_ID34587();
            self._ID34564 = 1;
        }
        else
        {

        }
    }
    else
    {

    }
}

_ID34683()
{
    if ( isdefined( self._ID34565 ) )
    {
        self._ID34565 = undefined;
        self playrumbleonentity();
    }
    else if ( isdefined( self._ID34564 ) )
    {
        self._ID34564 = undefined;
        self stopsounds();
        self notify( "sounddone" );
    }
}

_ID34608( var_0, var_1, var_2, var_3 )
{
    if ( soundexists( var_0 ) )
    {
        var_4 = 0.1;
        var_5 = spawn( "script_origin", var_1 );
        var_5 playloopsound( var_0 );
        level waittill( var_2 );

        if ( isdefined( var_3 ) )
            var_4 = var_3;

        if ( isdefined( var_5 ) )
        {
            var_5 setvolume( 0, var_4 );
            wait 0.05;
            var_5 delete();
            return;
        }
    }
    else
    {

    }
}
