// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 8 ) )
    {
        case 0:
            self.weapon = "ak47_desert";
            break;
        case 1:
            self.weapon = "ak47_reflex";
            break;
        case 2:
            self.weapon = "ak47_desert_grenadier";
            break;
        case 3:
            self.weapon = "ak47_acog";
            break;
        case 4:
            self.weapon = "fal";
            break;
        case 5:
            self.weapon = "fal_acog";
            break;
        case 6:
            self.weapon = "ak47_desert";
            break;
        case 7:
            self.weapon = "fal_shotgun";
            break;
    }

    _ID48914::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID48914::_ID814();
    precacheitem( "ak47_desert" );
    precacheitem( "ak47_reflex" );
    precacheitem( "ak47_desert_grenadier" );
    precacheitem( "gl_ak47_desert" );
    precacheitem( "ak47_acog" );
    precacheitem( "fal" );
    precacheitem( "fal_acog" );
    precacheitem( "ak47_desert" );
    precacheitem( "fal_shotgun" );
    precacheitem( "fal_shotgun_attach" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
