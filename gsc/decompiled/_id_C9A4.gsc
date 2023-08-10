// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level.tweakfile = 1;
    level.player = getentarray( "player", "classname" )[0];

    if ( _func_242() )
        _id_D2DC::main();
    else
        _id_C962::main();
}
