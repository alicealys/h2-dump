// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48279()
{
    if ( isdefined( self._ID47601 ) && gettime() < self._ID47601 )
        return;

    self._ID47601 = gettime() + 300;
    var_0 = spawn( "script_origin", self._ID740 );
    var_0 linkto( self );
    var_0 playsound( "snowmobile_npc_jumping" );
    _ID42237::_ID41078( 3.6, "veh_landed", "death" );
    var_1 = 1.2;
    var_0 setvolume( 0, var_1 );
    var_0 setpitch( 0.5, var_1 );
    wait(var_1);
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}
