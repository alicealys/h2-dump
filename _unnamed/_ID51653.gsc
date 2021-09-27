// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48279()
{
    if ( _func_02F( self._ID47601 ) && _func_03D() < self._ID47601 )
        return;

    self._ID47601 = _func_03D() + 300;
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0 _meth_8053( self );
    var_0 _meth_80A1( "snowmobile_npc_jumping" );
    _ID42237::_ID41078( 3.6, "veh_landed", "death" );
    var_1 = 1.2;
    var_0 _meth_8076( 0, var_1 );
    var_0 _meth_8074( 0.5, var_1 );
    wait(var_1);
    var_0 _meth_80B3();
    wait 0.1;
    var_0 _meth_80B7();
}
