if (isNil "CODI_LO_rus_emr") then
{
   CODI_LO_rus_emr = ["unarmed","rflm","cfr"];
}
else
{
   {
      if (!(_x in CODI_LO_rus_emr)) then
      {
         CODI_LO_rus_emr pushBack _x;
      };
   }
   forEach ["unarmed","rflm","cfr"];
};
CODI_LO_rus_emr sort true;//alphabetisch sortieren
//die Fraktion dem Ausrüstungskladderadatsch hinzufügen
if (isNil "CODI_LO_colours") then
{
   CODI_LO_colours = ["rus_emr"];
}
else
{
   {
      if (!(_x in CODI_LO_colours)) then
      {
         CODI_LO_colours pushBack _x;
      };
   }
   forEach ["ch_wood"];
};
CODI_LO_fnc_unarmed_rus_emr = {
   CODI_LO_uniform = ["rhs_uniform_emr_patchless"];
   CODI_LO_vest = ["rhs_6b23_digi"];
   CODI_LO_backpack = ["rhs_assault_umbts"];
   CODI_LO_helmet = ["rhs_fieldcap_helm_digi"];
   CODI_LO_nv = ["NVGoggles_INDEP","NVGoggles"];//Soldat wird standardmäßig mit "NVGoggles_INDEP" ausgerüstet, hat im Virtual Arsenal die Option auch "NVGoggles" auszuwählen
};
CODI_LO_fnc_rflm_rus_emr = {
   call CODI_LO_fnc_unarmed_rus_emr;//dadurch sieht der rflm_ch_wood aus wie der unarmed_ch_wood
   CODI_LO_weaponPacks = [["mp443","pmm"],["grenades_he","grenades_flash","grenades_smoke"],["ak12","akm"],[]];//darf nur bereits definierte waffen enthalten, siehe ingamenamen beim ausrüstungsdialog
};
CODI_LO_fnc_cfr_rus_emr = {
   call CODI_LO_fnc_rflm_rus_emr;//dadurch sieht der cfr_ch_wood aus wie der rflm_ch_wood und hat dessen Waffenauswahl
};
