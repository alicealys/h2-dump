// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    common_scripts\utility::flag_init( "_escalator_on" );
    common_scripts\utility::flag_set( "_escalator_on" );
    level._id_C38F = 0.8;
    var_0 = getentarray( "escalator", "targetname" );
    common_scripts\utility::array_thread( var_0, ::_id_C25C );
}

_id_C25C()
{
    for ( var_0 = self; isdefined( var_0.target ); var_0 = var_0._id_C501 )
    {
        var_0 startusinglessfrequentlighting();
        var_0._id_C112 = var_0.origin;
        var_0._id_C501 = getent( var_0.target, "targetname" );
    }

    var_0._id_C112 = var_0.origin;
    var_0._id_C2D8 = 1;
    var_0._id_C501 = self;
    thread _id_CC4C( self );
}

_id_CC4C( var_0 )
{
    var_1 = var_0;
    var_2 = var_1.origin;

    while ( common_scripts\utility::flag( "_escalator_on" ) )
    {
        var_3 = level._id_C38F;
        var_4 = var_1._id_C501;
        var_1 show();

        if ( var_4 != var_0 )
            var_1 moveto( var_4._id_C112, var_3 );
        else
            var_1.origin = var_2;

        if ( var_4 == var_0 )
        {
            var_1 hide();
            var_1._id_C112 = var_2;
            var_0 = var_1;
            wait( var_3 );
            continue;
        }

        var_1._id_C112 = var_4._id_C112;
        var_1 = var_4;
    }

    var_1 = var_0;

    for (;;)
    {
        var_3 = 2;
        var_4 = var_1._id_C501;
        var_1 show();
        var_1 thread _id_CEE8( var_3, var_4 );

        if ( var_4 == var_0 )
        {
            var_1 hide();
            var_1._id_C112 = var_2;
        }

        var_1._id_C112 = var_4._id_C112;
        var_1 = var_4;

        if ( var_1 == var_0 )
            return;
    }
}

_id_CEE8( var_0, var_1 )
{
    self moveto( var_1._id_C112, var_0, 0, var_0 );
    wait( var_0 );
    self moveto( self.origin, 0.05 );
}
