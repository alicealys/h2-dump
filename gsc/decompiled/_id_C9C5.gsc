// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_BC97()
{
    if ( isdefined( self._id_B9F1 ) && gettime() < self._id_B9F1 )
        return;

    self._id_B9F1 = gettime() + 300;
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self );
    var_0 playsound( "snowmobile_npc_jumping" );
    common_scripts\utility::waittill_any_timeout( 3.6, "veh_landed", "death" );
    var_1 = 1.2;
    var_0 setvolume( 0, var_1 );
    var_0 setpitch( 0.5, var_1 );
    wait( var_1 );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}
