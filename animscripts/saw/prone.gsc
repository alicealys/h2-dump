// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    self._ID10423 = "prone";
    animscripts\utility::_ID39672();
    self._ID7._ID24414 = "stop";
    var_0 = self getturret();
    var_0 thread _ID39351( self );
    self._ID28561 = %pronesawgunner_aim;
    self._ID2040 = %saw_gunner_prone_idle;
    self._ID2039 = %saw_gunner_prone_firing;
    thread animscripts\saw\common::main( var_0 );
}
#using_animtree("mg42");

_ID39351( var_0 )
{
    self useanimtree( #animtree );
    self._ID2040 = %saw_gunner_prone_idle_mg;
    self._ID2039 = %saw_gunner_prone_firing_mg;
    self endon( "death" );
    var_0 waittill( "killanimscript" );
    self stopuseanimtree();
}
