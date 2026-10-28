// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

initcredits( var_0 )
{
    common_scripts\utility::flag_init( "atvi_credits_go" );
    level.linesize = 1;
    level.headingsize = 1;
    level.linelist = [];
    level.remastertextcolorgrey = ( 0.5, 0.5, 0.5 );
    level.remastertextcolorwhite = ( 0.8, 0.8, 0.8 );
    level.credits_speed = 25;
    level.credits_spacing = -120;
    level.delayscale = 0.5;
    level.destroydelayvalue = 18 * level.delayscale;
    level.moveovertimevalue = 18 * level.delayscale;
    maps\_utility::set_console_status();
    var_1 = 25;

    if ( level.pc )
        var_1 = 0;

    if ( !isdefined( var_0 ) )
        var_0 = "all";

    switch ( var_0 )
    {
        case "iw":
            maps\_credit_h2_autogen::_id_B775();
            break;
        case "atvi":
            maps\_credit_h2_autogen::initactivisioncredits();
            break;
        case "all":
            maps\_credit_h2_autogen::_id_B775();
            maps\_credit_h2_autogen::initactivisioncredits();
            break;
    }

    thread maps\simplecredits::_id_D18C();
}

addlefttitle( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "lefttitle";
    var_2.title = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addleftname( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "leftname";
    var_2.name = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addsublefttitle( var_0, var_1 )
{
    addleftname( var_0, var_1 );
}

addsubleftname( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "subleftname";
    var_2.name = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addrighttitle( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "righttitle";
    var_2.title = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addrightname( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "rightname";
    var_2.name = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addcenterheading( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.headingsize;

    var_2 = spawnstruct();
    var_2.type = "centerheading";
    var_2.heading = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addcastname( var_0, var_1, var_2 )
{
    precachestring( var_1 );
    precachestring( var_0 );

    if ( !isdefined( var_2 ) )
        var_2 = level.linesize;

    var_3 = spawnstruct();
    var_3.type = "castname";
    var_3.title = var_1;
    var_3.name = var_0;
    var_3.textscale = var_2;
    level.linelist[level.linelist.size] = var_3;
}

addcentername( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level.linesize;

    var_2 = spawnstruct();
    var_2.type = "centername";
    var_2.name = var_0;
    var_2.textscale = var_1;
    level.linelist[level.linelist.size] = var_2;
}

addcenternamedouble( var_0, var_1, var_2 )
{
    precachestring( var_0 );
    precachestring( var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = level.linesize;

    var_3 = spawnstruct();
    var_3.type = "centernamedouble";
    var_3.name1 = var_0;
    var_3.name2 = var_1;
    var_3.textscale = var_2;
    level.linelist[level.linelist.size] = var_3;
}

addcenterdual( var_0, var_1, var_2 )
{
    precachestring( var_0 );
    precachestring( var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = level.linesize;

    var_3 = spawnstruct();
    var_3.type = "centerdual";
    var_3.title = var_0;
    var_3.name = var_1;
    var_3.textscale = var_2;
    level.linelist[level.linelist.size] = var_3;
}

addcentertriple( var_0, var_1, var_2, var_3 )
{
    precachestring( var_0 );
    precachestring( var_1 );
    precachestring( var_2 );

    if ( !isdefined( var_3 ) )
        var_3 = level.linesize;

    var_4 = spawnstruct();
    var_4.type = "centertriple";
    var_4.name1 = var_0;
    var_4.name2 = var_1;
    var_4.name3 = var_2;
    var_4.textscale = var_3;
    level.linelist[level.linelist.size] = var_4;
}

addspace()
{
    var_0 = spawnstruct();
    var_0.type = "space";
    level.linelist[level.linelist.size] = var_0;
}

addspacesmall()
{
    var_0 = spawnstruct();
    var_0.type = "spacesmall";
    level.linelist[level.linelist.size] = var_0;
}

addcentergradientimage( var_0, var_1, var_2 )
{
    precacheshader( var_0 );
    var_3 = spawnstruct();
    var_3.type = "centergradientimage";
    var_3.image = var_0;
    var_3.width = 1080;
    var_3.height = 126;
    var_3.aligny = var_1;
    var_3.vertalign = var_1;
    var_3.yoffset = var_2;
    level.linelist[level.linelist.size] = var_3;
}

addcenterimage( var_0, var_1, var_2, var_3, var_4 )
{
    precacheshader( var_0 );
    var_5 = spawnstruct();
    var_5.type = "centerimage";
    var_5.image = var_0;
    var_5.width = var_1;
    var_5.height = var_2;
    var_5.sort = 2;

    if ( isdefined( var_3 ) )
        var_5.delay = var_3;

    if ( isdefined( var_4 ) )
        var_5.waitflag = var_4;

    level.linelist[level.linelist.size] = var_5;
}

_id_AEC3( var_0, var_1, var_2, var_3 )
{
    precacheshader( var_0 );
    var_4 = spawnstruct();
    var_4.type = "leftimage";
    var_4.image = var_0;
    var_4.width = var_1;
    var_4.height = var_2;
    var_4.sort = 2;

    if ( isdefined( var_3 ) )
        var_4.delay = var_3;

    level.linelist[level.linelist.size] = var_4;
}

playcredits()
{
    visionsetnaked( "", 0 );
    maps\ending_lighting::_id_C1DB( "ending_museum" );
    var_0 = getdvar( "ui_char_museum_mode" );
    soundscripts\_snd::snd_message( "start_credits_mix" );
    setdvar( "credits_active", 1 );

    if ( isdefined( var_0 ) && var_0 == "credits_1" )
    {
        var_1 = newhudelem();
        var_1.x = 0;
        var_1.y = 0;
        var_1.alignx = "center";
        var_1.aligny = "middle";
        var_1.horzalign = "center";
        var_1.vertalign = "middle";
        var_1.sort = 3;
        var_1.foreground = 1;
        var_1 settext( &"CREDITS_UI_DEVELOPED_BY" );
        var_1.alpha = 1;
        var_1.hidewheninmenu = 0;
        var_1.fontscale = 1.7;
        var_1.font = "objective";
        var_1.color = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 setpulsefx( 0, var_2, 700 );
        wait 3;
        var_1 common_scripts\utility::delaycall( 1, ::destroy );
        wait 1;
        var_1 = newhudelem();
        var_1.x = 0;
        var_1.y = 0;
        var_1.alignx = "center";
        var_1.aligny = "middle";
        var_1.horzalign = "center";
        var_1.vertalign = "middle";
        var_1.sort = 3;
        var_1.foreground = 1;
        var_1 settext( &"CREDITS_UI_REMASTERED_BY" );
        var_1.alpha = 1;
        var_1.hidewheninmenu = 0;
        var_1.fontscale = 1.7;
        var_1.font = "objective";
        var_1.color = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 setpulsefx( 0, var_2, 700 );
        wait 3;
        var_1 common_scripts\utility::delaycall( 1, ::destroy );
        wait 0.5;
    }

    var_3 = 0.5;

    for ( var_4 = 0; var_4 < level.linelist.size; var_4++ )
    {
        var_5 = var_3;
        var_6 = level.linelist[var_4].type;

        if ( var_6 == "centerimage" )
        {
            if ( isdefined( var_0 ) && var_0 != "credits_black" && isdefined( level.linelist[var_4].waitflag ) )
            {
                common_scripts\utility::flag_wait( level.linelist[var_4].waitflag );
                var_3 = 0.6;
            }

            var_7 = level.linelist[var_4].image;
            var_8 = level.linelist[var_4].width;
            var_9 = level.linelist[var_4].height;
            var_10 = newhudelem();
            var_10 setshader( var_7, var_8, var_9 );
            var_10.alignx = "center";
            var_10.horzalign = "center";
            var_10.x = 0;
            var_10.y = 480;
            var_10.sort = 2;
            var_10.foreground = 1;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;

            if ( isdefined( level.linelist[var_4].delay ) )
                var_5 = level.linelist[var_4].delay;
            else
                var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "leftimage" )
        {
            var_7 = level.linelist[var_4].image;
            var_8 = level.linelist[var_4].width;
            var_9 = level.linelist[var_4].height;
            var_10 = newhudelem();
            var_10 setshader( var_7, var_8, var_9 );
            var_10.alignx = "center";
            var_10.horzalign = "left";
            var_10.x = 128;
            var_10.y = 480;
            var_10.sort = 2;
            var_10.foreground = 1;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
            var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "lefttitle" )
        {
            var_11 = level.linelist[var_4].title;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_11 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 28;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
            var_10 thread pulse_fx();
        }
        else if ( var_6 == "leftname" )
        {
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 60;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
            var_10 thread pulse_fx();
        }
        else if ( var_6 == "castname" )
        {
            var_11 = level.linelist[var_4].title;
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_14 = newhudelem();
            var_14 settext( var_11 );
            var_14.alignx = "left";
            var_14.horzalign = "left";
            var_14.x = 60;
            var_14.y = 480;

            if ( !level.console )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorgrey;
            var_15 = newhudelem();
            var_15 settext( var_13 );
            var_15.alignx = "right";
            var_15.horzalign = "left";
            var_15.x = 275;
            var_15.y = 480;

            if ( !level.console )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorgrey;
            var_14 thread delaydestroy( level.credits_speed );
            var_14 moveovertime( level.credits_speed );
            var_14.y = level.credits_spacing;
            var_15 thread delaydestroy( level.credits_speed );
            var_15 moveovertime( level.credits_speed );
            var_15.y = level.credits_spacing;
            var_14 thread pulse_fx();
            var_15 thread pulse_fx();
        }
        else if ( var_6 == "subleftname" )
        {
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 92;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
            var_10 thread pulse_fx();
        }
        else if ( var_6 == "righttitle" )
        {
            var_11 = level.linelist[var_4].title;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_11 );
            var_10.alignx = "left";
            var_10.horzalign = "right";
            var_10.x = -132;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
        }
        else if ( var_6 == "rightname" )
        {
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "right";
            var_10.x = -100;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
        }
        else if ( var_6 == "centerheading" )
        {
            var_16 = level.linelist[var_4].heading;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_16 );
            var_10.alignx = "center";
            var_10.horzalign = "center";
            var_10.x = 0;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
        }
        else if ( var_6 == "centerdual" )
        {
            var_11 = level.linelist[var_4].title;
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_14 = newhudelem();
            var_14 settext( var_11 );
            var_14.alignx = "right";
            var_14.horzalign = "center";
            var_14.x = -8;
            var_14.y = 480;

            if ( !level.console )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_13 );
            var_15.alignx = "left";
            var_15.horzalign = "center";
            var_15.x = 8;
            var_15.y = 480;

            if ( !level.console )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorgrey;
            var_14 thread delaydestroy( level.credits_speed );
            var_14 moveovertime( level.credits_speed );
            var_14.y = level.credits_spacing;
            var_15 thread delaydestroy( level.credits_speed );
            var_15 moveovertime( level.credits_speed );
            var_15.y = level.credits_spacing;
        }
        else if ( var_6 == "centertriple" )
        {
            var_17 = level.linelist[var_4].name1;
            var_18 = level.linelist[var_4].name2;
            var_19 = level.linelist[var_4].name3;
            var_12 = level.linelist[var_4].textscale;
            var_14 = newhudelem();
            var_14 settext( var_17 );
            var_14.alignx = "center";
            var_14.horzalign = "center";
            var_14.x = -160;
            var_14.y = 480;

            if ( !level.console )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_18 );
            var_15.alignx = "center";
            var_15.horzalign = "center";
            var_15.x = 0;
            var_15.y = 480;

            if ( !level.console )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorwhite;
            var_20 = newhudelem();
            var_20 settext( var_19 );
            var_20.alignx = "center";
            var_20.horzalign = "center";
            var_20.x = 160;
            var_20.y = 480;

            if ( !level.console )
                var_20.font = "default";
            else
                var_20.font = "small";

            var_20.fontscale = var_12;
            var_20.sort = 2;
            var_20.color = level.remastertextcolorwhite;
            var_14 thread delaydestroy( level.credits_speed );
            var_14 moveovertime( level.credits_speed );
            var_14.y = level.credits_spacing;
            var_15 thread delaydestroy( level.credits_speed );
            var_15 moveovertime( level.credits_speed );
            var_15.y = level.credits_spacing;
            var_20 thread delaydestroy( level.credits_speed );
            var_20 moveovertime( level.credits_speed );
            var_20.y = level.credits_spacing;
        }
        else if ( var_6 == "centername" )
        {
            var_13 = level.linelist[var_4].name;
            var_12 = level.linelist[var_4].textscale;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "center";
            var_10.x = 8;
            var_10.y = 480;

            if ( !level.console )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread delaydestroy( level.credits_speed );
            var_10 moveovertime( level.credits_speed );
            var_10.y = level.credits_spacing;
        }
        else if ( var_6 == "centernamedouble" )
        {
            var_17 = level.linelist[var_4].name1;
            var_18 = level.linelist[var_4].name2;
            var_12 = level.linelist[var_4].textscale;
            var_14 = newhudelem();
            var_14 settext( var_17 );
            var_14.alignx = "center";
            var_14.horzalign = "center";
            var_14.x = -100;
            var_14.y = 480;

            if ( !level.console )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_18 );
            var_15.alignx = "center";
            var_15.horzalign = "center";
            var_15.x = 100;
            var_15.y = 480;

            if ( !level.console )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorwhite;
            var_14 thread delaydestroy( level.credits_speed );
            var_14 moveovertime( level.credits_speed );
            var_14.y = level.credits_spacing;
            var_15 thread delaydestroy( level.credits_speed );
            var_15 moveovertime( level.credits_speed );
            var_15.y = level.credits_spacing;
        }
        else if ( var_6 == "spacesmall" )
            var_5 = 0.1875;
        else
        {

        }

        wait( var_5 * level.credits_speed / 22.5 );
    }
}

delaydestroy( var_0 )
{
    wait( var_0 );
    self destroy();
}

pulse_fx()
{
    self.alpha = 0;
    wait( level.credits_speed * 0.08 );
    self fadeovertime( 0.2 );
    self.alpha = 1;
    self setpulsefx( 50, int( level.credits_speed * 0.6 * 1000 ), 500 );
}

_id_B9FB( var_0, var_1 )
{
    addsublefttitle( var_0 );
    addspacesmall();
    addsubleftname( var_1 );
    addspace();
}

_id_AC21( var_0, var_1 )
{
    addlefttitle( var_0 );
    addspacesmall();
    addleftname( var_1 );
    addspace();
}

_id_CCC0( var_0, var_1 )
{
    addlefttitle( var_0 );
    addspacesmall();
    addleftname( var_1 );
}

_id_D39D( var_0, var_1 )
{
    addsublefttitle( var_0 );
    addspacesmall();
    addsubleftname( var_1 );
}

_id_B62C( var_0, var_1 )
{
    addleftname( var_0 );
    addleftname( var_1 );
}

_id_B086( var_0, var_1 )
{
    addsubleftname( var_0 );
    addsubleftname( var_1 );
}

_id_AD63( var_0, var_1, var_2 )
{
    addsubleftname( var_0 );
    addsubleftname( var_1 );
    addsubleftname( var_2 );
}

_id_BB08( var_0, var_1, var_2, var_3 )
{
    addcenterimage( var_0, var_1, var_2, var_3, "atvi_credits_go" );
}

_id_C664( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addlefttitle( var_0 );
    else
        addcenterheading( var_0 );
}

_id_C071( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addsublefttitle( var_0 );
    else
        addcenterheading( var_0 );
}

_id_B1A5( var_0, var_1 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
    {
        addlefttitle( var_0 );
        addspacesmall();
        addleftname( var_1 );
    }
    else
        addcenterdual( var_0, var_1 );
}

_id_A890( var_0, var_1 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
    {
        addsublefttitle( var_0 );
        addspacesmall();
        addsubleftname( var_1 );
    }
    else
        addcenterdual( var_0, var_1 );
}

_id_BFAC( var_0, var_1, var_2 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addcastname( var_0, var_1 );
    else
        addcenterheading( var_0 );
}

_id_C633( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addleftname( var_0 );
    else
        addcentername( var_0 );
}

_id_C4FB( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addsubleftname( var_0 );
    else
        addcentername( var_0 );
}

_id_B023()
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        addspace();
    else
        addspacesmall();
}

addgap()
{
    addspace();
    addspace();
}
