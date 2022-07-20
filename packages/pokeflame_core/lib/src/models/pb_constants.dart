class PBTypes {
  final int id;

  const PBTypes(this.id);

  static const normal = PBTypes(1);
  static const fire = PBTypes(2);
  static const water = PBTypes(3);
  static const electric = PBTypes(4);
  static const grass = PBTypes(5);
  static const ice = PBTypes(6);
  static const fighting = PBTypes(7);
  static const poison = PBTypes(8);
  static const ground = PBTypes(9);
  static const flying = PBTypes(10);
  static const psychic = PBTypes(11);
  static const bug = PBTypes(12);
  static const rock = PBTypes(13);
  static const ghost = PBTypes(14);
  static const dragon = PBTypes(15);
  static const dark = PBTypes(16);
  static const steel = PBTypes(17);
  static const fairy = PBTypes(18);
}

enum PBStatuses { sleep, poison, burn, paralysis, frozen }

extension PBStatusesId on PBStatuses {
  int get id => index + 1;
}

enum PBStats { hp, attack, defense, speed, spatk, spdef, accuracy, evasion }

extension PBStatsId on PBStats {
  int get id => index;
}

enum PBWeather { sunnyday, raindance, sandstorm, hail, shadowsky, strongwinds }

extension PBWeatherId on PBWeather {
  int get id => index + 1;
}

enum PBEnvironment {
  none,
  grass,
  tallGrass,
  movingWater,
  stillWater,
  underWater,
  rock,
  cave,
  sand,
}

extension PBEnvironmentId on PBEnvironment {
  int get id => index;
}

enum PBEffects {
  // Effects that can apply to a battler.
  aquaRing,
  attract,
  bide,
  bideDamage,
  bideTarget,
  charge,
  choiceBand,
  confusion,
  counter,
  counterTarget,
  curse,
  defenseCurl,
  disable,
  disableMove,
  echoedVoice,
  embargo,
  encore,
  encoreIndex,
  encoreMove,
  endure,
  flashFire,
  flinch,
  focusEnergy,
  followMe,
  foresight,
  furyCutter,
  futureSight,
  futureSightPokemonIndex,
  futureSightMove,
  gastroAcid,
  grudge,
  healBlock,
  healingWish,
  helpingHand,
  hyperBeam,
  imprison,
  ingrain,
  leechSeed,
  lockOn,
  lockOnPos,
  lunarDance,
  magicCoat,
  magnetRise,
  meanLook,
  metronome,
  minimize,
  miracleEye,
  mirrorCoat,
  mirrorCoatTarget,
  multiTurn,
  multiTurnAttack,
  multiTurnUser,
  nightmare,
  outrage,
  perishSong,
  perishSongUser,
  pinch,
  powerTrick,
  protect,
  protectNegation,
  protectRate,
  pursuit,
  rage,
  revenge,
  rollout,
  roost,
  skyDrop,
  smackDown,
  snatch,
  stockpile,
  stockpileDef,
  stockpileSpDef,
  substitute,
  taunt,
  telekinesis,
  torment,
  toxic,
  trace,
  transform,
  truant,
  twoTurnAttack,
  uproar,
  weightMultiplier,
  wish,
  wishAmount,
  wishMaker,
  yawn,
  illusion,
  bindingBand,
  stickyWeb,
  kingsShield,
  spikyShield,
  fairyLockRate,
  parentalBond,
  round,
  powder,
  electrify,
  meFirst,
  wideGuardCheck,
  wideGuardUser,
  ragePowder,
  magicBounced,
  tracedAbility,
  usingSubstituteRightNow,
  skyDroppee,
  destinyRate,
  banefulBunker,
  beakBlast,
  burnUp,
  clangedScales,
  laserFocus,
  shellTrap,
  speedSwap,
  tantrum,
  throatChop,
  disguise,
  zHeal,
  destinyBond,
  shellTrapTarget,
  belch,
  bouncedMove,
  trickedItem,
  noRetreat,
  tarShot,
  octolock,
  obstruct,
  ballFetch,
  iceFace,

  // These effects apply to a side.
  lightScreen,
  luckyChant,
  mist,
  reflect,
  safeguard,
  spikes,
  stealthRock,
  tailwind,
  toxicSpikes,
  wideGuard,
  quickGuard,
  retaliate,
  craftyShield,
  matBlock,
  auroraVeil,

  // These effects apply to the battle (i.e. both sides).
  gravity,
  magicRoom,
  wonderRoom,
  fairyLock,
  ionDeluge,
  // Additional weather effects.
  harshSunlight,
  heavyRain,
  mudSport,
  waterSport,
}

enum PBMonRoles {
  sweeper,
  physicalWall,
  specialWall,
  lead,
  cleric,
  phazer,
  screener,
  revengeKiller,
  pivot,
  spinner,
  tank,
  batonPasser,
  stallBreaker,
  statusAbsorber,
  trapper,
  weatherSetter,
  fieldSetter,
  ace,
  second,
}

extension PBMonRolesId on PBMonRoles {
  int get id => index;
}
