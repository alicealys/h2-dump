// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    var_0 = self getturret();
    self.desired_anim_pose = "stand";
    animscripts\utility::updateanimpose();
    self.primaryturretanim = %latveegunner_aim;
    self.additiveturretrotateleft = %latvee_turret_aim_6_add;
    self.additiveturretrotateright = %latvee_turret_aim_4_add;
    self.additiverotateroot = %additive_latveegunner_aim_leftright;
    self.additiveturretidle = %latvee_turret_idle;
    self.additiveturretdriveidle = %latvee_turret_driveidle;
    self.additiveturretfire = %latvee_turret_fire;
    self.additiveusegunroot = %additive_latveegunner_usegun;
    self.turretdeathanimroot = %latveegunner_death;
    self.turretdeathanim = %latvee_turret_death;
    self.turretpainanims[0] = %latvee_turret_paina;
    self.turretpainanims[1] = %latvee_turret_painb;
    self.turretflashbangedanim = %latvee_turret_flincha;
    self.turretreloadanim = %latvee_turret_rechamber;
    self.turretspecialanimsroot = %latveegunner;
    var_1 = [];
    var_1["latvee_turret_bounce"] = %latvee_turret_bounce;
    var_1["latvee_turret_idle_lookback"] = %latvee_turret_idle_lookback;
    var_1["latvee_turret_idle_lookbackB"] = %latvee_turret_idle_lookbackb;
    var_1["latvee_turret_idle_signal_forward"] = %latvee_turret_idle_signal_forward;
    var_1["latvee_turret_idle_signal_side"] = %latvee_turret_idle_signal_side;
    var_1["latvee_turret_radio"] = %latvee_turret_radio;
    var_1["latvee_turret_flinchA"] = %latvee_turret_flincha;
    var_1["latvee_turret_flinchB"] = %latvee_turret_flinchb;
    var_1["latvee_turret_rechamber"] = %latvee_turret_rechamber;
    self.turretspecialanims = var_1;
    var_0 setup_turret_anims();
    thread animscripts\laatpv_turret\minigun_code::main( var_0 );
}

#using_animtree("vehicles");

setup_turret_anims()
{
    self useanimtree( #animtree );
    self.passenger2turret_anime = %latvee_passenger_2_turret_minigun;
    self.turret2passenger_anime = %latvee_turret_2_passenger_minigun;
}
