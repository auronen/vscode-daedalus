var C_NPC hero;
var C_NPC self;
var C_NPC other;
var C_NPC victim;
var C_ITEM item;
var instance NULL;
var instance instance_help;
func string IntToString(var int par0) {};
func string FloatToString(var float par0) {};
func int FloatToInt(var float par0) {};
func float IntToFloat(var int par0) {};
func string ConcatStrings(var string par0, var string par1) {};
func void Print(var string par0) {};
func void PrintDebug(var string par0) {};
func int PrintScreen(var string par0, var int par1, var int par2, var string par3, var int par4) {};
func int AI_PrintScreen(var string par0, var int par1, var int par2, var string par3, var int par4) {};
func int PrintDialog(var int par0, var string par1, var int par2, var int par3, var string par4, var int par5) {};
func void PrintDebugInst(var string par0) {};
func void PrintDebugInstCh(var int par0, var string par1) {};
func void PrintDebugCh(var int par0, var string par1) {};
func void PrintMulti(var string par0, var string par1, var string par2, var string par3, var string par4) {};
func void ExitGame() {};
func void ExitSession() {};
func int PlayVideo(var string par0) {};
func int PlayVideoEx(var string par0, var int par1, var int par2) {};
func void SetPercentDone(var int par0) {};
func void IntroduceChapter(var string par0, var string par1, var string par2, var string par3, var int par4) {};
func void Npc_MemoryEntry(var instance par0, var int par1, var instance par2, var int par3, var instance par4) {};
func void Npc_MemoryEntryGuild(var instance par0, var int par1, var instance par2, var int par3, var instance par4) {};
func int Npc_hasNews(var instance par0, var int par1, var instance par2, var instance par3) {};
func c_npc Npc_GetNewsWitness(var c_npc self, var int newsnumber) {};
func c_npc Npc_GetNewsOffender(var c_npc self, var int newsnumber) {};
func c_npc Npc_GetNewsVictim(var c_npc self, var int newsnumber) {};
func int Npc_IsNewsGossip(var instance par0, var int par1) {};
func int Npc_DeleteNews(var instance par0, var int par1) {};
func int Npc_GetGuildAttitude(var instance par0, var instance par1) {};
func int Npc_GetActiveSpell(var instance par0) {};
func int Npc_GetlasthitSpellid(var instance par0) {};
func int Npc_GetlasthitSpellcat(var instance par0) {};
func int Npc_GetActiveSpellcat(var instance par0) {};
func int Npc_GetActiveSpelllevel(var instance par0) {};
func int Npc_GetActiveSpellisscroll(var instance par0) {};
func int Npc_SetActiveSpellinfo(var instance par0, var int par1) {};
func int Wld_DetectItem(var instance par0, var int par1) {};
func int Wld_Detectplayer(var instance par0) {};
func int Wld_Detectnpc(var instance par0, var int par1, var func par2, var int par3) {};
func int Wld_DetectnpcEx(var instance par0, var int par1, var func par2, var int par3, var int par4) {};
func int Wld_Detectnpcexatt(var instance par0, var int par1, var func par2, var int par3, var int par4, var int par5) {};
func void Wld_SetGuildAttitude(var int par0, var int par1, var int par2) {};
func int Wld_GetGuildAttitude(var int par0, var int par1) {};
func int Wld_IsMobAvailable(var instance par0, var string par1) {};
func int Wld_IsFPAvailable(var instance par0, var string par1) {};
func int Wld_IsNextFPAvailable(var instance par0, var string par1) {};
func void Npc_CreateSpell(var instance par0, var int par1) {};
func void Npc_LearnSpell(var instance par0, var int par1) {};
func int Npc_HasItems(var instance par0, var int par1) {};
func void Npc_GiveItem(var instance par0, var int par1, var instance par2) {};
func void CreateInvItem(var instance par0, var int par1) {};
func void CreateInvItems(var instance par0, var int par1, var int par2) {};
func int Npc_GetInvItem(var c_npc self, var int iteminstance) {};
func int Npc_GetInvItembyslot(var c_npc self, var int category, var int slotnr) {};
func int Npc_RemoveInvItem(var C_NPC npc, var int par1) {};
func int Npc_RemoveInvItems(var C_NPC npc, var int par1, var int par2) {};
func void Npc_ClearInventory(var C_NPC npc) {};
func int Npc_IsInState(var C_NPC npc, var func par1) {};
func int Npc_WasInState(var C_NPC npc, var func par1) {};
func int Npc_IsInroutine(var C_NPC npc, var func par1) {};
func void AI_SetnpcstoState(var C_NPC npc, var func par1, var int par2) {};
func int Npc_HasDetectedNpc(var C_NPC npc, var instance par1) {};
func void Npc_SetAttitude(var C_NPC npc, var int par1) {};
func void Npc_SettempAttitude(var C_NPC npc, var int par1) {};
func int Npc_GetAttitude(var C_NPC npc, var instance par1) {};
func int Npc_GetpermAttitude(var C_NPC npc, var instance par1) {};
func void Npc_ChangeAttribute(var C_NPC npc, var int atr, var int val) {};
func int Npc_Getcomrades(var C_NPC npc) {};
func int Npc_Isnear(var C_NPC npc, var instance par1) {};
func int Npc_GetDisttonpc(var C_NPC npc, var C_NPC par1) {};
func int Npc_GetHeightToNpc(var C_NPC npc, var C_NPC oth) {};
func int Npc_GetHeightToItem(var C_NPC npc, var C_ITEM itm) {};
func int Npc_GetDisttoplayer(var C_NPC npc) {};
func int Npc_GetDisttoItem(var C_NPC npc, var C_ITEM itm) {};
func int Npc_GetDisttowp(var C_NPC npc, var string par1) {};
func int Npc_CanSeeNpc(var C_NPC npc, var instance par1) {};
func int Npc_CanSeeNpcFreeLOS(var C_NPC npc, var instance par1) {};
func int Npc_CanSeeItem(var C_NPC npc, var instance par1) {};
func int Npc_IsPlayer(var C_NPC npc) {};
func int Npc_KnowsPlayer(var C_NPC npc, var instance par1) {};
func void Npc_SetKnowsPlayer(var C_NPC npc, var instance par1) {};
func int Npc_IsInfightMode(var C_NPC npc, var int par1) {};
func int Npc_Isaiming(var C_NPC npc, var instance par1) {};
func int Npc_startItemreactmodules(var C_NPC npc, var instance par1, var instance par2) {};
func int Npc_Hasoffered(var C_NPC npc, var instance par1, var int par2) {};
func void equipItem(var instance par0, var int par1) {};
func void Npc_SettofistMode(var C_NPC npc) {};
func void Npc_SettofightMode(var C_NPC npc, var int par1) {};
func int Npc_Isdead(var C_NPC npc) {};
func void AI_StartState(var instance par0, var func par1, var int par2, var string par3) {};
func void AI_ContinueRoutine(var instance par0) {};
func int Npc_GetStateTime(var instance par0) {};
func void Npc_SetStateTime(var instance par0, var int par1) {};
func void AI_Output(var instance par0, var instance par1, var string par2) {};
func void AI_OutputSvm(var instance par0, var instance par1, var string par2) {};
func void AI_OutputSvm_Overlay(var instance par0, var instance par1, var string par2) {};
func void AI_PlayCutscene(var instance par0, var string par1) {};
func void AI_CanSeeNpc(var instance par0, var instance par1, var func par2) {};
func void AI_Wait(var instance par0, var float par1) {};
func void AI_WaitMs(var instance par0, var int par1) {};
func void AI_WaitTillEnd(var instance par0, var instance par1) {};
func void AI_AlignToWP(var instance par0) {};
/// @param slf Target Npc  
/// @param walkMode [NPC_RUN, NPC_WALK, NPC_SNEAK, NPC_RUN_WEAPON, NPC_WALK_WEAPON, NPC_SNEAK_WEAPON] The Walkmode
func void AI_SetWalkMode(var instance slf, var int walkMode) {};
func void AI_PlayAni(var instance par0, var string par1) {};
func void AI_PlayAniBS(var instance par0, var string par1, var int par2) {};
func void AI_GoToWP(var instance par0, var string par1) {};
func void AI_Teleport(var instance par0, var string par1) {};
func void AI_GoToItem(var instance par0, var instance par1) {};
func void AI_GoToNpc(var instance par0, var instance par1) {};
func void AI_AlignToFP(var instance par0) {};
func void AI_GoToFP(var instance par0, var string par1) {};
func int Npc_IsOnFP(var instance par0, var string par1) {};
func void AI_GoToNextFP(var instance par0, var string par1) {};
func void AI_GoTosound(var instance par0) {};
func void AI_TakeItem(var instance par0, var instance par1) {};
func void AI_DropItem(var instance par0, var int par1) {};
func void AI_DrawWeapon(var instance par0) {};
func void AI_RemoveWeapon(var instance par0) {};
func int Npc_HasRangedweaponwithammo(var instance par0) {};
func int Npc_HasEquippedWeapon(var instance par0) {};
func int Npc_HasEquippedMeleeWeapon(var instance par0) {};
func int Npc_HasEquippedRangedWeapon(var instance par0) {};
func int Npc_HasEquippedArmor(var instance par0) {};
func int Npc_HasReadiedWeapon(var instance par0) {};
func int Npc_HasReadiedMeleeWeapon(var instance par0) {};
func int Npc_HasReadiedRangedWeapon(var instance par0) {};
func int Npc_GetTrueGuild(var instance par0) {};
func int Npc_SetTrueGuild(var instance par0, var int par1) {};
func int Npc_AreWeStronger(var instance par0, var instance par1) {};
func int Npc_GetTarget(var instance par0) {};
func int Npc_GetNextTarget(var instance par0) {};
func instance Npc_GetlookatTarget(var instance par0) {};
func int Npc_IsNextTargetAvailable(var instance par0) {};
func void Npc_SetTarget(var instance par0, var instance par1) {};
func int Npc_GetBodyState(var instance par0) {};
func int Npc_HasBodyflag(var instance par0, var int par1) {};
func int Npc_IsInCutscene(var instance par0) {};
func int Npc_IsVoiceActive(var instance par0) {};
func void Npc_StopAni(var instance par0, var string par1) {};
func string Npc_GetDetectedmob(var instance par0) {};
func void Npc_PlayAni(var instance par0, var string par1) {};
func int Npc_IsDetectedMobOwnedByNpc(var instance par0, var instance par1) {};
func int Npc_IsDetectedMobOwnedByGuild(var instance par0, var int par1) {};
func int Wld_GetMobState(var instance par0, var string par1) {};
func void Npc_ClearAiQueue(var instance par0) {};
func int InfoManager_Hasfinished() {};
func void AI_StopProcessInfos(var instance par0) {};
func void AI_ProcessInfos(var instance par0) {};
func void info_AddChoice(var int par0, var string par1, var func par2) {};
func void info_ClearChoices(var int par0) {};
func int Npc_KnowsInfo(var instance par0, var int par1) {};
func int Npc_CheckInfo(var instance par0, var int par1) {};
func int Npc_GiveInfo(var instance par0, var int par1) {};
func int Npc_GetTalentSkill(var instance par0, var int par1) {};
func int Npc_GetTalentValue(var instance par0, var int par1) {};
func void Npc_SetTalentSkill(var instance par0, var int par1, var int par2) {};
func void Npc_SetTalentValue(var instance par0, var int par1, var int par2) {};
func void TAL_Configure(var int par0, var int par1) {};
func string Npc_GetNearestWP(var c_npc self) {};
func string Npc_GetNextWP(var c_npc self) {};
func int Npc_IsWayBlocked(var instance par0) {};
func instance Npc_GetReadiedWeapon(var instance par0) {};
func instance Npc_GetEquippedMeleeWeapon(var instance par0) {};
func instance Npc_GetEquippedRangedWeapon(var instance par0) {};
func instance Npc_GetEquippedArmor(var instance par0) {};
func int AI_EquipBestMeleeWeapon(var instance par0) {};
func int AI_EquipBestRangedWeapon(var instance par0) {};
func void AI_EquipBestArmor(var instance par0) {};
func void AI_UnequipWeapons(var instance par0) {};
func void AI_UnequipArmor(var instance par0) {};
func void AI_EquipArmor(var instance par0, var int par1) {};
func void AI_ReadyMeleeWeapon(var instance par0) {};
func void AI_ReadyRangedWeapon(var instance par0) {};
func void AI_TurnAway(var instance par0, var instance par1) {};
func void AI_TurnToNpc(var instance par0, var instance par1) {};
func void AI_WhirlAround(var instance par0, var instance par1) {};
func void AI_WhirlAroundToSource(var instance par0) {};
func void AI_TurnToSound(var instance par0) {};
func void AI_QuickLook(var instance par0, var instance par1) {};
func void AI_LookAt(var instance par0, var string par1) {};
func void AI_LookAtNpc(var instance par0, var instance par1) {};
func void AI_StopLookAt(var instance par0) {};
func void AI_PointAt(var instance par0, var string par1) {};
func void AI_PointAtNpc(var instance par0, var instance par1) {};
func void AI_StopPointAt(var instance par0) {};
func void AI_StandUp(var instance par0) {};
func void AI_StandUpQuick(var instance par0) {};
func void AI_Flee(var instance par0) {};
func void AI_AimAt(var instance par0, var instance par1) {};
func void AI_StopAim(var instance par0) {};
func void AI_ShootAt(var instance par0, var instance par1) {};
func void AI_Defend(var instance par0) {};
func void AI_CombatReactToDamage(var instance par0) {};
func void AI_ReadySpell(var instance par0, var int par1, var int par2) {};
func void AI_UnreadySpell(var instance par0) {};
func int Npc_HasSpell(var instance par0, var int par1) {};
func void AI_Attack(var instance par0) {};
func void AI_FinishingMove(var instance par0, var instance par1) {};
func void AI_Dodge(var instance par0) {};
func void AI_UseItem(var instance par0, var int par1) {};
func void AI_UseItemToState(var instance par0, var int par1, var int par2) {};
func int Npc_RefuseTalk(var instance par0) {};
func void Npc_SetRefuseTalk(var instance par0, var int par1) {};
func void AI_Ask(var instance par0, var func par1, var func par2) {};
func void AI_AskText(var instance par0, var func par1, var func par2, var string par3, var string par4) {};
func void AI_WaitForQuestion(var instance par0, var func par1) {};
func int Hlp_IsItem(var instance par0, var int par1) {};
func int Hlp_GetInstanceId(var instance par0) {};
func int Hlp_Random(var int par0) {};
func int Hlp_StrCmp(var string par0, var string par1) {};
func instance Hlp_GetNpc(var int par0) {};
func int Hlp_IsValidNpc(var instance par0) {};
func int Hlp_IsValidItem(var instance par0) {};
func void AI_Snd_Play(var instance par0, var string par1) {};
func void AI_Snd_Play3d(var instance par0, var instance par1, var string par2) {};
func void Snd_Play(var string par0) {};
func void Snd_Play3d(var instance par0, var string par1) {};
func int Snd_GetDistToSource(var instance par0) {};
func int Snd_IsSourceNpc(var instance par0) {};
func int Snd_IsSourceItem(var instance par0) {};
func int Npc_CanSeeSource(var instance par0) {};
func int Mis_GetStatus(var int par0) {};
func void Mis_SetStatus(var int par0, var int par1) {};
func int Mis_OnTime(var int par0) {};
/// Creates a new log topic with the name `topicName` under the section `logSection`
/// 
/// @param topicName unique string used to identifiy and name the topic
/// @param logSection [LOG_MISSION, LOG_NOTE] indicates in which section to create the topic
func void Log_CreateTopic(var string topicName, var int logSection) {};
/// Creates a new log topic with the name `topicName` under the section `logSection`
/// 
/// @param topicName unique string used to identifiy and name the topic
/// @param text the text
func void Log_AddEntry(var string topicName, var string text) {};
/// Creates a new log topic with the name `topicName` under the section `logSection`
/// 
/// @param topicName unique string used to identifiy and name the topic
/// @param status [LOG_RUNNING, LOG_SUCCESS, LOG_FAILED, LOG_OBSOLETE] the new status
func void Log_SetTopicStatus(var string topicName, var int status) {};
func void Mis_AddMissionEntry(var instance par0, var string par1) {};
func void Mis_RemoveMission(var instance par0) {};
func int Npc_CheckAvailableMission(var instance par0, var int par1, var int par2) {};
func int Npc_CheckRunningMission(var instance par0, var int par1) {};
func int Npc_IsDrawingWeapon(var instance par0) {};
func int Npc_IsDrawingSpell(var instance par0) {};
func int Npc_CheckOfferMission(var instance par0, var int par1) {};
func void Mdl_SetVisual(var instance par0, var string par1) {};
func void Mdl_SetVisualBody(var instance par0, var string par1, var int par2, var int par3, var string par4, var int par5, var int par6, var int par7) {};
func void Mdl_ApplyOverlayMds(var instance par0, var string par1) {};
func void Mdl_ApplyOverlayMdsTimed(var instance par0, var string par1, var int par2) {};
func void Mdl_RemoveOverlayMds(var instance par0, var string par1) {};
func void Mdl_ApplyRandomAni(var instance par0, var string par1, var string par2) {};
func void Mdl_ApplyRandomAniFreq(var instance par0, var string par1, var float par2) {};
func void Mdl_SetModelScale(var instance par0, var float par1, var float par2, var float par3) {};
func void Mdl_SetModelFatness(var instance par0, var float par1) {};
func void Mdl_StartFaceAni(var instance par0, var string par1, var float par2, var float par3) {};
func void Mdl_ApplyRandomFaceAni(var instance par0, var string par1, var float par2, var float par3, var float par4, var float par5, var float par6) {};
func int Wld_IsTime(var int par0, var int par1, var int par2, var int par3) {};
func int Wld_GetDay() {};
func int Wld_IsRaining() {};
func void Wld_SetTime(var int par0, var int par1) {};
func void Wld_InsertNpc(var int par0, var string par1) {};
func void Wld_SpawnNpcRange(var instance par0, var int par1, var int par2, var float par3) {};
func void Wld_PlayEffect(var string effectInstance, var instance originVob, var instance targetVob, var int effectLevel, var int damage, var int damageType, var int bIsProjectile) {};
func void Wld_StopEffect(var string par0) {};
func void AI_PlayFx(var instance par0, var instance par1, var string par2) {};
func void AI_StopFx(var instance par0, var string par1) {};
func void Wld_RemoveNpc(var int par0) {};
func void Wld_InsertNpcAndRespawn(var int par0, var string par1, var int par2) {};
func void Wld_InsertItem(var int par0, var string par1) {};
func void Wld_InsertObject(var string par0, var string par1) {};
func int Wld_RemoveItem(var instance par0) {};
func void Wld_ExchangeGuildAttitudes(var string par0) {};
func void Wld_SetObjectRoutine(var int par0, var int par1, var string par2, var int par3) {};
func void Wld_SetMobRoutine(var int par0, var int par1, var string par2, var int par3) {};
func void Wld_SendTrigger(var string par0) {};
func void Wld_SendUntrigger(var string par0) {};
func int Npc_OwnedByNpc(var instance par0, var instance par1) {};
func int Npc_OwnedByGuild(var instance par0, var int par1) {};
func void AI_TakeMob(var instance par0, var string par1) {};
func void AI_DropMob(var instance par0) {};
func int AI_UseMob(var instance par0, var string par1, var int par2) {};
func void Mob_CreateItems(var string par0, var int par1, var int par2) {};
func int Mob_HasItems(var string par0, var int par1) {};
func int Doc_Create() {};
func int Doc_Createmap() {};
func void Doc_SetPages(var int par0, var int par1) {};
func void Doc_SetPage(var int par0, var int par1, var string par2, var int par3) {};
func void Doc_SetFont(var int par0, var int par1, var string par2) {};
func void Doc_SetLevel(var int par0, var string par1) {};
func void Doc_SetLevelCoords(var int par0, var int par1, var int par2, var int par3, var int par4) {};
func void Doc_SetMargins(var int par0, var int par1, var int par2, var int par3, var int par4, var int par5, var int par6) {};
func void Doc_PrintLine(var int par0, var int par1, var string par2) {};
func void Doc_PrintLines(var int par0, var int par1, var string par2) {};
func void Doc_Show(var int par0) {};
func void Doc_Open(var string par0) {};
func void Doc_Font(var string par0) {};
func void Doc_Print(var string par0) {};
func void Doc_MapCoordinates(var string par0, var float par1, var float par2, var float par3, var float par4, var float par5, var float par6, var float par7, var float par8) {};
func void TA(var instance par0, var int par1, var int par2, var func par3, var string par4) {};
func void TA_Min(var instance par0, var int par1, var int par2, var int par3, var int par4, var func par5, var string par6) {};
func void TA_Cs(var instance par0, var string par1, var string par2) {};
func void TA_BeginOverlay(var instance par0) {};
func void TA_EndOverlay(var instance par0) {};
func void TA_RemoveOverlay(var instance par0) {};
func void Npc_ExchangeRoutine(var instance par0, var string par1) {};
func void RTN_Exchange(var string par0, var string par1) {};
func void PERC_SetRange(var int par0, var int par1) {};
func void Npc_SetPercTime(var instance par0, var float par1) {};
func void Npc_PercEnable(var instance par0, var int par1, var func par2) {};
func void Npc_PercDisable(var instance par0, var int par1) {};
func void Npc_SendPassivePerc(var instance slf, var int perc, var C_NPC vic, var C_NPC oth) {};
func void Npc_SendSinglePerc(var instance par0, var instance par1, var int par2) {};
func void Npc_PerceiveAll(var instance par0) {};
func void Wld_AssignRoomToGuild(var string par0, var int par1) {};
func void Wld_AssignRoomToNpc(var string par0, var instance par1) {};
func instance Wld_GetPlayerportalowner() {};
func int Wld_GetPlayerPortalGuild() {};
func instance Wld_GetFormerPlayerPortalOwner() {};
func int Wld_GetFormerPlayerportalGuild() {};
func int Npc_IsPlayerInMyRoom(var instance par0) {};
func int Npc_IsInPlayersRoom(var instance par0) {};
func int Npc_WasPlayerInMyRoom(var instance par0) {};
func instance Npc_GetPortalOwner(var instance par0) {};
func int Npc_GetPortalGuild(var instance par0) {};
func int Hlp_CutscenePlayed(var string par0) {};
func int Game_InitGerman() {};
func int Game_InitEnglish() {};
func int Game_InitEngIntl() {};
