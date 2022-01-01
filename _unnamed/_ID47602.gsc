// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID46704()
{
    waitframe;
    var_0 = getentarray( "caged_chicken", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID46729 );
}

_ID46729()
{
    var_0 = _ID42407::_ID35028( "chicken" );
    thread _ID42259::_ID3111( var_0, "cage_freakout" );
    var_1 = var_0 _ID42407::_ID16120( "cage_freakout" );
    var_2 = randomfloatrange( 0, 1.0 );
    var_0 setanimtime( var_1, var_2 );

    for (;;)
    {
        var_0 playsound( "animal_chicken_idle", "sounddone" );
        var_0 waittill( "sounddone" );
    }
}
