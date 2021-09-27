// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    self._ID7._ID24414 = "stop";
    var_0 = self _meth_81A0();
    var_0 thread _unknown_005C( self );
    self._ID28561 = %technicalgunner_aim;
    self._ID2040 = %technical_turret_driveidle;
    self._ID2039 = %technical_turret_firing;
    self._ID26203 = ::_unknown_0057;
    self._ID9813 = %technical_turret_death;
    thread _unknown_0072();
    thread animscripts\saw\common::_ID616( var_0 );
}

_ID37387()
{
    self _meth_8119( "painanim", %technical_turret_pain, %body, 1, 0.1, 1 );
    animscripts\shared::_ID11529( "painanim" );
}

technical_updatemovingidle()
{
    self endon( "death" );
    var_0 = self._ID740;
    waitframe;
    self _meth_8150( %h2_technical_turret_movement_idle );

    for (;;)
    {
        if ( _func_0F5( self._ID740, var_0 ) < 1 )
            self _meth_8155( %additive_technical_idle, 0, 0.1 );
        else
            self _meth_8155( %additive_technical_idle, 1, 0.1 );

        var_0 = self._ID740;
        waittillframeend;
    }
}
#using_animtree("mg42");

_ID39351( var_0 )
{
    self._ID591 = 180;
    self._ID895 = 180;
    self _meth_811E( #animtree );
    self._ID2040 = %saw_gunner_idle_mg;
    self._ID2039 = %saw_gunner_firing_mg_add;
    self endon( "death" );
    var_0 waittill( "killanimscript" );
    self _meth_811F();
}
