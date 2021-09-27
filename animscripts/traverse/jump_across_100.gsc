// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    if ( self._ID1244 == "dog" )
    {
        animscripts\traverse\shared::_ID11438( "window_40", 20 );
        return;
    }

    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    var_0 = self _meth_81A9();
    self _meth_819B( "face angle", var_0._ID65[1] );
    var_1 = [];
    var_1[0] = %jump_across_100_spring;
    var_1[1] = %jump_across_100_lunge;
    var_1[2] = %jump_across_100_stumble;
    var_2 = var_1[_func_0B7( var_1.size )];
    self _meth_8119( "jumpanim", var_2, %body, 1, 0.1, 1 );
    animscripts\shared::_ID11529( "jumpanim" );
}
