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
    self.grenadeweapon = "flash_grenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_silencer";
    _id_AAC3::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_AAC3::precache();
    precacheitem( "m4_silencer" );
    precacheitem( "beretta" );
    precacheitem( "flash_grenade" );
}
