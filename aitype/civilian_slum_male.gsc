// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "civilian";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( _ID42226::_ID15942( 9 ) )
    {
        case 0:
            _ID42097::main();
            break;
        case 1:
            _ID42098::main();
            break;
        case 2:
            _ID42099::main();
            break;
        case 3:
            _ID42100::main();
            break;
        case 4:
            _ID42101::main();
            break;
        case 5:
            _ID42102::main();
            break;
        case 6:
            _ID42103::main();
            break;
        case 7:
            _ID42104::main();
            break;
        case 8:
            character\character_civ_slum_female_a::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID42097::_ID814();
    _ID42098::_ID814();
    _ID42099::_ID814();
    _ID42100::_ID814();
    _ID42101::_ID814();
    _ID42102::_ID814();
    _ID42103::_ID814();
    _ID42104::_ID814();
    character\character_civ_slum_female_a::_ID814();
}
