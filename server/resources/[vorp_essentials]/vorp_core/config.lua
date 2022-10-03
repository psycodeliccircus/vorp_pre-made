----------------------------------------------------------------------------
------------           VORP SHARED CONFIG                       ------------
----------------------------------------------------------------------------

Config = {
  ----------------------------------------------------------------------------
  ----------------------- SERVER MANAGEMENT -------------------------------------
  autoUpdateDB = true,

  ----------------------------------------------------------------------------
  ----------------------- STARTING POINT -------------------------------------
  initGold                 = 0.0,
  initMoney                = 200.0,
  initRol                  = 0.0,
  initXp                   = 0,
  initJob                  = "unemployed", -- leave it like this
  initJobGrade             = 0, -- leave it like this
  initGroup                = "user", -- leave it like this
  Whitelist                = false,
  AllowWhitelistAutoUpdate = false,
  maxHealth                = 4, -- 10 is FULL 0 IS EMPTY define max outer core for players
  maxStamina               = 4, -- 10 is FULL 0 IS EMPTY define max outer core for players
  PVP                      = true, -- Can players attack/hurt one another
  PVPToggle                = true, -- If true, players can set their own pvp state
  savePlayersTimer         = 10000, -- this will tell the core in how many miliseconds should all players be saved to the database, decreasing may reduce performance
  showplayerIDwhenfocus    = true, -- set false will show steam name when focus on another player RMB
  disableAutoAIM           = true, -- if false players with controllers will have autoaim just like in rdr2
  ------------------------------------------------------------------------------
  --------------------------- MULTICHARACTER -----------------------------------
  SaveSteamNameDB          = false, -- TRUE if you want save steamname on character DB when player drop (need to update SQL)
  UseCharPermission        = false, --(do not use this right now) TRUE if you want give multicharacter on selected players (need to update SQL) | if you change TRUE to FALSE player logs with first character created
  MaxCharacters            = 5, --MAX ALLOWED TO BE CREATED [if UseCharPermission = true, SELECTED players(with command) can create MaxCharacters characters / if UseCharPermission = false, players can create MaxCharacters characters]

  ------------------------------------------------------------------------------
  ------------------------------ UI CORES --------------------------------------
  HideOnlyDEADEYE = true,
  HidePlayersCore = false,
  HideHorseCores = false,

  ------------------------------------------------------------------------------
  ------------------------------ WEBHOOKS --------------------------------------


  webhookColor = 16711680, --EMBED COLOR
  name         = "VORP", --NAME OF EMBED
  logo         = "https://via.placeholder.com/30x30", --HEAD LOGO
  footerLogo   = "https://via.placeholder.com/30x30", --FOOTER LOGO
  Avatar       = "https://via.placeholder.com/30x30", -- AVATAR LOGO


  ---------------------------- WEBHOOK FOR EACH LOG -----------------------------
  --CHANGE THE LINKS
  -- delete what you dont want or add nil
  Logs = {
    SetgroupWebhook   = "", --SETJOB
    SetjobWebhook     = "", --SETGROUP
    AddmoneyWebhook   = "", --ADDMONEY
    DelMoneyWebhook   = "", --DELMONEY
    AddItemsWebhook   = "", --ADDITEMS
    AddWeaponsWebhook = "", --ADDWEAPONS
    DelWagonsWebhook  = "", --DELWAGONS
    TpmWebhook        = "", --TPM
    DelHorseWebhook   = "", --DELHORSE
    HealPlayerWebhook = "", --HEALPLAYER
    ReviveWebhook     = "", --REVIVE
    WhitelistWebhook  = "", --WHITELIST
    BanWarnWebhook    = "", --BANS/WARNS
    NewPlayerWebhook  = "", --NEWPLAYER
    CharPermWebhook   = "", --CHARPERMS
  },

  ------------------------------------------------------------------------------
  ---------------------------- VOICE -------------------------------------------
  ActiveVoiceChat   = false,
  KeySwapVoiceRange = 0x80F28E95, --[L] KEY
  DefaultVoiceRange = 5.0,
  VoiceRanges       = { 2.0, 5.0, 12.0 },

  ------------------------------------------------------------------------------
  ------------------------- SHOW OR HIDE UI's ----------------------------------

  HideUi            = true, --show or hide the UI includes  gold cash ID and level bar  the cash gold ID are now being displayed in the inventory. you can disable this one if yo u like it more
  mapTypeOnFoot     = 3, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on foot
  mapTypeOnMount    = 3, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on horse
  enableTypeRadar   = false, --- if true the above will work, if false players can choose their radar type in the game settings.
  Loadinscreen      = true, --ENABLE LOADING SCREENS on spawn and while spawn dead
  LoadinScreenTimer = 10000, -- miliseconds
  -------------------------------------------------------------------------------
  ------------------------------- RESPAWN ---------------------------------------

  HealthOnRespawn = 500, --Player's health when respawned in hospital (MAX = 500)
  HealthOnResurrection = 100, --Player's health when resurrected (MAX = 500)
  DisableRecharge = true, --Disable auto recharge of health outer core (real ped health)
  RespawnTime = 10, --seconds
  RespawnKey = 0xDFF812F9, --[E] KEY
  RespawnTitleFont = 1, -- for the draw text message
  RespawnSubTitleFont = 1, -- for the draw text message sub title font
  CombatLogDeath = true, -- people who combat log now spawn in dead rather than force spawned
  ShowUiDeath = true, -- show or hide the UI if player is dead
  camDeath = false, -- enable or disable the camera death function
  sprite = true, --- enable text with sprite or disable
  spriteGrey = false, -- if set to false will enable RED sprite true will be grey

  hospital = {
    Valentine = {
      name = "Valentine",
      x = -283.83,
      y = 806.4,
      z = 119.38,
      h = 321.76
    },
    Saint = {
      name = "Saint",
      x = 2721.4562,
      y = -1446.0975,
      z = 46.2303,
      h = 321.76
    },
    Armadillo = {
      name = "Armadillo",
      x = -3742.5,
      y = -2600.9,
      z = -13.23,
      h = 321.76
    },
    bw = {
      name = "bw",
      x = -723.9527,
      y = -1242.8358,
      z = 44.7341,
      h = 321.76
    },
    rhodes = {
      name = "rhodes",
      x = 1229.0,
      y = -1306.1,
      z = 76.9,
      h = 321.76
    },
  },
  -----------------------------------------------------------------------------
  HeadId = false,
  HeadIdDistance = 15,
  ModeKey = true,
  KeyShowIds = "0x8CC9CD42", -- Press X
  ActiveEagleEye = true,
  ActiveDeadEye = false,
  TimeZoneDifference = 1, -- Your time zone difference with UTC in winter time

  ----------------------------------------------------------------------------
  --------------------------- COMMAND PERMISSION -----------------------------
  Group = {
    Admin = "admin", --- group for all commands
    Mod = "moderator", --- second group for all commands

  },

  --------------------------------------------------------------------------------------
  -----------------------------BUILT IN RICH PRESENCE DISCORD --------------------------
  maxplayers = 128, -- change to the number of players that can get in to your server
  appid = nil, -- Application ID (Replace this with you own)
  biglogo = "synred", -- image assets name for the "large" icon.
  biglogodesc = " Redm Server Conectar: ", -- text when hover over image
  smalllogo = "smallboy", -- image assets name for the "small" icon.(OPTIONAL)
  smalllogodesc = "Junte-se a nós para passar um bom tempo", -- text when hover over image
  discordlink = "https://discord.gg/", -- discord link
  richpresencebutton = "Entrar no Discord", --set button text for Rich Presence Button
  shownameandid = true, --show player steam name and id


  ---------------------------------------------------------------------------------------
  ------------------------------- TRANSLATE ---------------------------------------------
  Langs = {
    IsConnected        = "🚫 Conta duplicada conectada (steam | rockstar)",
    NoSteam            = "🚫 Você precisa abrir o Steam, abra o Steam e reinicie o RedM",
    NoInWhitelist      = "🚫 Você não está na lista de permissões. Envie no canal de discórdia #user-id seu user-id: ",
    NoPermissions      = "Você não tem permissões suficientes",
    CheckingIdentifier = "Verificação de identificadores",
    LoadingUser        = "Carregando usuário",
    BannedUser         = "Você está banido até ",
    DateTimeFormat     = "%d/%m/%y %H:%M:%S", -- Set wished DateTimeFormat for output in ban notification
    TimeZone           = " CET", -- Set your timezone
    DropReasonBanned   = "Você foi banido do servidor até ",
    Warned             = "Você foi avisado",
    Unwarned           = "You were unwarned",
    TitleOnDead        = "Faça /alertdoctor no chat para solicitar auxílio médico",
    SubTitleOnDead     = "Você pode reaparecer em %s segundos",
    RespawnIn          = "Você pode reaparecer em ",
    SecondsMove        = " segundos",
    YouAreCarried      = "Você está sendo carregado por uma pessoa",
    VoiceRangeChanged  = "O intervalo do bate-papo por voz foi alterado para %s medidores",
    promptLabel        = "Respawn", -- prompt label.
    prompt             = "Pressionar", -- prompt group label
    wayPoint           = "VORP: Você precisa definir um waypoint primeiro!",
    mustBeSeated       = "VORP: Você deve estar no banco do motorista!",
    wagonInFront       = "VORP: Você deve estar sentado ou perto de um vagão para excluí-lo!",
    cantCarry          = "VORP: Não pode carregar mais armas!",
    Hold               = "AGUENTAR!!",
    Load               = "Você está carregando em",
    Almost             = "Quase lá...",
    Holddead           = "VOCÊ ESTÁ MORTO",
    Loaddead           = "você saiu do servidor morto",
    forcedrespawn      = "VOCÊ SERÁ RENASCIDO",
    forced             = "Porque você deixou o servidor morto",
    sit                = "você precisa ser dominado",
    NotifyChar         = "você deve definir sua altura de char para 1.0, haverá bugs se você não o fizer.",
    NotifyCharSelect   = "Uma vez que você ~e~excluiu ~q~um personagem, não há como voltar atrás!",
    PVPNotifyOn        = "PVP On ",
    PVPNotifyOff       = "PVP Off",
    AddChar            = "Multicaractere adicionado ",
    RemoveChar         = "Multicaractere removido ",
    WrongHex           = "Hex não está no DB ou Hex errado",
    myjob              = "seu trabalho é: ~o~",
    mygrade            = " ~q~grade: ~o~",
    charhours          = "o horário do seu personagem é: ~o~",
    playhours          = "horas jogadas é: ~o~"
  },



}
