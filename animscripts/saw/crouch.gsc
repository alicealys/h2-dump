// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self._ID7._ID24414 = "stop";
    var_0 = self _meth_81A0();
    var_0 thread _unknown_0031( self );
    self._ID28561 = %crouchsawgunner_aim;
    self._ID2040 = %saw_gunner_lowwall_idle;
    self._ID2039 = %saw_gunner_lowwall_firing;
    thread animscripts\saw\common::_ID616( var_0 );
}
#using_animtree("mg42");

_ID39351( var_0 )
{
    self _meth_811E( #animtree );
    self._ID2040 = %saw_gunner_lowwall_idle_mg;
    self._ID2039 = %saw_gunner_lowwall_firing_mg;
    self endon( "death" );
    var_0 waittill( "killanimscript" );
    self _meth_811F();
}