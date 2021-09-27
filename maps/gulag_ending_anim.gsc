// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48239()
{
    _unknown_000A();
    _unknown_015D();
    _unknown_01A7();
    _unknown_0215();
    _unknown_019A();
    _unknown_022A();
}
#using_animtree("generic_human");

_ID44936()
{
    level._ID30895["generic"]["run_root"] = %combatrun_forward;
    level._ID30895["generic"]["reaction_180"] = %run_reaction_180;
    level._ID30895["generic"]["run_180"] = %run_turn_180;
    level._ID30895["generic"]["run_duck"] = %run_react_duck;
    level._ID30895["generic"]["run_flinch"] = %run_react_flinch;
    level._ID30895["generic"]["run_stumble"] = %run_react_stumble;
    level._ID30895["generic"]["walk_and_run_loops"] = %walk_and_run_loops;
    level._ID30895["generic"]["slide_across_car"] = %slide_across_car;
    level._ID30895["stumble_baddie"]["stumble"] = %dc_burning_bunker_stumble;
    level._ID30895["stumble_baddie"]["idle"][0] = %h2_dc_burning_bunker_stumble_idle;
    level._ID30895["price"]["price_breach"] = %h2_gulag_rescuea_price;
    level._ID30895["chokey"]["price_breach"] = %h2_gulag_rescuea_enemy;
    level._ID30895["chokey"]["price_rescue"] = %h2_gulag_rescueb_enemy;
    level._ID30895["price"]["price_rescue"] = %h2_gulag_rescueb_price;
    level._ID30895["soap"]["price_rescue"] = %h2_gulag_rescueb_soap;
    level._ID30895["redshirt"]["price_rescue"] = %h2_gulag_rescueb_soldier;
    level._ID30895["old_soap"]["price_rescue"] = %gulag_rescueb_soldier1_reshoot;
    level._ID30895["price"]["price_rescue_intro"] = %gulag_rescueb_price_intro;
    _ID42259::_ID2058( "price", "bang", ::_unknown_0277, "price_rescue" );
    _ID42259::_ID2066( "price", "bang", "explosion", "price_rescue" );
    _ID42259::_ID2058( "price", "scn_gulag_evac_jet_attack_incomming", ::_unknown_032E, "price_rescue" );
    level._ID30895["soap"]["cafe_entrance"] = %h2_gulag_cafeteria_soap;
    level._ID30895["price"]["cafe_entrance"] = %h2_gulag_cafeteria_price;
    level._ID30895["redshirt"]["cafe_entrance"] = %h2_gulag_cafeteria_soldier;
    _ID42259::_ID2062( "redshirt", "dialog", "cafe_entrance", "gulag_wrm_deadend" );
    _ID42259::_ID2062( "soap", "dialog", "cafe_entrance", "gulag_cmt_whereareyou" );
    level._ID30895["redshirt"]["evac"] = %h2_gulag_end_evac_soldier;
    level._ID30895["price"]["evac"] = %h2_gulag_end_evac_price;
    level._ID30895["soap"]["evac"] = %h2_gulag_end_evac_soap;
    _ID42259::_ID2062( "price", "dialog", "evac", "gulag_pri_doitfast" );
    level._ID30895["generic"]["gundrop_death"] = %death_explosion_stand_b_v1;
    _ID42259::_ID2058( "soap", "fire", ::_unknown_037D, "evac" );
    _ID42259::_ID2058( "soap", "player", ::_unknown_03B3, "evac" );
    level._ID30895["soap"]["escape"] = %h2_gulag_escapesequence_soap;
    level._ID30895["price"]["escape"] = %h2_gulag_escapesequence_price;
    level._ID30895["redshirt"]["escape"] = %h2_gulag_escapesequence_worm;
    _ID42259::_ID2062( "soap", "dialog", "escape", "gulag_cmt_gogogo1" );
    _ID42259::_ID2062( "soap", "dialog", "escape", "gulag_cmt_ready2jump" );
    _ID42259::_ID2062( "soap", "dialog", "escape", "gulag_cmt_anotherway" );
    _ID42259::_ID2062( "soap", "dialog", "escape", "gulag_wrm_thisway" );
}

