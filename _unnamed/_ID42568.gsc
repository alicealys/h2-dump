// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "slamraam", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_slamraam", "vehicle_slamraam_base" );
    precachemodel( "projectile_slamraam_missile" );
    _ID42411::_ID6213( "fx/explosions/vehicle_explosion_slamraam", undefined, "exp_slamraam_destroyed" );
    _ID42411::_ID6233( 50 );
    _ID42411::_ID6253( "allies" );
}

_ID19731()
{
    self._ID23746 = "projectile_slamraam_missile";
    self._ID23757 = [];
    self._ID23757[0] = "tag_missle1";
    self._ID23757[1] = "tag_missle2";
    self._ID23757[2] = "tag_missle3";
    self._ID23757[3] = "tag_missle4";
    self._ID23757[4] = "tag_missle5";
    self._ID23757[5] = "tag_missle6";
    self._ID23757[6] = "tag_missle7";
    self._ID23757[7] = "tag_missle8";
}
