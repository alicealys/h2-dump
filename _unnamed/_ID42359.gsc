// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    if ( _func_02F( anim._ID28939 ) )
        return;

    if ( !_func_02F( level._ID36742 ) )
        level._ID36742 = [];

    level._ID36742["militia"] = ::_unknown_00A6;
    anim._ID28939 = _func_1A5();
    anim._ID28939._ID8876 = animscripts\utility::_ID3291( %favela_chaotic_cornerl_hop90, %favela_chaotic_cornerl_high90, %favela_chaotic_cornerl_mid90 );
    anim._ID28939._ID8875 = animscripts\utility::_ID3291( %favela_chaotic_cornerl_high45, %favela_chaotic_cornerl_mid45 );
    anim._ID28939._ID8877 = %favela_chaotic_cornerl_grenade;
    anim._ID28939._ID8899 = animscripts\utility::_ID3291( %favela_chaotic_cornerr_med90, %favela_chaotic_cornerr_low90, %favela_chaotic_cornerr_high90 );
    anim._ID28939._ID8898 = animscripts\utility::_ID3291( %favela_chaotic_cornerr_med45, %favela_chaotic_cornerr_low45, %favela_chaotic_cornerr_high45 );
    anim._ID28939._ID8900 = %favela_chaotic_cornerr_grenade;
    anim._ID28939._ID8902 = animscripts\utility::_ID3291( %favela_chaotic_standcover_firea, %favela_chaotic_standcover_fireb, %favela_chaotic_standcover_firec );
    anim._ID28939._ID8903 = animscripts\utility::_ID3291( %favela_chaotic_standcover_gunjama, %favela_chaotic_standcover_gunjamb );
    anim._ID28939._ID8904 = animscripts\utility::_ID3291( %favela_chaotic_standcover_grenadefirea );
    anim._ID28939._ID8864 = animscripts\utility::_ID3291( %favela_chaotic_crouchcover_firea, %favela_chaotic_crouchcover_fireb, %favela_chaotic_crouchcover_firec );
    anim._ID28939._ID8865 = animscripts\utility::_ID3291( %favela_chaotic_crouchcover_gunjama, %favela_chaotic_crouchcover_gunjamb );
    anim._ID28939._ID8866 = animscripts\utility::_ID3291( %favela_chaotic_crouchcover_grenadefirea );
    anim._ID28939._ID50825 = animscripts\utility::_ID3291( %favela_chaotic_crouchcover_firea, %favela_chaotic_crouchcover_firec );
    anim._ID28939._ID52690 = animscripts\utility::_ID3291( %favela_chaotic_crouchcover_gunjama );
    _unknown_01D7();
}

_ID32763()
{
    animscripts\combat_utility::_ID2022( %favela_chaotic_cornerr_grenade, ( 52.4535, 10.107, 64.2898 ) );
    animscripts\combat_utility::_ID2022( %favela_chaotic_cornerl_grenade, ( 19.1753, -18.9954, 49.3355 ) );
    animscripts\combat_utility::_ID2022( %favela_chaotic_standcover_grenadefirea, ( 6.66898, -0.135193, 72.117 ) );
    animscripts\combat_utility::_ID2022( %favela_chaotic_crouchcover_grenadefirea, ( 4.53614, -10.4574, 59.7186 ) );
}

_ID12503()
{
    if ( self._ID1244 == "dog" )
        return;

    self._ID24727 = 1;
    self._ID625 = 256;

    if ( animscripts\combat_utility::_ID20813() )
        return;

    if ( animscripts\utility::_ID20902( self._ID1302 ) )
        return;

    self._ID10881 = undefined;
    self._ID13977 = 1;
    self._ID28940 = 0.9;
    self._ID28936 = 1.0;
    self._ID4867 = 0.75;
    self._ID24730 = undefined;
}

_ID10942()
{
    self._ID13977 = undefined;
    self._ID28940 = undefined;
    self._ID24727 = 0;
    self._ID625 = 512;
    self._ID28936 = undefined;
}
