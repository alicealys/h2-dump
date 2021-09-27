// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );

    if ( _func_02F( self._ID322 ) && _func_02F( self._ID322._ID1065 ) && self._ID322._ID1065 == self )
    {
        self _meth_8055();
        self._ID322._ID1065 = undefined;
    }

    self _meth_814C( %root, 0.2 );
    self _meth_811C( "dog_pain_anim", %german_shepherd_run_pain, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "dog_pain_anim" );
}
