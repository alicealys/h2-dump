// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID32363();
    _ID53193( "favela" );
    setsaveddvar( "r_aoDiminish", 0 );
}

_ID32363()
{
    if ( _func_242() )
        setsaveddvar( "r_disablelightsets", 0 );
}

_ID53193( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "favela_chase":
            var_1 = 6;
            var_2 = "favela_chase";
            var_3 = "favela_chase";
            var_0 = "favela";
            break;
        case "favela_torture":
            var_1 = 1;
            var_2 = "favela_torture";
            var_3 = "favela_torture";
            var_0 = "favela_shantyview";
            break;
        case "favela_alleys":
            var_1 = 1;
            var_2 = "favela_alleys";
            var_3 = "favela_alleys";
            var_0 = "favela";
            break;
        case "favela_shanty":
            var_1 = 3;
            var_2 = "favela_shanty";
            var_3 = "favela_shanty";
            var_0 = "favela_shanty";
            break;
        case "favela_hill":
            var_1 = 1;
            var_2 = "favela_hill";
            var_3 = "favela_hill";
            var_0 = "favela";
            break;
        case "favela_ending":
            var_1 = 1;
            var_2 = "favela_ending";
            var_3 = "favela_ending";
            var_0 = "favela";
            break;
        default:
            var_1 = 1;
            var_2 = "favela";
            var_3 = "favela";
            var_0 = "favela";
            break;
    }

    _ID42407::_ID32515( var_2, var_1 );
    _ID42407::_ID14689( var_3, var_1 );
    level.player _ID42407::_ID48929( var_0 );
    level.player _meth_849f( "favela", var_1 );
}
