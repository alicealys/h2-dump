// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID4649()
{
    if ( !_func_02F( level._ID1374._ID41964 ) )
    {
        level._ID1374._ID41964 = _func_1A5();
        level._ID1374._ID41964._ID9482 = "";
        level._ID1374._ID41964._ID41977 = [];
        level._ID1374._ID41964._ID26158 = _func_1A5();
        level._ID1374._ID41964._ID26158._ID30688 = [];
        level._ID1374._ID41964._ID26158._ID9654 = [];
        level._ID1374._ID41964._ID26158._ID23787 = [];
        level._ID1374._ID41964._ID26158._ID29927 = [];
        level._ID1374._ID41964._ID26158._ID25393 = [];
        _unknown_022B( 1 );
        _unknown_023A( 1 );
        _unknown_024A( 1 );
        _unknown_025A( 1 );
        _unknown_026A( 1 );
        _unknown_0279( 1 );
        _unknown_0288( 0 );
        _unknown_0297( 0 );
        _unknown_02A6( 0 );
        _unknown_02BA( 0 );
        level._ID1374._ID41964._ID39914 = 0;
    }

    if ( !_func_02F( level._ID1374._ID39905 ) )
        level._ID1374._ID22203 = undefined;
}

_ID4672()
{
    level._ID1374._ID41964._ID39914 = 1;
}

_ID4669( var_0, var_1, var_2 )
{
    if ( level._ID1374._ID41964._ID9482 == var_0 )
        return;
    else if ( level._ID1374._ID41964._ID9482 != "" )
        _unknown_0260( level._ID1374._ID41964._ID9482, var_1 );

    level._ID1374._ID41964._ID9482 = var_0;

    if ( _func_02F( level._ID1374._ID41964._ID41977[var_0] ) && _func_02F( level._ID1374._ID41964._ID41977[var_0]["state"] ) && level._ID1374._ID41964._ID41977[var_0]["state"] != "stopping" )
    {
        _ID42463::_ID4144( "ZONEM_start_zone(\"" + var_0 + "\") being called even though audio zone, \"" + var_0 + "\", is already started." );
        return;
    }

    var_3 = 2.0;

    if ( _func_02F( var_1 ) )
        var_3 = var_1;

    if ( !_func_02F( level._ID1374._ID41964._ID41977[var_0] ) )
    {
        var_4 = _unknown_0392( var_0 );

        if ( !_func_02F( var_4 ) )
            return;

        level._ID1374._ID41964._ID41977[var_0] = var_4;
    }

    var_4 = level._ID1374._ID41964._ID41977[var_0];
    _ID42463::_ID4145( "ZONE START: " + var_0 );
    level._ID1374._ID41964._ID41977[var_0]["state"] = "playing";
    var_5 = var_4["priority"];
    var_6 = var_4["interrupt_fade"];

    if ( _func_02F( var_4["streamed_ambience"] ) )
    {
        if ( var_4["streamed_ambience"] != "none" )
            _ID42470::_ID34393( var_4["streamed_ambience"], var_3, var_5, var_6 );
        else
            _ID42470::_ID34394( var_3 );
    }

    if ( _func_02F( var_4["dynamic_ambience"] ) )
    {
        if ( var_4["dynamic_ambience"] != "none" )
            _ID42464::_ID9675( var_4["dynamic_ambience"], 1.0 );
        else
            _ID42464::_ID9672( 1.0 );
    }

    if ( _func_02F( var_4["occlusion"] ) && !_unknown_043D() )
    {
        if ( var_4["occlusion"] != "none" )
            _ID42490::_ID34650( var_4["occlusion"] );
        else
            _ID42490::_ID34650( undefined );
    }

    if ( _func_02F( var_4["filter"] ) && !_unknown_045F() )
    {
        _ID42490::_ID34647( var_4["filter"], 0 );
        _ID42490::_ID34648( 1 );
    }

    if ( _func_02F( var_4["reverb"] ) && !_unknown_0476() )
    {
        if ( var_4["reverb"] != "none" )
            _ID42469::_ID30454( var_4["reverb"] );
        else
            _ID42469::_ID30449();
    }

    if ( _func_02F( var_4["mix"] ) && !_unknown_049A() )
    {
        if ( var_4["mix"] != "none" )
            _ID42465::_ID23812( var_4["mix"], var_4["context"] );
        else
            _ID42465::_ID23804( undefined, var_4["context"], 1.0 );
    }

    if ( _func_02F( var_4["context"] ) )
        _ID42476::_ID34518( var_4["context"] );
}

