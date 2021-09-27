// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID616()
{
    _ID42231::_ID10505( "toy_generator", "tag_bounce", 75, undefined, 32, "no_melee" );
    _ID42231::_ID10544( 15 );
    _ID42231::_ID10531( "tag_fx2", "fx/smoke/generator_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 75, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    _ID42231::_ID10531( "tag_fx4", "fx/explosions/generator_spark_runner", 0.9 );
    _ID42231::_ID10531( "tag_fx3", "fx/explosions/generator_spark_runner", 0.6123 );
    _ID42231::_ID10532( "generator_spark_loop" );
    _ID42231::_ID10528( 24, 0.2, 64, "allies" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 5, "no_melee" );
    _ID42231::_ID10517( "tag_fx", "fx/explosions/generator_explosion", 1 );
    _ID42231::_ID10517( "tag_fx", "fx/fire/generator_des_fire", 1 );
    _ID42231::_ID10541( "generator01_explode" );
    _ID42231::_ID10512( 7000, 8000, 128, 16, 50 );
    _ID42231::_ID10493( %generator_explode, #animtree, "setanimknob", undefined, undefined, "generator_explode" );
    _ID42231::_ID10548( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}
