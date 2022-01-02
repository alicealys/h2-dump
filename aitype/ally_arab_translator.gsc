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

    switch ( _ID42226::_ID15950( 12 ) )
    {
        case 0:
            self.weapon = "m16_basic";
            break;
        case 1:
            self.weapon = "m240";
            break;
        case 2:
            self.weapon = "m16_grenadier";
            break;
        case 3:
            self.weapon = "m240_reflex";
            break;
        case 4:
            self.weapon = "m16_acog";
            break;
        case 5:
            self.weapon = "m240_acog";
            break;
        case 6:
            self.weapon = "m4_grenadier";
            break;
        case 7:
            self.weapon = "scar_h_acog";
            break;
        case 8:
            self.weapon = "m4_grunt";
            break;
        case 9:
            self.weapon = "scar_h_shotgun";
            break;
        case 10:
            self.weapon = "scar_h_reflex";
            break;
        case 11:
            self.weapon = "scar_h_grenadier";
            break;
    }

    character\character_hamed::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_hamed::_ID814();
    precacheitem( "m16_basic" );
    precacheitem( "m240" );
    precacheitem( "m16_grenadier" );
    precacheitem( "m203_m16" );
    precacheitem( "m240_reflex" );
    precacheitem( "m16_acog" );
    precacheitem( "m240_acog" );
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "scar_h_acog" );
    precacheitem( "m4_grunt" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_grenadier" );
    precacheitem( "scar_h_m203" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