_ID4668( var_0, var_1, var_2 )
{
    var_3 = _unknown_0694( var_0, "streamed_ambience", var_1, ::_unknown_063D, var_2 );

    if ( !var_3 )
    {
        if ( !_func_02F( var_1 ) )
            var_1 = "none";

        level._ID1374._ID41964._ID26158._ID30688[var_0] = var_1;
    }
}

_ID4664( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "none";

    _unknown_06CF( var_0, "dynamic_ambience", var_1, ::_unknown_0685, var_2 );
    level._ID1374._ID41964._ID26158._ID9654[var_0] = var_1;
}

_ID4667( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "none";

    _unknown_06FB( var_0, "reverb", var_1, ::_unknown_06C5, var_2 );
    level._ID1374._ID41964._ID26158._ID29927[var_0] = var_1;
}

_ID4666( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "none";

    _unknown_0728( var_0, "occlusion", var_1, ::_unknown_06FE, var_2 );
    level._ID1374._ID41964._ID26158._ID23787[var_1] = var_1;
}

_ID4665( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "none";

    _unknown_0754( var_0, "mix", var_1, ::_unknown_0737, var_2 );
    level._ID1374._ID41964._ID26158._ID23787[var_1] = var_1;
}

_ID4671( var_0 )
{
    var_1 = 1.0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _ID42463::_ID4145( "ZONE STOP ALL" );
    var_2 = level._ID1374._ID41964._ID41977;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _unknown_0565( var_3["name"], var_1, 0 );
    }

    var_clear_2
    var_clear_0
}

_ID4670( var_0, var_1, var_2 )
{
    if ( _func_02F( level._ID1374._ID41964._ID41977[var_0] ) && _func_02F( level._ID1374._ID41964._ID41977[var_0]["state"] ) && level._ID1374._ID41964._ID41977[var_0]["state"] != "stopping" )
    {
        var_3 = 1.0;

        if ( _func_02F( var_1 ) )
            var_3 = var_1;

        var_4 = level._ID1374._ID41964._ID41977[var_0];
        var_5 = 0;

        if ( _func_02F( var_2 ) )
            var_5 = var_2;

        if ( var_5 )
            _ID42463::_ID4145( "ZONE STOP ZONE: " + var_0 );

        if ( _func_02F( var_4["streamed_ambience"] ) )
            _ID42470::_ID34395( var_4["streamed_ambience"], var_3 );

        if ( _func_02F( var_4["dynamic_ambience"] ) )
            _ID42464::_ID9676( var_4["dynamic_ambience"], var_3 );

        if ( _func_02F( var_4["mix"] ) && !_unknown_06A5() )
            _ID42465::_ID23804( var_4["mix"], var_4["context"], var_3 );

        if ( _func_02F( var_4["context"] ) )
            _ID42476::_ID34512( var_4["context"] );

        level._ID1374._ID41964._ID41977[var_0]["state"] = "stopping";
        thread _unknown_08B3( var_0, var_3 );
    }
}

_ID4638()
{
    return level._ID1374._ID41964._ID9482;
}

_ID4653( var_0 )
{
    level._ID1374._ID41964._ID9482 = var_0;
}

_ID4650( var_0, var_1, var_2 )
{

}

_ID4651( var_0 )
{

}

_ID4652( var_0 )
{

}

_ID4661( var_0 )
{
    level._ID1374._ID41964._ID26158._ID28803 = var_0;
}

_ID4646()
{
    return level._ID1374._ID41964._ID26158._ID28803;
}

_ID4654( var_0 )
{
    level._ID1374._ID41964._ID26158._ID9656 = var_0;
}

_ID4639()
{
    return level._ID1374._ID41964._ID26158._ID9656;
}

_ID4658( var_0 )
{
    level._ID1374._ID41964._ID26158._ID23790 = var_0;
}

_ID4643()
{
    return level._ID1374._ID41964._ID26158._ID23790;
}

_ID4663( var_0 )
{
    level._ID1374._ID41964._ID26158._ID29939 = var_0;
}

