// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::dog_jump_up( 52.0, 5 );
    else if ( self.type == "civilian" )
        _id_C84B();
    else
        low_wall_human();
}

#using_animtree("generic_human");

low_wall_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_stepup_52;
    var_0["traverseHeight"] = 52.0;
    var_0["traverseSound"] = "npc_step_up_52";
    animscripts\traverse\shared::dotraverse( var_0 );
}

_id_C84B()
{
    var_0 = [ %h2_civilian_traverse_01, %h2_civilian_traverse_02, %h2_civilian_traverse_03, %h2_civilian_traverse_04 ];
    var_1 = [ 4, 4, 4, 1 ];
    var_1 = common_scripts\utility::get_cumulative_weights( var_1 );
    var_2 = [];
    var_2["traverseAnim"] = common_scripts\utility::choose_from_weighted_array( var_0, var_1 );
    var_2["traverseHeight"] = 52.0;
    var_2["traverseSound"] = "npc_step_up_52";
    animscripts\traverse\shared::dotraverse( var_2 );
}
