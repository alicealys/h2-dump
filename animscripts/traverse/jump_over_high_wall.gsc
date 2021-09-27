// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    var_0 = self _meth_81A9();
    self _meth_819B( "face angle", var_0._ID65[1] );
    self _meth_814C( %stand_and_crouch, 0.1 );
    self _meth_8119( "diveanim", %jump_over_high_wall, %body, 1, 0.1, 1 );
    self _meth_80A1( "dive_wall" );
    self waittillmatch( "diveanim",  "gravity on"  );
    self _meth_8199( "nogravity" );
    self waittillmatch( "diveanim",  "noclip"  );
    self _meth_8199( "noclip" );
    self waittillmatch( "diveanim",  "gravity on"  );
    self _meth_8199( "gravity" );
    animscripts\shared::_ID11529( "diveanim" );
}
