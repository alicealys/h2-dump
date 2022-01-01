// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    var_0 = self getturret();
    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    self._ID28561 = %latveegunner_aim;
    self._ID2041 = %latvee_turret_aim_6_add;
    self._ID2042 = %latvee_turret_aim_4_add;
    self._ID2037 = %additive_latveegunner_aim_leftright;
    self._ID2040 = %latvee_turret_idle;
    self._ID2038 = %latvee_turret_driveidle;
    self._ID2039 = %latvee_turret_fire;
    self._ID2043 = %additive_latveegunner_usegun;
    self._ID39341 = %latveegunner_death;
    self._ID39340 = %latvee_turret_death;
    self._ID39355[0] = %latvee_turret_paina;
    self._ID39355[1] = %latvee_turret_painb;
    self._ID39349 = %latvee_turret_flincha;
    self._ID39357 = %latvee_turret_rechamber;
    self._ID39364 = %latveegunner;
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
    self._ID39363 = var_1;
    var_0 _ID33507();
    thread animscripts\laatpv_turret\minigun_code::_ID616( var_0 );
}
#using_animtree("vehicles");

_ID33507()
{
    self useanimtree( #animtree );
    self._ID26298 = %latvee_passenger_2_turret_minigun;
    self._ID39335 = %latvee_turret_2_passenger_minigun;
}
