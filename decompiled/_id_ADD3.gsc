// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    level.tweakfile = 1;
    level.player = getentarray( "player", "classname" )[0];

    if ( _func_242() )
        _id_CE20::main();
    else
        _id_D0A0::main();
}