_ID46736( var_0 )
{
    wait 0.1;
    _ID42237::_ID14402( "background_explosion" );
    level._ID794 thread _ID42237::_ID27000( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
    thread maps\gulag_aud::_ID44942();
    _ID42234::_ID13611( "background_explosion" );
}

_ID54050( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = var_0 _meth_818C( "tag_laser" );
    var_1._ID65 = var_0 _meth_818D( "tag_laser" );
    var_2 = _func_11F( var_1._ID65 );
    var_3 = _ID42237::_ID16299( "flare_start_gulag" );
    _func_157( var_3, var_1, "tag_origin" );
    var_4 = _ID42237::_ID16299( "flare_gulag" );
    _func_157( var_4, var_1, "tag_origin" );
    var_1 thread _ID42407::_ID27080( "scn_evac_soap_fires_flare", "tag_origin" );
    var_1 _meth_82B8( var_1._ID740 + var_2 * 2000, 3, 0, 0 );
    wait 4;
    var_1 _meth_80B7();
}

_ID53196( var_0 )
{
    var_0._ID53196 = 1;
    var_1 = _ID42407::_ID16268( "player_uses_rig" );
    var_1 _ID42237::_ID38863();
    _ID42237::_ID14402( "player_evac" );

    if ( _ID42237::_ID14385( "player_uses_rig" ) )
        return;

    wait 2;
    thread maps\gulag_ending_code::_ID46033( 0 );
    var_2 = 0.4;
    var_3 = 0.1;

    for ( var_4 = 0; var_4 < 25; var_4++ )
    {
        _func_192( var_2, var_3, level._ID794._ID740, 5000 );
        wait(var_3);
        var_2 += 0.01;
    }
}
#using_animtree("player");

_ID49466()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewbody_udt";
    level._ID30895["player_rig"]["evac"] = %h2_gulag_end_buried_player;
    level._ID30895["player_rig"]["fly_away"] = %h2_gulag_end_evac_player;
    level._ID30895["player_rig"]["hookup"] = %h2_gulag_end_evac_player_hookup;
    level._ID30895["player_rig"]["idle"][0] = %h2_gulag_end_evac_player_idle;
    level._ID30895["player_rig"]["price_breach"] = %h2_gulag_rescuea_player;
    level._ID30895["player_rig"]["price_rescue"] = %h2_gulag_rescueb_player;
    _ID42259::_ID2058( "player_rig", "black", maps\gulag_ending_code::_ID5262 );
}

_ID46829()
{
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_udt";
    level._ID30895["worldbody"]["player_downed"] = %h2_gulag_cafeteria_playerdowned;
}

_ID46178( var_0 )
{
    _ID42237::_ID27077( "scn_gulag_evac_jet_attack_incomming", ( -4715.05, 1620.07, 461.188 ) );
}
#using_animtree("script_model");

_ID52619()
{
    level._ID30900["rock"] = #animtree;
    level._ID30904["rock"] = "gulag_rock";
    level._ID30895["rock"]["evac"] = %h2_gulag_prop_rock;
    level._ID30900["rescue_chair"] = #animtree;
    level._ID30904["rescue_chair"] = "com_folding_chair";
    level._ID30895["rescue_chair"]["rescuea_chair"] = %h2_gulag_rescuea_chair;
    level._ID30895["rescue_chair"]["rescueb_chair"] = %h2_gulag_rescueb_chair;
    level._ID30900["ending_rope1"] = #animtree;
    level._ID30904["ending_rope1"] = "gulag_escape_rope_100ft_part1";
    level._ID30895["ending_rope1"]["evac"] = %h2_gulag_end_rope;
    level._ID30900["ending_rope"] = #animtree;
    level._ID30904["ending_rope"] = "gulag_escape_rope_100ft";
    level._ID30895["ending_rope"]["evac"] = %gulag_escape_rope;
    level._ID30900["player_carabiner"] = #animtree;
    level._ID30904["player_carabiner"] = "h2_weapon_carabiner";
    level._ID30895["player_carabiner"]["hookup"] = %h2_gulag_end_carabiner;
    level._ID30900["1911"] = #animtree;
    level._ID30904["1911"] = "h1_weapon_colt1911_black";
    level._ID30895["1911"]["price_rescue"] = %h2_gulag_rescueb_pistol;
    level._ID30900["strangle_chain"] = #animtree;
    level._ID30895["strangle_chain"]["escape"] = %h2_gulag_escape_chains;
    level._ID30895["strangle_chain"]["cafe_entrance"] = %h2_gulag_cafeteria_chains;
    level._ID30895["strangle_chain"]["evac"] = %h2_gulag_end_chain;
}
#using_animtree("vehicles");

_ID53363()
{
    level._ID30900["pavelow"] = #animtree;
    level._ID30904["pavelow"] = "vehicle_pavelow";
    level._ID30895["pavelow"]["evac"] = %h2_gulag_end_pavelow;
}
#using_animtree("script_model");

_ID46789()
{
    level._ID30900["crate"] = #animtree;
    level._ID30895["crate"]["crate_falling"] = %h2_gulag_escapesequence_plastic_case;
    level._ID30904["crate"] = "com_plasticcase_beige_big_animated";
    level._ID30900["barrel"] = #animtree;
    level._ID30895["barrel"]["barrel_falling"] = %h2_gulag_escapesequence_barrel;
    level._ID30904["barrel"] = "com_barrel_biohazard_rust_animated";
}
