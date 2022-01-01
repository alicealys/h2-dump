// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID32363();
    _ID49155( "arcadia" );
    _ID42407::_ID49346( "arcadia" );
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID49155( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "arcadia":
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "street":
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "checkpoint":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "golf":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "crash":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "house":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "house2":
            var_1 = 2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        case "secondstreet":
            var_1 = 2.2;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
        default:
            var_1 = 1;
            var_2 = "arcadia";
            var_3 = "arcadia";
            var_0 = "arcadia";
            break;
    }

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level._ID794 _ID42407::_ID48929( var_0 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
}