_ID4648()
{
    return level._ID1374._ID41964._ID26158._ID29939;
}

_ID4656( var_0 )
{
    level._ID1374._ID41964._ID26158._ID14025 = var_0;
}

_ID4641()
{
    return level._ID1374._ID41964._ID26158._ID14025;
}

_ID4660( var_0 )
{
    level._ID1374._ID41964._ID26158._ID25397 = var_0;
}

_ID4645()
{
    return level._ID1374._ID41964._ID26158._ID25397;
}

_ID4657( var_0 )
{
    level._ID1374._ID41964._ID26158._ID23788 = var_0;
}

_ID4642()
{
    return level._ID1374._ID41964._ID26158._ID23788;
}

_ID4662( var_0 )
{
    level._ID1374._ID41964._ID26158._ID29938 = var_0;
}

_ID4647()
{
    return level._ID1374._ID41964._ID26158._ID29938;
}

_ID4655( var_0 )
{
    level._ID1374._ID41964._ID26158._ID14024 = var_0;
}

_ID4640()
{
    return _func_02F( level._ID24600 ) && level._ID24600 || level._ID1374._ID41964._ID26158._ID14024;
}

_ID4659( var_0 )
{
    level._ID1374._ID41964._ID26158._ID25396 = var_0;
}

_ID4644()
{
    return level._ID1374._ID41964._ID26158._ID25396;
}

