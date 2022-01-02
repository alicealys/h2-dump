// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 3 ) )
    {
        case 0:
            self.weapon = "m16_basic";
            break;
        case 1:
            self.weapon = "m16_acog";
            break;
        case 2:
            self.weapon = "m16_grenadier";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            character\character_us_army_assault_a_no_ik::main();
            break;
        case 1:
            character\character_us_army_assault_b_no_ik::main();
            break;
        case 2:
            character\character_us_army_assault_c_no_ik::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_us_army_assault_a_no_ik::_ID814();
    character\character_us_army_assault_b_no_ik::_ID814();
    character\character_us_army_assault_c_no_ik::_ID814();
    precacheitem( "m16_basic" );
    precacheitem( "m16_acog" );
    precacheitem( "m16_grenadier" );
    precacheitem( "m203_m16" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
