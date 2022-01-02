// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID15731()
{
    return anim._ID7698[randomint( anim._ID7698.size )];
}

main()
{
    var_0 = _ID42407::_ID14506();

    if ( var_0 <= 0 )
        return;

    animscripts\flashed::_ID14505( _ID15731(), var_0 );
}
