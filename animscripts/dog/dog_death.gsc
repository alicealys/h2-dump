// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID7._ID24881 ) )
    {
        wait 1.1;
        var_0 = self _meth_8146();

        if ( _func_02F( var_0 ) )
        {
            var_1 = _ID42237::_ID35164();
            var_1._ID740 = self._ID740;
            var_1._ID65 = self._ID65;
            self _meth_8053( var_1 );
            var_1 _meth_82B8( var_0, 0.5 );
            wait 0.5;
            self _meth_8055();
            var_1 _meth_80B7();
        }
        else
            wait 0.5;

        return;
    }

    self _meth_8055();

    if ( _func_02F( self._ID322 ) && _func_02F( self._ID322._ID1065 ) && self._ID322._ID1065 == self )
        self._ID322._ID1065 = undefined;

    self _meth_814C( %root, 0.2 );
    self _meth_811C( "dog_anim", %german_shepherd_death_front, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dog_anim" );
}
