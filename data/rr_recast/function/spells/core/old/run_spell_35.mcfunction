# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 35124:

# Spell ID 35126: Flurry [T2] | Flurry II [T4]
execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicTab1Held,tag=!RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry
execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicMem1Held,tag=!RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicTab4Held,tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicMem4Held,tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry

execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry_2
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry_2
execute as @e[scores={rr.spell.SpellStore=35126},tag=RunicSpellStarted,tag=RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/flurry_2

execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicSpellStarted,tag=!RunicSpellStarted2,tag=RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicSpellStarted,tag=!RunicSpellStarted2,tag=RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=35126},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 35127:

# Spell ID 35128:

# Spell ID 35129: Storm of Cuts [T1] | Storm of Cuts II [T4]
execute as @e[scores={rr.spell.SpellStore=35129},tag=!RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm
execute as @e[scores={rr.spell.SpellStore=35129},tag=!RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm

execute as @e[scores={rr.spell.SpellStore=35129},tag=RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm_2
execute as @e[scores={rr.spell.SpellStore=35129},tag=RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm_2

execute as @e[scores={rr.spell.SpellStore=35129},tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm
execute as @e[scores={rr.spell.SpellStore=35129},tag=RunicSpellStarted,tag=RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cut_storm_2

execute as @e[scores={rr.spell.SpellStore=35129},type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 35142:

# Spell ID 35146:

# Spell ID 35147:

# Spell ID 35148:

# Spell ID 35149:

# Spell ID 35162:

# Spell ID 35164:

# Spell ID 35167:

# Spell ID 35168:

# Spell ID 35169:

# Spell ID 35172:

# Spell ID 35174:

# Spell ID 35176:

# Spell ID 35178:

# Spell ID 35179:

# Spell ID 35182:

# Spell ID 35184:

# Spell ID 35186:

# Spell ID 35187:

# Spell ID 35189:

# Spell ID 35192:

# Spell ID 35194:

# Spell ID 35196:

# Spell ID 35197:

# Spell ID 35198:

# Spell ID 35214:

# Spell ID 35216:

# Spell ID 35217:

# Spell ID 35218:

# Spell ID 35219:

# Spell ID 35241:

# Spell ID 35246:

# Spell ID 35247:

# Spell ID 35248:

# Spell ID 35249:

# Spell ID 35261:

# Spell ID 35264:

# Spell ID 35267:

# Spell ID 35268:

# Spell ID 35269:

# Spell ID 35271:

# Spell ID 35274:

# Spell ID 35276:

# Spell ID 35278:

# Spell ID 35279:

# Spell ID 35281:

# Spell ID 35284:

# Spell ID 35286:

# Spell ID 35287:

# Spell ID 35289:

# Spell ID 35291:

# Spell ID 35294:

# Spell ID 35296:

# Spell ID 35297:

# Spell ID 35298:

# Spell ID 35412:

# Spell ID 35416:

# Spell ID 35417:

# Spell ID 35418:

# Spell ID 35419:

# Spell ID 35421:

# Spell ID 35426:

# Spell ID 35427:

# Spell ID 35428:

# Spell ID 35429:

# Spell ID 35461:

# Spell ID 35462:

# Spell ID 35467:

# Spell ID 35468:

# Spell ID 35469:

# Spell ID 35471:

# Spell ID 35472:

# Spell ID 35476:

# Spell ID 35478:

# Spell ID 35479:

# Spell ID 35481:

# Spell ID 35482:

# Spell ID 35486:

# Spell ID 35487:

# Spell ID 35489:

# Spell ID 35491:

# Spell ID 35492:

# Spell ID 35496:

# Spell ID 35497:

# Spell ID 35498:

# Spell ID 35612:

# Spell ID 35614:

# Spell ID 35617:

# Spell ID 35618:

# Spell ID 35619:

# Spell ID 35621:

# Spell ID 35624:

# Spell ID 35627:

# Spell ID 35628:

# Spell ID 35629:

# Spell ID 35641:

# Spell ID 35642:

# Spell ID 35647:

# Spell ID 35648:

# Spell ID 35649:

# Spell ID 35671:

# Spell ID 35672:

# Spell ID 35674:

# Spell ID 35678:

# Spell ID 35679:

# Spell ID 35681:

# Spell ID 35682:

# Spell ID 35684:

# Spell ID 35687:

# Spell ID 35689:

# Spell ID 35691:

# Spell ID 35692:

# Spell ID 35694:

# Spell ID 35697:

# Spell ID 35698:

# Spell ID 35712:

# Spell ID 35714:

# Spell ID 35716:

# Spell ID 35718:

# Spell ID 35719:

# Spell ID 35721:

# Spell ID 35724:

# Spell ID 35726:

# Spell ID 35728:

# Spell ID 35729:

# Spell ID 35741:

# Spell ID 35742:

# Spell ID 35746:

# Spell ID 35748:

# Spell ID 35749:

# Spell ID 35761:

# Spell ID 35762:

# Spell ID 35764:

# Spell ID 35768:

# Spell ID 35769:

# Spell ID 35781:

# Spell ID 35782:

# Spell ID 35784:

# Spell ID 35786:

# Spell ID 35789:

# Spell ID 35791:

# Spell ID 35792:

# Spell ID 35794:

# Spell ID 35796:

# Spell ID 35798:

# Spell ID 35812:

# Spell ID 35814:

# Spell ID 35816:

# Spell ID 35817:

# Spell ID 35819:

# Spell ID 35821:

# Spell ID 35824:

# Spell ID 35826:

# Spell ID 35827:

# Spell ID 35829:

# Spell ID 35841:

# Spell ID 35842:

# Spell ID 35846:

# Spell ID 35847:

# Spell ID 35849:

# Spell ID 35861:

# Spell ID 35862:

# Spell ID 35864:

# Spell ID 35867:

# Spell ID 35869:

# Spell ID 35871:

# Spell ID 35872:

# Spell ID 35874:

# Spell ID 35876:

# Spell ID 35879:

# Spell ID 35891:

# Spell ID 35892:

# Spell ID 35894:

# Spell ID 35896:

# Spell ID 35897:

# Spell ID 35912:

# Spell ID 35914:

# Spell ID 35916:

# Spell ID 35917:

# Spell ID 35918:

# Spell ID 35921:

# Spell ID 35924:

# Spell ID 35926:

# Spell ID 35927:

# Spell ID 35928:

# Spell ID 35941:

# Spell ID 35942:

# Spell ID 35946:

# Spell ID 35947:

# Spell ID 35948:

# Spell ID 35961:

# Spell ID 35962:

# Spell ID 35964:

# Spell ID 35967:

# Spell ID 35968:

# Spell ID 35971:

# Spell ID 35972:

# Spell ID 35974:

# Spell ID 35976:

# Spell ID 35978:

# Spell ID 35981:

# Spell ID 35982:

# Spell ID 35984:

# Spell ID 35986:

# Spell ID 35987:

# Spell ID 36124:

# Spell ID 36125:

# Spell ID 36127:

# Spell ID 36128:

# Spell ID 36129:

# Spell ID 36142:

# Spell ID 36145:

# Spell ID 36147:

# Spell ID 36148:

# Spell ID 36149:

# Spell ID 36152:

# Spell ID 36154:

# Spell ID 36157:

# Spell ID 36158:

# Spell ID 36159:

# Spell ID 36172:

# Spell ID 36174:

# Spell ID 36175:

# Spell ID 36178:

# Spell ID 36179:

# Spell ID 36182:

# Spell ID 36184:

# Spell ID 36185:

# Spell ID 36187:

# Spell ID 36189:

# Spell ID 36192:

# Spell ID 36194:

# Spell ID 36195:

# Spell ID 36197:

# Spell ID 36198:

# Spell ID 36214:

# Spell ID 36215:

# Spell ID 36217:

# Spell ID 36218:

# Spell ID 36219:

# Spell ID 36241:

# Spell ID 36245:

# Spell ID 36247:

# Spell ID 36248:

# Spell ID 36249:

# Spell ID 36251:

# Spell ID 36254:

# Spell ID 36257:

# Spell ID 36258:

# Spell ID 36259:

# Spell ID 36271:

# Spell ID 36274:

# Spell ID 36275:

# Spell ID 36278:

# Spell ID 36279:

# Spell ID 36281:

# Spell ID 36284:

# Spell ID 36285:

# Spell ID 36287:

# Spell ID 36289:

# Spell ID 36291:

# Spell ID 36294:

# Spell ID 36295:

# Spell ID 36297:

# Spell ID 36298:

# Spell ID 36412:

# Spell ID 36415:

# Spell ID 36417:

# Spell ID 36418:

# Spell ID 36419:

# Spell ID 36421:

# Spell ID 36425:

# Spell ID 36427:

# Spell ID 36428:

# Spell ID 36429:

# Spell ID 36451:

# Spell ID 36452:

# Spell ID 36457:

# Spell ID 36458:

# Spell ID 36459:

# Spell ID 36471:

# Spell ID 36472:

# Spell ID 36475:

# Spell ID 36478:

# Spell ID 36479:

# Spell ID 36481:

# Spell ID 36482:

# Spell ID 36485:

# Spell ID 36487:

# Spell ID 36489:

# Spell ID 36491:

# Spell ID 36492:

# Spell ID 36495:

# Spell ID 36497:

# Spell ID 36498:

# Spell ID 36512:

# Spell ID 36514:

# Spell ID 36517:

# Spell ID 36518:

# Spell ID 36519:

# Spell ID 36521:

# Spell ID 36524:

# Spell ID 36527:

# Spell ID 36528:

# Spell ID 36529:

# Spell ID 36541:

# Spell ID 36542:

# Spell ID 36547:

# Spell ID 36548:

# Spell ID 36549:

# Spell ID 36571:

# Spell ID 36572:

# Spell ID 36574:

# Spell ID 36578:

# Spell ID 36579:

# Spell ID 36581:

# Spell ID 36582:

# Spell ID 36584:

# Spell ID 36587:

# Spell ID 36589:

# Spell ID 36591:

# Spell ID 36592:

# Spell ID 36594:

# Spell ID 36597:

# Spell ID 36598:

# Spell ID 36712:

# Spell ID 36714:

# Spell ID 36715:

# Spell ID 36718:

# Spell ID 36719:

# Spell ID 36721:

# Spell ID 36724:

# Spell ID 36725:

# Spell ID 36728:

# Spell ID 36729:

# Spell ID 36741:

# Spell ID 36742:

# Spell ID 36745:

# Spell ID 36748:

# Spell ID 36749:

# Spell ID 36751:

# Spell ID 36752:

# Spell ID 36754:

# Spell ID 36758:

# Spell ID 36759:

# Spell ID 36781:

# Spell ID 36782:

# Spell ID 36784:

# Spell ID 36785:

# Spell ID 36789:

# Spell ID 36791:

# Spell ID 36792:

# Spell ID 36794:

# Spell ID 36795:

# Spell ID 36798:

# Spell ID 36812:

# Spell ID 36814:

# Spell ID 36815:

# Spell ID 36817:

# Spell ID 36819:

# Spell ID 36821:

# Spell ID 36824:

# Spell ID 36825:

# Spell ID 36827:

# Spell ID 36829:

# Spell ID 36841:

# Spell ID 36842:

# Spell ID 36845:

# Spell ID 36847:

# Spell ID 36849:

# Spell ID 36851:

# Spell ID 36852:

# Spell ID 36854:

# Spell ID 36857:

# Spell ID 36859:

# Spell ID 36871:

# Spell ID 36872:

# Spell ID 36874:

# Spell ID 36875:

# Spell ID 36879:

# Spell ID 36891:

# Spell ID 36892:

# Spell ID 36894:

# Spell ID 36895:

# Spell ID 36897:

# Spell ID 36912:

# Spell ID 36914:

# Spell ID 36915:

# Spell ID 36917:

# Spell ID 36918:

# Spell ID 36921:

# Spell ID 36924:

# Spell ID 36925:

# Spell ID 36927:

# Spell ID 36928:

# Spell ID 36941:

# Spell ID 36942:

# Spell ID 36945:

# Spell ID 36947:

# Spell ID 36948:

# Spell ID 36951:

# Spell ID 36952:

# Spell ID 36954:

# Spell ID 36957:

# Spell ID 36958:

# Spell ID 36971:

# Spell ID 36972:

# Spell ID 36974:

# Spell ID 36975:

# Spell ID 36978:

# Spell ID 36981:

# Spell ID 36982:

# Spell ID 36984:

# Spell ID 36985:

# Spell ID 36987:

# Spell ID 37124:

# Spell ID 37125:

# Spell ID 37126:

# Spell ID 37128:

# Spell ID 37129:

# Spell ID 37142:

# Spell ID 37145:

# Spell ID 37146:

# Spell ID 37148:

# Spell ID 37149:

# Spell ID 37152:

# Spell ID 37154:

# Spell ID 37156:

# Spell ID 37158:

# Spell ID 37159:

# Spell ID 37162:

# Spell ID 37164:

# Spell ID 37165:

# Spell ID 37168:

# Spell ID 37169:

# Spell ID 37182:

# Spell ID 37184:

# Spell ID 37185:

# Spell ID 37186:

# Spell ID 37189:

# Spell ID 37192:

# Spell ID 37194:

# Spell ID 37195:

# Spell ID 37196:

# Spell ID 37198:

# Spell ID 37214:

# Spell ID 37215:

# Spell ID 37216:

# Spell ID 37218:

# Spell ID 37219:

# Spell ID 37241:

# Spell ID 37245:

# Spell ID 37246:

# Spell ID 37248:

# Spell ID 37249:

# Spell ID 37251:

# Spell ID 37254:

# Spell ID 37256:

# Spell ID 37258:

# Spell ID 37259:

# Spell ID 37261:

# Spell ID 37264:

# Spell ID 37265:

# Spell ID 37268:

# Spell ID 37269:

# Spell ID 37281:

# Spell ID 37284:

# Spell ID 37285:

# Spell ID 37286:

# Spell ID 37289:

# Spell ID 37291:

# Spell ID 37294:

# Spell ID 37295:

# Spell ID 37296:

# Spell ID 37298:

# Spell ID 37412:

# Spell ID 37415:

# Spell ID 37416:

# Spell ID 37418:

# Spell ID 37419:

# Spell ID 37421:

# Spell ID 37425:

# Spell ID 37426:

# Spell ID 37428:

# Spell ID 37429:

# Spell ID 37451:

# Spell ID 37452:

# Spell ID 37456:

# Spell ID 37458:

# Spell ID 37459:

# Spell ID 37461:

# Spell ID 37462:

# Spell ID 37465:

# Spell ID 37468:

# Spell ID 37469:

# Spell ID 37481:

# Spell ID 37482:

# Spell ID 37485:

# Spell ID 37486:

# Spell ID 37489:

# Spell ID 37491:

# Spell ID 37492:

# Spell ID 37495:

# Spell ID 37496:

# Spell ID 37498:

# Spell ID 37512:

# Spell ID 37514:

# Spell ID 37516:

# Spell ID 37518:

# Spell ID 37519:

# Spell ID 37521:

# Spell ID 37524:

# Spell ID 37526:

# Spell ID 37528:

# Spell ID 37529:

# Spell ID 37541:

# Spell ID 37542:

# Spell ID 37546:

# Spell ID 37548:

# Spell ID 37549:

# Spell ID 37561:

# Spell ID 37562:

# Spell ID 37564:

# Spell ID 37568:

# Spell ID 37569:

# Spell ID 37581:

# Spell ID 37582:

# Spell ID 37584:

# Spell ID 37586:

# Spell ID 37589:

# Spell ID 37591:

# Spell ID 37592:

# Spell ID 37594:

# Spell ID 37596:

# Spell ID 37598:

# Spell ID 37612:

# Spell ID 37614:

# Spell ID 37615:

# Spell ID 37618:

# Spell ID 37619:

# Spell ID 37621:

# Spell ID 37624:

# Spell ID 37625:

# Spell ID 37628:

# Spell ID 37629:

# Spell ID 37641:

# Spell ID 37642:

# Spell ID 37645:

# Spell ID 37648:

# Spell ID 37649:

# Spell ID 37651:

# Spell ID 37652:

# Spell ID 37654:

# Spell ID 37658:

# Spell ID 37659:

# Spell ID 37681:

# Spell ID 37682:

# Spell ID 37684:

# Spell ID 37685:

# Spell ID 37689:

# Spell ID 37691:

# Spell ID 37692:

# Spell ID 37694:

# Spell ID 37695:

# Spell ID 37698:

# Spell ID 37812:

# Spell ID 37814:

# Spell ID 37815:

# Spell ID 37816:

# Spell ID 37819:

# Spell ID 37821:

# Spell ID 37824:

# Spell ID 37825:

# Spell ID 37826:

# Spell ID 37829:

# Spell ID 37841:

# Spell ID 37842:

# Spell ID 37845:

# Spell ID 37846:

# Spell ID 37849:

# Spell ID 37851:

# Spell ID 37852:

# Spell ID 37854:

# Spell ID 37856:

# Spell ID 37859:

# Spell ID 37861:

# Spell ID 37862:

# Spell ID 37864:

# Spell ID 37865:

# Spell ID 37869:

# Spell ID 37891:

# Spell ID 37892:

# Spell ID 37894:

# Spell ID 37895:

# Spell ID 37896:

# Spell ID 37912:

# Spell ID 37914:

# Spell ID 37915:

# Spell ID 37916:

# Spell ID 37918:

# Spell ID 37921:

# Spell ID 37924:

# Spell ID 37925:

# Spell ID 37926:

# Spell ID 37928:

# Spell ID 37941:

# Spell ID 37942:

# Spell ID 37945:

# Spell ID 37946:

# Spell ID 37948:

# Spell ID 37951:

# Spell ID 37952:

# Spell ID 37954:

# Spell ID 37956:

# Spell ID 37958:

# Spell ID 37961:

# Spell ID 37962:

# Spell ID 37964:

# Spell ID 37965:

# Spell ID 37968:

# Spell ID 37981:

# Spell ID 37982:

# Spell ID 37984:

# Spell ID 37985:

# Spell ID 37986:

# Spell ID 38124:

# Spell ID 38125:

# Spell ID 38126:

# Spell ID 38127:

# Spell ID 38129:

# Spell ID 38142:

# Spell ID 38145:

# Spell ID 38146:

# Spell ID 38147:

# Spell ID 38149:

# Spell ID 38152:

# Spell ID 38154:

# Spell ID 38156:

# Spell ID 38157:

# Spell ID 38159:

# Spell ID 38162:

# Spell ID 38164:

# Spell ID 38165:

# Spell ID 38167:

# Spell ID 38169:

# Spell ID 38172:

# Spell ID 38174:

# Spell ID 38175:

# Spell ID 38176:

# Spell ID 38179:

# Spell ID 38192:

# Spell ID 38194:

# Spell ID 38195:

# Spell ID 38196:

# Spell ID 38197:

# Spell ID 38214:

# Spell ID 38215:

# Spell ID 38216:

# Spell ID 38217:

# Spell ID 38219:

# Spell ID 38241:

# Spell ID 38245:

# Spell ID 38246:

# Spell ID 38247:

# Spell ID 38249:

# Spell ID 38251:

# Spell ID 38254:

# Spell ID 38256:

# Spell ID 38257:

# Spell ID 38259:

# Spell ID 38261:

# Spell ID 38264:

# Spell ID 38265:

# Spell ID 38267:

# Spell ID 38269:

# Spell ID 38271:

# Spell ID 38274:

# Spell ID 38275:

# Spell ID 38276:

# Spell ID 38279:

# Spell ID 38291:

# Spell ID 38294:

# Spell ID 38295:

# Spell ID 38296:

# Spell ID 38297:

# Spell ID 38412:

# Spell ID 38415:

# Spell ID 38416:

# Spell ID 38417:

# Spell ID 38419:

# Spell ID 38421:

# Spell ID 38425:

# Spell ID 38426:

# Spell ID 38427:

# Spell ID 38429:

# Spell ID 38451:

# Spell ID 38452:

# Spell ID 38456:

# Spell ID 38457:

# Spell ID 38459:

# Spell ID 38461:

# Spell ID 38462:

# Spell ID 38465:

# Spell ID 38467:

# Spell ID 38469:

# Spell ID 38471:

# Spell ID 38472:

# Spell ID 38475:

# Spell ID 38476:

# Spell ID 38479:

# Spell ID 38491:

# Spell ID 38492:

# Spell ID 38495:

# Spell ID 38496:

# Spell ID 38497:

# Spell ID 38512:

# Spell ID 38514:

# Spell ID 38516:

# Spell ID 38517:

# Spell ID 38519:

# Spell ID 38521:

# Spell ID 38524:

# Spell ID 38526:

# Spell ID 38527:

# Spell ID 38529:

# Spell ID 38541:

# Spell ID 38542:

# Spell ID 38546:

# Spell ID 38547:

# Spell ID 38549:

# Spell ID 38561:

# Spell ID 38562:

# Spell ID 38564:

# Spell ID 38567:

# Spell ID 38569:

# Spell ID 38571:

# Spell ID 38572:

# Spell ID 38574:

# Spell ID 38576:

# Spell ID 38579:

# Spell ID 38591:

# Spell ID 38592:

# Spell ID 38594:

# Spell ID 38596:

# Spell ID 38597:

# Spell ID 38612:

# Spell ID 38614:

# Spell ID 38615:

# Spell ID 38617:

# Spell ID 38619:

# Spell ID 38621:

# Spell ID 38624:

# Spell ID 38625:

# Spell ID 38627:

# Spell ID 38629:

# Spell ID 38641:

# Spell ID 38642:

# Spell ID 38645:

# Spell ID 38647:

# Spell ID 38649:

# Spell ID 38651:

# Spell ID 38652:

# Spell ID 38654:

# Spell ID 38657:

# Spell ID 38659:

# Spell ID 38671:

# Spell ID 38672:

# Spell ID 38674:

# Spell ID 38675:

# Spell ID 38679:

# Spell ID 38691:

# Spell ID 38692:

# Spell ID 38694:

# Spell ID 38695:

# Spell ID 38697:

# Spell ID 38712:

# Spell ID 38714:

# Spell ID 38715:

# Spell ID 38716:

# Spell ID 38719:

# Spell ID 38721:

# Spell ID 38724:

# Spell ID 38725:

# Spell ID 38726:

# Spell ID 38729:

# Spell ID 38741:

# Spell ID 38742:

# Spell ID 38745:

# Spell ID 38746:

# Spell ID 38749:

# Spell ID 38751:

# Spell ID 38752:

# Spell ID 38754:

# Spell ID 38756:

# Spell ID 38759:

# Spell ID 38761:

# Spell ID 38762:

# Spell ID 38764:

# Spell ID 38765:

# Spell ID 38769:

# Spell ID 38791:

# Spell ID 38792:

# Spell ID 38794:

# Spell ID 38795:

# Spell ID 38796:

# Spell ID 38912:

# Spell ID 38914:

# Spell ID 38915:

# Spell ID 38916:

# Spell ID 38917:

# Spell ID 38921:

# Spell ID 38924:

# Spell ID 38925:

# Spell ID 38926:

# Spell ID 38927:

# Spell ID 38941:

# Spell ID 38942:

# Spell ID 38945:

# Spell ID 38946:

# Spell ID 38947:

# Spell ID 38951:

# Spell ID 38952:

# Spell ID 38954:

# Spell ID 38956:

# Spell ID 38957:

# Spell ID 38961:

# Spell ID 38962:

# Spell ID 38964:

# Spell ID 38965:

# Spell ID 38967:

# Spell ID 38971:

# Spell ID 38972:

# Spell ID 38974:

# Spell ID 38975:

# Spell ID 38976:

# Spell ID 39124:

# Spell ID 39125:

# Spell ID 39126:

# Spell ID 39127:

# Spell ID 39128:

# Spell ID 39142:

# Spell ID 39145:

# Spell ID 39146:

# Spell ID 39147:

# Spell ID 39148:

# Spell ID 39152:

# Spell ID 39154:

# Spell ID 39156:

# Spell ID 39157:

# Spell ID 39158:

# Spell ID 39162:

# Spell ID 39164:

# Spell ID 39165:

# Spell ID 39167:

# Spell ID 39168:

# Spell ID 39172:

# Spell ID 39174:

# Spell ID 39175:

# Spell ID 39176:

# Spell ID 39178:

# Spell ID 39182:

# Spell ID 39184:

# Spell ID 39185:

# Spell ID 39186:

# Spell ID 39187:

# Spell ID 39214:

# Spell ID 39215:

# Spell ID 39216:

# Spell ID 39217:

# Spell ID 39218:

# Spell ID 39241:

# Spell ID 39245:

# Spell ID 39246:

# Spell ID 39247:

# Spell ID 39248:

# Spell ID 39251:

# Spell ID 39254:

# Spell ID 39256:

# Spell ID 39257:

# Spell ID 39258:

# Spell ID 39261:

# Spell ID 39264:

# Spell ID 39265:

# Spell ID 39267:

# Spell ID 39268:

# Spell ID 39271:

# Spell ID 39274:

# Spell ID 39275:

# Spell ID 39276:

# Spell ID 39278:

# Spell ID 39281:

# Spell ID 39284:

# Spell ID 39285:

# Spell ID 39286:

# Spell ID 39287:

# Spell ID 39412:

# Spell ID 39415:

# Spell ID 39416:

# Spell ID 39417:

# Spell ID 39418:

# Spell ID 39421:

# Spell ID 39425:

# Spell ID 39426:

# Spell ID 39427:

# Spell ID 39428:

# Spell ID 39451:

# Spell ID 39452:

# Spell ID 39456:

# Spell ID 39457:

# Spell ID 39458:

# Spell ID 39461:

# Spell ID 39462:

# Spell ID 39465:

# Spell ID 39467:

# Spell ID 39468:

# Spell ID 39471:

# Spell ID 39472:

# Spell ID 39475:

# Spell ID 39476:

# Spell ID 39478:

# Spell ID 39481:

# Spell ID 39482:

# Spell ID 39485:

# Spell ID 39486:

# Spell ID 39487:

# Spell ID 39512:

# Spell ID 39514:

# Spell ID 39516:

# Spell ID 39517:

# Spell ID 39518:

# Spell ID 39521:

# Spell ID 39524:

# Spell ID 39526:

# Spell ID 39527:

# Spell ID 39528:

# Spell ID 39541:

# Spell ID 39542:

# Spell ID 39546:

# Spell ID 39547:

# Spell ID 39548:

# Spell ID 39561:

# Spell ID 39562:

# Spell ID 39564:

# Spell ID 39567:

# Spell ID 39568:

# Spell ID 39571:

# Spell ID 39572:

# Spell ID 39574:

# Spell ID 39576:

# Spell ID 39578:

# Spell ID 39581:

# Spell ID 39582:

# Spell ID 39584:

# Spell ID 39586:

# Spell ID 39587:

# Spell ID 39612:

# Spell ID 39614:

# Spell ID 39615:

# Spell ID 39617:

# Spell ID 39618:

# Spell ID 39621:

# Spell ID 39624:

# Spell ID 39625:

# Spell ID 39627:

# Spell ID 39628:

# Spell ID 39641:

# Spell ID 39642:

# Spell ID 39645:

# Spell ID 39647:

# Spell ID 39648:

# Spell ID 39651:

# Spell ID 39652:

# Spell ID 39654:

# Spell ID 39657:

# Spell ID 39658:

# Spell ID 39671:

# Spell ID 39672:

# Spell ID 39674:

# Spell ID 39675:

# Spell ID 39678:

# Spell ID 39681:

# Spell ID 39682:

# Spell ID 39684:

# Spell ID 39685:

# Spell ID 39687:

# Spell ID 39712:

# Spell ID 39714:

# Spell ID 39715:

# Spell ID 39716:

# Spell ID 39718:

# Spell ID 39721:

# Spell ID 39724:

# Spell ID 39725:

# Spell ID 39726:

# Spell ID 39728:

# Spell ID 39741:

# Spell ID 39742:

# Spell ID 39745:

# Spell ID 39746:

# Spell ID 39748:

# Spell ID 39751:

# Spell ID 39752:

# Spell ID 39754:

# Spell ID 39756:

# Spell ID 39758:

# Spell ID 39761:

# Spell ID 39762:

# Spell ID 39764:

# Spell ID 39765:

# Spell ID 39768:

# Spell ID 39781:

# Spell ID 39782:

# Spell ID 39784:

# Spell ID 39785:

# Spell ID 39786:

# Spell ID 39812:

# Spell ID 39814:

# Spell ID 39815:

# Spell ID 39816:

# Spell ID 39817:

# Spell ID 39821:

# Spell ID 39824:

# Spell ID 39825:

# Spell ID 39826:

# Spell ID 39827:

# Spell ID 39841:

# Spell ID 39842:

# Spell ID 39845:

# Spell ID 39846:

# Spell ID 39847:

# Spell ID 39851:

# Spell ID 39852:

# Spell ID 39854:

# Spell ID 39856:

# Spell ID 39857:

# Spell ID 39861:

# Spell ID 39862:

# Spell ID 39864:

# Spell ID 39865:

# Spell ID 39867:

# Spell ID 39871:

# Spell ID 39872:

# Spell ID 39874:

# Spell ID 39875:

# Spell ID 39876:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0