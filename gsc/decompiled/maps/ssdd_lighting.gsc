// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_AAC1( "trainer_start" );
}

_id_AAC1( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    switch ( var_0 )
    {
        case "trainer_start":
            var_1 = 1;
            var_2 = "trainer_start";
            var_3 = "trainer_start";
            var_0 = "trainer_start";
            break;
        case "timed_ads":
            var_1 = 1;
            var_2 = "trainer_start";
            var_3 = "trainer_start";
            var_0 = "trainer_start";
            break;
        case "bullet_penetration":
            var_1 = 1;
            var_2 = "trainer_start";
            var_3 = "trainer_start";
            var_0 = "trainer_start";
            break;
        case "frag":
            var_1 = 1;
            var_2 = "trainer_start";
            var_3 = "trainer_start";
            var_0 = "trainer_start";
            break;
        case "pit":
            var_1 = 1;
            var_2 = "trainer";
            var_3 = "trainer";
            var_0 = "trainer";
            break;
        case "course":
            var_1 = 1;
            var_2 = "trainer_pit";
            var_3 = "trainer_pit";
            var_0 = "trainer_pit";
            break;
        case "end":
            var_1 = 1;
            var_2 = "trainer_start";
            var_3 = "trainer_start";
            var_0 = "trainer_start";
            break;
        default:
            var_1 = 1;
            var_2 = "trainer";
            var_3 = "trainer";
            var_0 = "trainer";
            break;
    }

    maps\_utility::set_vision_set( var_2, var_1 );
    maps\_utility::fog_set_changes( var_3, var_1 );
    level.player maps\_utility::_id_BF21( var_0 );
    level.player _meth_849F( "trainer", var_1 );
}
