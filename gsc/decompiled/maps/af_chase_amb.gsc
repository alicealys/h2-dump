// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level.ambient_track["af_chase_caves"] = "ambient_af_chase_caves_int0";
    level.ambient_track["af_chase_exit"] = "ambient_af_chase_lake";
    level.ambient_track["af_chase_rapids"] = "ambient_af_chase_rapids";
    level.ambient_track["af_chase_river"] = "ambient_af_chase_river";
    level.ambient_track["af_chase_ext"] = "ambient_af_chase_ext";
    _id_B417::ambientdelay( "af_chase_caves", 15.0, 25.0 );
    _id_B417::ambientevent( "af_chase_caves", "elm_windgust1", 0.1 );
    _id_B417::ambientevent( "af_chase_caves", "null", 1.0 );
    _id_B417::ambientdelay( "af_chase_exit", 15.0, 25.0 );
    _id_B417::ambientevent( "af_chase_exit", "elm_windgust1", 0.1 );
    _id_B417::ambientevent( "af_chase_exit", "null", 1.0 );
    _id_B417::ambientdelay( "af_chase_rapids", 15.0, 25.0 );
    _id_B417::ambientevent( "af_chase_rapids", "elm_windgust1", 0.1 );
    _id_B417::ambientevent( "af_chase_rapids", "null", 1.0 );
    _id_B417::ambientdelay( "af_chase_river", 15.0, 25.0 );
    _id_B417::ambientevent( "af_chase_river", "elm_windgust1", 0.1 );
    _id_B417::ambientevent( "af_chase_river", "null", 1.0 );
    _id_B417::ambientdelay( "af_chase_ext", 15.0, 25.0 );
    _id_B417::ambientevent( "af_chase_ext", "elm_windgust1", 0.1 );
    _id_B417::ambientevent( "af_chase_ext", "null", 1.0 );
}
