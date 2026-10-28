// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    self.desired_anim_pose = "stand";
    animscripts\utility::updateanimpose();
    self.a.movement = "stop";
    var_0 = self getturret();
    var_0 thread turretinit( self );
    self.primaryturretanim = %technicalgunner_aim;
    self.additiveturretidle = %technical_turret_driveidle;
    self.additiveturretfire = %technical_turret_firing;
    self.painfunction = ::technical_pain;
    self.deathanim = %technical_turret_death;
    thread technical_updatemovingidle();
    thread animscripts\saw\common::main( var_0 );
}

technical_pain()
{
    self setflaggedanimknoballrestart( "painanim", %technical_turret_pain, %body, 1, 0.1, 1 );
    animscripts\shared::donotetracks( "painanim" );
}

technical_updatemovingidle()
{
    self endon( "death" );
    var_0 = self.origin;
    waittillframeend;
    self setanimknoblimitedrestart( %h2_technical_turret_movement_idle );

    for (;;)
    {
        if ( distancesquared( self.origin, var_0 ) < 1 )
            self setanim( %additive_technical_idle, 0, 0.1 );
        else
            self setanim( %additive_technical_idle, 1, 0.1 );

        var_0 = self.origin;
        waitframe();
    }
}

#using_animtree("mg42");

turretinit( var_0 )
{
    self.leftarc = 180;
    self.rightarc = 180;
    self useanimtree( #animtree );
    self.additiveturretidle = %saw_gunner_idle_mg;
    self.additiveturretfire = %saw_gunner_firing_mg_add;
    self endon( "death" );
    var_0 waittill( "killanimscript" );
    self stopuseanimtree();
}