_ID4680( var_0 )
{
    if ( _func_02F( level._ID1374._ID41964._ID41977[var_0] ) )
        return;

    if ( !_func_02F( level._ID1374._ID41964._ID28450 ) )
        level._ID1374._ID41964._ID28450 = [];

    var_1 = [];

    if ( _func_02F( level._ID1374._ID41964._ID28450[var_0] ) )
        var_1 = level._ID1374._ID41964._ID28450[var_0];
    else
        var_1 = _unknown_0973( var_0, 1 );

    if ( !_func_02F( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID41964._ID28450[var_0] = var_1;
    var_2 = 0;

    if ( _unknown_086A() && _func_02F( level._ID1374._ID41964._ID26158._ID30688[var_0] ) )
    {
        if ( level._ID1374._ID41964._ID26158._ID30688[var_0] == "none" )
            var_1["streamed_ambience"] = undefined;
        else
            var_1["streamed_ambience"] = level._ID1374._ID41964._ID26158._ID30688[var_0];

        var_2 = 1;
        level._ID1374._ID41964._ID26158._ID30688[var_0] = undefined;
    }

    if ( _unknown_08CA() && _func_02F( level._ID1374._ID41964._ID26158._ID9654[var_0] ) )
    {
        if ( level._ID1374._ID41964._ID26158._ID9654[var_0] == "none" )
            var_1["dynamic_ambience"] = undefined;
        else
            var_1["dynamic_ambience"] = level._ID1374._ID41964._ID26158._ID9654[var_0];

        var_2 = 1;
        level._ID1374._ID41964._ID26158._ID9654[var_0] = undefined;
    }

    if ( _unknown_0934() && _func_02F( level._ID1374._ID41964._ID26158._ID29927[var_0] ) )
    {
        if ( level._ID1374._ID41964._ID26158._ID29927[var_0] == "none" )
            var_1["reverb"] = undefined;
        else
            var_1["reverb"] = level._ID1374._ID41964._ID26158._ID29927[var_0];

        var_2 = 1;
        level._ID1374._ID41964._ID26158._ID29927[var_0] = undefined;
    }

    if ( _unknown_099E() && _func_02F( level._ID1374._ID41964._ID26158._ID25393[var_0] ) )
    {
        if ( level._ID1374._ID41964._ID26158._ID25393[var_0] == "none" )
            var_1["occlusion"] = undefined;
        else
            var_1["occlusion"] = level._ID1374._ID41964._ID26158._ID25393[var_0];

        var_2 = 1;
        level._ID1374._ID41964._ID26158._ID25393[var_0] = undefined;
    }

    if ( _unknown_09EA() && _func_02F( level._ID1374._ID41964._ID26158._ID23787[var_0] ) )
    {
        if ( level._ID1374._ID41964._ID26158._ID23787[var_0] == "none" )
            var_1["mix"] = undefined;
        else
            var_1["mix"] = level._ID1374._ID41964._ID26158._ID23787[var_0];

        var_2 = 1;
        level._ID1374._ID41964._ID26158._ID23787[var_0] = undefined;
    }

    if ( var_2 )
        level._ID1374._ID41964._ID28450[var_0] = var_1;

    var_1["name"] = var_0;

    if ( !_func_02F( var_1["priority"] ) )
        var_1["priority"] = 1;

    if ( !_func_02F( var_1["interrupt_fade"] ) )
        var_1["interrupt_fade"] = 0.1;

    return var_1;
}

_ID4675( var_0, var_1 )
{
    var_2 = "soundtables/sp_defaults.csv";
    var_3 = _ID42463::_ID16090();
    var_4 = [];

    if ( var_1 )
        var_4 = _unknown_0BA5( var_3, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        var_4 = _unknown_0BB7( var_2, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID4676( var_0, var_1 )
{
    var_2 = [];
    var_3 = "";
    var_4 = "";
    var_5 = _func_2A0( var_0, "zone_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_5 ) )
    {
        var_6 = 9;

        for ( var_7 = 1; var_7 < var_6; var_7++ )
        {
            if ( var_3 != "comments" && var_4 != "" )
                var_2[var_3] = var_4;

            var_3 = _func_2A1( var_0, 0, "zone_names", var_7, var_5[0], var_5[1] );
            var_4 = _func_2A1( var_0, 0, var_1, var_7, var_5[0], var_5[1] );

            if ( var_3 != "comment" && var_3 != "comments" && var_4 != "" )
            {
                switch ( var_3 )
                {

                }

                endswitch( 8 )  case "context" loc_CD4 case "dynamic_ambience" loc_CC8 case "streamed_ambience" loc_CCA case "filter" loc_CDD case "occlusion" loc_CE6 case "mix" loc_CE0 case "reverb" loc_CE9 default loc_CFC
                case "dynamic_ambience":
                case "filter":
                case "occlusion":
                case "mix":
                case "reverb":
                default:
            }
        }

        return var_2;
    }
}

_ID4685( var_0, var_1 )
{
    var_2 = level._ID1374._ID41964._ID41977[var_0]["streamed_ambience"];

    if ( _func_02F( var_2 ) )
        _ID42470::_ID34393( var_2, var_1 );
    else
        _ID42470::_ID34394( var_1 );
}

_ID4681( var_0, var_1 )
{
    var_2 = 1.0;

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    var_3 = level._ID1374._ID41964._ID41977[var_0]["dynamic_ambience"];

    if ( _func_02F( var_3 ) )
    {
        _ID42464::_ID9707( "zone", undefined, var_2 );
        _ID42464::_ID9675( var_3 );
    }
    else
        _ID42464::_ID9676( undefined, var_2 );
}

_ID4684( var_0, var_1 )
{
    var_2 = level._ID1374._ID41964._ID41977[var_0]["reverb"];

    if ( _func_02F( var_2 ) && !_unknown_0C4B() )
        _ID42469::_ID30454( var_2 );
}

_ID4683( var_0, var_1 )
{
    var_2 = level._ID1374._ID41964._ID41977[var_0]["occlusion"];

    if ( _func_02F( var_2 ) && !_unknown_0C89() )
        _ID42490::_ID34650( var_2 );
}

_ID4682( var_0, var_1 )
{
    var_2 = level._ID1374._ID41964._ID41977[var_0]["mix"];
    var_3 = level._ID1374._ID41964._ID41977[var_0]["context"];

    if ( !_unknown_0C98() )
    {
        if ( _func_02F( var_2 ) )
            _ID42465::_ID23812( var_2, var_3 );
        else
            _ID42465::_ID23804( undefined, var_3, var_1 );
    }
}

_ID4686( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( level._ID1374._ID41964._ID41977[var_0] ) )
    {
        if ( _func_02F( level._ID1374._ID41964._ID41977[var_0][var_1] ) && level._ID1374._ID41964._ID41977[var_0][var_1] != var_2 || !_func_02F( level._ID1374._ID41964._ID41977[var_0][var_1] ) && _func_02F( var_2 ) && var_2 != "none" )
        {
            if ( var_2 == "none" )
                level._ID1374._ID41964._ID41977[var_0][var_1] = undefined;
            else
                level._ID1374._ID41964._ID41977[var_0][var_1] = var_2;

            if ( var_0 == _unknown_0CE0() )
                [[ var_3 ]]( var_0, var_4 );
        }

        return 1;
    }
    else
        return 0;
}

_ID4687( var_0, var_1 )
{
    wait(var_1);
    wait 0.05;

    if ( level._ID1374._ID41964._ID41977[var_0]["state"] == "stopping" )
        return;
}

_ID4674( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_2._ID41959 = var_0;
    var_2._ID41969 = var_1;
    var_2._ID30689 = undefined;
    var_2._ID30690 = undefined;
    var_2._ID9677 = undefined;
    var_2._ID9678 = undefined;
    var_2._ID25398 = undefined;
    var_2._ID25399 = undefined;
    var_2._ID14029 = undefined;
    var_2._ID14030 = undefined;
    var_2._ID29942 = undefined;
    var_2._ID29943 = undefined;
    var_2._ID23793 = undefined;
    var_2._ID23795 = undefined;
    var_2._ID53581 = undefined;
    var_2._ID45678 = undefined;

    if ( !_func_02F( level._ID1374._ID41964._ID41977[var_0] ) )
    {
        var_3 = _unknown_0DD9( var_0 );

        if ( !_func_02F( var_3 ) )
        {
            _ID42463::_ID4144( "Couldn't find zone: " + var_0 );
            return;
        }

        level._ID1374._ID41964._ID41977[var_0] = var_3;
    }

    var_4 = level._ID1374._ID41964._ID41977[var_0];

    if ( !_func_02F( level._ID1374._ID41964._ID41977[var_1] ) )
    {
        var_3 = _unknown_0E15( var_1 );

        if ( !_func_02F( var_3 ) )
        {
            _ID42463::_ID4144( "Couldn't find zone: " + var_1 );
            return;
        }

        level._ID1374._ID41964._ID41977[var_1] = var_3;
    }

    var_5 = level._ID1374._ID41964._ID41977[var_1];
    var_2._ID25398 = var_4["occlusion"];
    var_2._ID25399 = var_5["occlusion"];
    var_2._ID14029 = var_4["filter"];
    var_2._ID14030 = var_5["filter"];
    var_2._ID29942 = var_4["reverb"];
    var_2._ID29943 = var_5["reverb"];
    var_2._ID23792 = var_4["mix"];
    var_2._ID23794 = var_5["mix"];
    var_2._ID53581 = var_4["context"];
    var_2._ID45678 = var_5["context"];
    var_2._ID30689 = var_4["streamed_ambience"];
    var_2._ID30690 = var_5["streamed_ambience"];
    var_6 = level._ID1374._ID9654._ID809["zone"].size;

    if ( var_6 > 1 )
        _ID42464::_ID9669( 1.0, "zone" );

    var_2._ID9677 = var_4["dynamic_ambience"];
    var_2._ID9678 = var_5["dynamic_ambience"];
    return var_2;
}

_ID4678( var_0, var_1 )
{
    var_2 = 0;

    if ( _func_02F( var_0 ) && _func_02F( var_1 ) && var_0 != var_1 )
        var_2 = 1;
    else if ( _func_02F( var_1 ) && !_func_02F( var_0 ) )
        var_2 = 1;
    else if ( _func_02F( var_0 ) && !_func_02F( var_1 ) )
        var_2 = 1;

    return var_2;
}

_ID4677( var_0, var_1 )
{
    var_2 = 0;

    if ( _func_02F( var_0 ) && _func_02F( var_1 ) && var_0 != var_1 )
        var_2 = 1;
    else if ( _func_02F( var_1 ) && !_func_02F( var_0 ) )
        var_2 = 1;
    else if ( _func_02F( var_0 ) && !_func_02F( var_1 ) )
        var_2 = 1;

    return var_2;
}

_ID4679( var_0, var_1 )
{
    var_2 = 0;

    if ( _func_02F( var_0 ) && _func_02F( var_1 ) && var_0 != var_1 )
        var_2 = 1;
    else if ( _func_02F( var_1 ) && !_func_02F( var_0 ) )
        var_2 = 1;
    else if ( _func_02F( var_0 ) && !_func_02F( var_1 ) )
        var_2 = 1;

    return var_2;
}

_ID4673( var_0, var_1, var_2 )
{
    if ( _unknown_120E( var_2._ID30689, var_2._ID30690 ) )
    {
        var_3 = [];
        var_4 = 0;

        if ( _func_02F( var_2._ID30689 ) && var_2._ID30689 != "" )
        {
            var_5 = level._ID1374._ID41964._ID41977[var_2._ID41959];
            var_3[var_4] = _func_1A5();
            var_3[var_4]._ID2521 = var_2._ID30689;
            var_3[var_4]._ID40762 = var_0;
            var_3[var_4]._ID13788 = var_5["interrupt_fade"];
            var_3[var_4]._ID28609 = var_5["priority"];
            var_4++;
        }

        if ( _func_02F( var_2._ID30690 ) && var_2._ID30690 != "" )
        {
            var_6 = level._ID1374._ID41964._ID41977[var_2._ID41969];
            var_3[var_4] = _func_1A5();
            var_3[var_4]._ID2521 = var_2._ID30690;
            var_3[var_4]._ID40762 = var_1;
            var_3[var_4]._ID13788 = var_6["interrupt_fade"];
            var_3[var_4]._ID28609 = var_6["priority"];
        }

        if ( var_3.size > 0 )
            _ID42470::_ID34391( var_3 );
    }

    if ( _unknown_12B9( var_2._ID9677, var_2._ID9678 ) )
        _ID42464::_ID9662( var_2._ID9677, var_0, var_2._ID9678, var_1 );

    if ( _unknown_12BF( var_2._ID23792, var_2._ID23794 ) && !_unknown_1071() )
        _ID42465::_ID23799( var_2._ID23792, var_0, var_2._ID23794, var_1, var_2._ID53581, var_2._ID45678 );

    if ( _func_02F( var_2._ID14029 ) )
    {
        if ( !_unknown_10A8() )
            _ID42490::_ID34647( var_2._ID14029, 0, 0 );
    }
    else if ( !_unknown_10BB() )
        _ID42490::_ID34647( undefined, 0, 0 );

    if ( _func_02F( var_2._ID14030 ) )
    {
        if ( !_unknown_10CF() )
            _ID42490::_ID34647( var_2._ID14030, 1, 0 );
    }
    else if ( !_unknown_10E3() )
        _ID42490::_ID34647( undefined, 1, 0 );

    if ( _func_02F( var_2._ID14029 ) || _func_02F( var_2._ID14030 ) )
    {
        if ( !_unknown_1101() )
            _ID42490::_ID34648( var_0 );
    }

    if ( var_0 >= 0.75 )
    {
        if ( _func_02F( var_2._ID29942 ) && !_unknown_1111() )
        {
            if ( var_2._ID29942 == "none" )
                _ID42469::_ID30454( undefined );
            else
                _ID42469::_ID30454( var_2._ID29942 );
        }

        if ( _func_02F( var_2._ID25398 ) && !_unknown_1154() )
        {
            if ( var_2._ID25398 == "none" )
                _ID42490::_ID34650( undefined );
            else
                _ID42490::_ID34650( var_2._ID25398 );
        }

        if ( _func_02F( var_2._ID45678 ) )
            _ID42476::_ID34512( var_2._ID45678 );

        if ( _func_02F( var_2._ID53581 ) )
            _ID42476::_ID34518( var_2._ID53581 );
    }
    else if ( var_1 >= 0.75 )
    {
        if ( _func_02F( var_2._ID29943 ) && !_unknown_1191() )
        {
            if ( var_2._ID29943 == "none" )
                _ID42469::_ID30454( undefined );
            else
                _ID42469::_ID30454( var_2._ID29943 );
        }

        if ( _func_02F( var_2._ID25399 ) && !_unknown_11D3() )
        {
            if ( var_2._ID25399 == "none" )
                _ID42490::_ID34650( undefined );
            else
                _ID42490::_ID34650( var_2._ID25399 );
        }

        if ( _func_02F( var_2._ID53581 ) )
            _ID42476::_ID34512( var_2._ID53581 );

        if ( _func_02F( var_2._ID45678 ) )
            _ID42476::_ID34518( var_2._ID45678 );
    }
}
