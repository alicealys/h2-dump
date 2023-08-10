// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m21_soap";
    _id_AC25::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_AC25::precache();
    precacheitem( "m21_soap" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
