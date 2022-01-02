// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID52306( "airport_start" );
}

_ID52306( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "airport":
            var_1 = 1;
            var_2 = "airport";
            var_3 = "airport";
            var_0 = "airport";
            break;
        case "airport_start":
            var_1 = 1;
            var_2 = "airport_start";
            var_3 = "airport_start";
            var_0 = "airport_start";
            break;
        case "airport_ending":
            var_1 = 1;
            var_2 = "airport_ending";
            var_3 = "airport_ending";
            var_0 = "airport_ending";
            break;
        default:
            var_1 = 1;
            var_2 = "airport";
            var_3 = "airport";
            var_0 = "airport";
            break;
    }

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level.player _ID42407::_ID48929( var_0 );
}
