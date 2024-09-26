# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 75123:

# Spell ID 75124:

# Spell ID 75126:

# Spell ID 75128:

# Spell ID 75129:

# Spell ID 75132:

# Spell ID 75134:

# Spell ID 75136:

# Spell ID 75138:

# Spell ID 75139: Blastaway [T1]
execute as @e[scores={rr.spell.SpellStore=75139},type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/blastaway
execute as @e[scores={rr.spell.SpellStore=75139},type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 75142:

# Spell ID 75143:

# Spell ID 75146:

# Spell ID 75148:

# Spell ID 75149:

# Spell ID 75162:

# Spell ID 75163:

# Spell ID 75164:

# Spell ID 75168:

# Spell ID 75169:

# Spell ID 75182:

# Spell ID 75183:

# Spell ID 75184:

# Spell ID 75186:

# Spell ID 75189:

# Spell ID 75192:

# Spell ID 75193:

# Spell ID 75194:

# Spell ID 75196:

# Spell ID 75198:

# Spell ID 75213:

# Spell ID 75214:

# Spell ID 75216:

# Spell ID 75218:

# Spell ID 75219:

# Spell ID 75231:

# Spell ID 75234:

# Spell ID 75236:

# Spell ID 75238:

# Spell ID 75239:

# Spell ID 75241:

# Spell ID 75243:

# Spell ID 75246:

# Spell ID 75248:

# Spell ID 75249:

# Spell ID 75261:

# Spell ID 75263:

# Spell ID 75264:

# Spell ID 75268:

# Spell ID 75269:

# Spell ID 75281:

# Spell ID 75283:

# Spell ID 75284:

# Spell ID 75286:

# Spell ID 75289:

# Spell ID 75291:

# Spell ID 75293:

# Spell ID 75294:

# Spell ID 75296:

# Spell ID 75298:

# Spell ID 75312:

# Spell ID 75314:

# Spell ID 75316:

# Spell ID 75318:

# Spell ID 75319:

# Spell ID 75321:

# Spell ID 75324:

# Spell ID 75326:

# Spell ID 75328:

# Spell ID 75329:

# Spell ID 75341:

# Spell ID 75342:

# Spell ID 75346:

# Spell ID 75348:

# Spell ID 75349:

# Spell ID 75361:

# Spell ID 75362:

# Spell ID 75364:

# Spell ID 75368:

# Spell ID 75369:

# Spell ID 75381:

# Spell ID 75382:

# Spell ID 75384:

# Spell ID 75386:

# Spell ID 75389:

# Spell ID 75391:

# Spell ID 75392:

# Spell ID 75394: Fools' Gold
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s unless block ~ ~-1 ~ hopper unless block ~-1 ~-1 ~-1 hopper unless block ~ ~-1 ~-1 hopper unless block ~1 ~-1 ~-1 hopper unless block ~-1 ~-1 ~ hopper unless block ~1 ~-1 ~ hopper unless block ~-1 ~-1 ~1 hopper unless block ~ ~-1 ~1 hopper unless block ~1 ~-1 ~1 hopper run function rr_recast:spells/execution/fools_gold
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~ ~-1 ~ hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~-1 ~-1 ~ hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~1 ~-1 ~ hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~ ~-1 ~-1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~ ~-1 ~1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~-1 ~-1 ~-1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~-1 ~-1 ~1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~1 ~-1 ~-1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=RunicHasFG,type=!#rr_recast:spell_ignore] at @s if block ~1 ~-1 ~1 hopper run function rr_recast:spells/core/spell_failed
execute as @e[scores={rr.spell.SpellStore=75394},tag=!RunicHasFG,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_not_unlocked

# Spell ID 75396:

# Spell ID 75398:

# Spell ID 75412:

# Spell ID 75413:

# Spell ID 75416:

# Spell ID 75418:

# Spell ID 75419:

# Spell ID 75421:

# Spell ID 75423:

# Spell ID 75426:

# Spell ID 75428:

# Spell ID 75429:

# Spell ID 75431:

# Spell ID 75432:

# Spell ID 75436:

# Spell ID 75438:

# Spell ID 75439:

# Spell ID 75461:

# Spell ID 75462:

# Spell ID 75463:

# Spell ID 75468:

# Spell ID 75469:

# Spell ID 75481:

# Spell ID 75482:

# Spell ID 75483:

# Spell ID 75486:

# Spell ID 75489:

# Spell ID 75491:

# Spell ID 75492:

# Spell ID 75493:

# Spell ID 75496:

# Spell ID 75498:

# Spell ID 75612:

# Spell ID 75613:

# Spell ID 75614:

# Spell ID 75618:

# Spell ID 75619:

# Spell ID 75621:

# Spell ID 75623:

# Spell ID 75624:

# Spell ID 75628:

# Spell ID 75629:

# Spell ID 75631:

# Spell ID 75632:

# Spell ID 75634:

# Spell ID 75638:

# Spell ID 75639:

# Spell ID 75641:

# Spell ID 75642:

# Spell ID 75643:

# Spell ID 75648:

# Spell ID 75649:

# Spell ID 75681:

# Spell ID 75682:

# Spell ID 75683:

# Spell ID 75684:

# Spell ID 75689:

# Spell ID 75691:

# Spell ID 75692:

# Spell ID 75693:

# Spell ID 75694:

# Spell ID 75698:

# Spell ID 75812:

# Spell ID 75813:

# Spell ID 75814:

# Spell ID 75816:

# Spell ID 75819:

# Spell ID 75821:

# Spell ID 75823:

# Spell ID 75824:

# Spell ID 75826:

# Spell ID 75829:

# Spell ID 75831:

# Spell ID 75832:

# Spell ID 75834:

# Spell ID 75836:

# Spell ID 75839:

# Spell ID 75841:

# Spell ID 75842:

# Spell ID 75843:

# Spell ID 75846:

# Spell ID 75849:

# Spell ID 75861:

# Spell ID 75862:

# Spell ID 75863:

# Spell ID 75864:

# Spell ID 75869:

# Spell ID 75891:

# Spell ID 75892:

# Spell ID 75893:

# Spell ID 75894:

# Spell ID 75896:

# Spell ID 75912:

# Spell ID 75913:

# Spell ID 75914:

# Spell ID 75916:

# Spell ID 75918:

# Spell ID 75921:

# Spell ID 75923:

# Spell ID 75924:

# Spell ID 75926:

# Spell ID 75928:

# Spell ID 75931:

# Spell ID 75932:

# Spell ID 75934:

# Spell ID 75936:

# Spell ID 75938:

# Spell ID 75941:

# Spell ID 75942:

# Spell ID 75943:

# Spell ID 75946:

# Spell ID 75948:

# Spell ID 75961:

# Spell ID 75962:

# Spell ID 75963:

# Spell ID 75964:

# Spell ID 75968:

# Spell ID 75981:

# Spell ID 75982:

# Spell ID 75983:

# Spell ID 75984:

# Spell ID 75986:

# Spell ID 76123:

# Spell ID 76124:

# Spell ID 76125:

# Spell ID 76128:

# Spell ID 76129:

# Spell ID 76132:

# Spell ID 76134:

# Spell ID 76135:

# Spell ID 76138:

# Spell ID 76139:

# Spell ID 76142:

# Spell ID 76143:

# Spell ID 76145:

# Spell ID 76148:

# Spell ID 76149:

# Spell ID 76152:

# Spell ID 76153:

# Spell ID 76154:

# Spell ID 76158:

# Spell ID 76159:

# Spell ID 76182:

# Spell ID 76183:

# Spell ID 76184:

# Spell ID 76185:

# Spell ID 76189:

# Spell ID 76192:

# Spell ID 76193:

# Spell ID 76194:

# Spell ID 76195:

# Spell ID 76198:

# Spell ID 76213:

# Spell ID 76214:

# Spell ID 76215:

# Spell ID 76218:

# Spell ID 76219:

# Spell ID 76231:

# Spell ID 76234:

# Spell ID 76235:

# Spell ID 76238:

# Spell ID 76239:

# Spell ID 76241:

# Spell ID 76243:

# Spell ID 76245:

# Spell ID 76248:

# Spell ID 76249:

# Spell ID 76251:

# Spell ID 76253:

# Spell ID 76254:

# Spell ID 76258:

# Spell ID 76259:

# Spell ID 76281:

# Spell ID 76283:

# Spell ID 76284:

# Spell ID 76285:

# Spell ID 76289:

# Spell ID 76291:

# Spell ID 76293:

# Spell ID 76294:

# Spell ID 76295:

# Spell ID 76298:

# Spell ID 76312:

# Spell ID 76314:

# Spell ID 76315:

# Spell ID 76318:

# Spell ID 76319:

# Spell ID 76321:

# Spell ID 76324:

# Spell ID 76325:

# Spell ID 76328:

# Spell ID 76329:

# Spell ID 76341:

# Spell ID 76342:

# Spell ID 76345:

# Spell ID 76348:

# Spell ID 76349:

# Spell ID 76351:

# Spell ID 76352:

# Spell ID 76354:

# Spell ID 76358:

# Spell ID 76359:

# Spell ID 76381:

# Spell ID 76382:

# Spell ID 76384:

# Spell ID 76385:

# Spell ID 76389:

# Spell ID 76391:

# Spell ID 76392:

# Spell ID 76394:

# Spell ID 76395:

# Spell ID 76398:

# Spell ID 76412:

# Spell ID 76413:

# Spell ID 76415:

# Spell ID 76418:

# Spell ID 76419:

# Spell ID 76421:

# Spell ID 76423:

# Spell ID 76425:

# Spell ID 76428:

# Spell ID 76429:

# Spell ID 76431:

# Spell ID 76432:

# Spell ID 76435:

# Spell ID 76438:

# Spell ID 76439:

# Spell ID 76451:

# Spell ID 76452:

# Spell ID 76453:

# Spell ID 76458:

# Spell ID 76459:

# Spell ID 76481:

# Spell ID 76482:

# Spell ID 76483:

# Spell ID 76485:

# Spell ID 76489:

# Spell ID 76491:

# Spell ID 76492:

# Spell ID 76493:

# Spell ID 76495:

# Spell ID 76498:

# Spell ID 76512:

# Spell ID 76513:

# Spell ID 76514:

# Spell ID 76518:

# Spell ID 76519:

# Spell ID 76521:

# Spell ID 76523:

# Spell ID 76524:

# Spell ID 76528:

# Spell ID 76529:

# Spell ID 76531:

# Spell ID 76532:

# Spell ID 76534:

# Spell ID 76538:

# Spell ID 76539:

# Spell ID 76541:

# Spell ID 76542:

# Spell ID 76543:

# Spell ID 76548:

# Spell ID 76549:

# Spell ID 76581:

# Spell ID 76582:

# Spell ID 76583:

# Spell ID 76584:

# Spell ID 76589:

# Spell ID 76591:

# Spell ID 76592:

# Spell ID 76593:

# Spell ID 76594:

# Spell ID 76598:

# Spell ID 76812:

# Spell ID 76813:

# Spell ID 76814:

# Spell ID 76815:

# Spell ID 76819:

# Spell ID 76821:

# Spell ID 76823:

# Spell ID 76824:

# Spell ID 76825:

# Spell ID 76829:

# Spell ID 76831:

# Spell ID 76832:

# Spell ID 76834:

# Spell ID 76835:

# Spell ID 76839:

# Spell ID 76841:

# Spell ID 76842:

# Spell ID 76843:

# Spell ID 76845:

# Spell ID 76849:

# Spell ID 76851:

# Spell ID 76852:

# Spell ID 76853:

# Spell ID 76854:

# Spell ID 76859:

# Spell ID 76891:

# Spell ID 76892:

# Spell ID 76893:

# Spell ID 76894:

# Spell ID 76895:

# Spell ID 76912:

# Spell ID 76913:

# Spell ID 76914:

# Spell ID 76915:

# Spell ID 76918:

# Spell ID 76921:

# Spell ID 76923:

# Spell ID 76924:

# Spell ID 76925:

# Spell ID 76928:

# Spell ID 76931:

# Spell ID 76932:

# Spell ID 76934:

# Spell ID 76935:

# Spell ID 76938: Sapping Vines (Unfinished) [T2]
execute as @e[scores={rr.spell.SpellStore=76938},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 76941:

# Spell ID 76942:

# Spell ID 76943:

# Spell ID 76945:

# Spell ID 76948:

# Spell ID 76951:

# Spell ID 76952:

# Spell ID 76953:

# Spell ID 76954:

# Spell ID 76958:

# Spell ID 76981:

# Spell ID 76982:

# Spell ID 76983:

# Spell ID 76984:

# Spell ID 76985:

# Spell ID 78123:

# Spell ID 78124:

# Spell ID 78125:

# Spell ID 78126:

# Spell ID 78129:

# Spell ID 78132:

# Spell ID 78134:

# Spell ID 78135:

# Spell ID 78136:

# Spell ID 78139:

# Spell ID 78142:

# Spell ID 78143:

# Spell ID 78145:

# Spell ID 78146:

# Spell ID 78149:

# Spell ID 78152:

# Spell ID 78153:

# Spell ID 78154:

# Spell ID 78156:

# Spell ID 78159:

# Spell ID 78162:

# Spell ID 78163:

# Spell ID 78164:

# Spell ID 78165:

# Spell ID 78169:

# Spell ID 78192:

# Spell ID 78193:

# Spell ID 78194: Search [T2]
execute as @e[scores={rr.spell.SpellStore=78194},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/search
execute as @e[scores={rr.spell.SpellStore=78194},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/search
execute as @e[scores={rr.spell.SpellStore=78194},tag=RunicTab1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/search
execute as @e[scores={rr.spell.SpellStore=78194},tag=RunicMem1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/search
execute as @e[scores={rr.spell.SpellStore=78194},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=78194},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 78195:

# Spell ID 78196:

# Spell ID 78213:

# Spell ID 78214:

# Spell ID 78215:

# Spell ID 78216:

# Spell ID 78219:

# Spell ID 78231:

# Spell ID 78234:

# Spell ID 78235:

# Spell ID 78236:

# Spell ID 78239:

# Spell ID 78241:

# Spell ID 78243:

# Spell ID 78245:

# Spell ID 78246:

# Spell ID 78249:

# Spell ID 78251:

# Spell ID 78253:

# Spell ID 78254:

# Spell ID 78256:

# Spell ID 78259:

# Spell ID 78261:

# Spell ID 78263:

# Spell ID 78264:

# Spell ID 78265:

# Spell ID 78269:

# Spell ID 78291:

# Spell ID 78293:

# Spell ID 78294:

# Spell ID 78295:

# Spell ID 78296:

# Spell ID 78312:

# Spell ID 78314:

# Spell ID 78315:

# Spell ID 78316:

# Spell ID 78319:

# Spell ID 78321:

# Spell ID 78324:

# Spell ID 78325:

# Spell ID 78326:

# Spell ID 78329:

# Spell ID 78341:

# Spell ID 78342:

# Spell ID 78345:

# Spell ID 78346:

# Spell ID 78349:

# Spell ID 78351:

# Spell ID 78352:

# Spell ID 78354:

# Spell ID 78356:

# Spell ID 78359:

# Spell ID 78361:

# Spell ID 78362:

# Spell ID 78364:

# Spell ID 78365:

# Spell ID 78369:

# Spell ID 78391:

# Spell ID 78392:

# Spell ID 78394:

# Spell ID 78395:

# Spell ID 78396:

# Spell ID 78412:

# Spell ID 78413:

# Spell ID 78415:

# Spell ID 78416:

# Spell ID 78419:

# Spell ID 78421:

# Spell ID 78423:

# Spell ID 78425:

# Spell ID 78426:

# Spell ID 78429:

# Spell ID 78431:

# Spell ID 78432:

# Spell ID 78435:

# Spell ID 78436:

# Spell ID 78439:

# Spell ID 78451:

# Spell ID 78452:

# Spell ID 78453:

# Spell ID 78456:

# Spell ID 78459:

# Spell ID 78461:

# Spell ID 78462:

# Spell ID 78463:

# Spell ID 78465:

# Spell ID 78469:

# Spell ID 78491:

# Spell ID 78492:

# Spell ID 78493:

# Spell ID 78495:

# Spell ID 78496:

# Spell ID 78512:

# Spell ID 78513:

# Spell ID 78514:

# Spell ID 78516:

# Spell ID 78519:

# Spell ID 78521:

# Spell ID 78523:

# Spell ID 78524:

# Spell ID 78526:

# Spell ID 78529:

# Spell ID 78531:

# Spell ID 78532:

# Spell ID 78534:

# Spell ID 78536:

# Spell ID 78539:

# Spell ID 78541:

# Spell ID 78542:

# Spell ID 78543:

# Spell ID 78546:

# Spell ID 78549:

# Spell ID 78561:

# Spell ID 78562:

# Spell ID 78563:

# Spell ID 78564:

# Spell ID 78569:

# Spell ID 78591:

# Spell ID 78592:

# Spell ID 78593:

# Spell ID 78594:

# Spell ID 78596:

# Spell ID 78612:

# Spell ID 78613:

# Spell ID 78614:

# Spell ID 78615:

# Spell ID 78619:

# Spell ID 78621:

# Spell ID 78623:

# Spell ID 78624:

# Spell ID 78625:

# Spell ID 78629:

# Spell ID 78631:

# Spell ID 78632:

# Spell ID 78634:

# Spell ID 78635:

# Spell ID 78639:

# Spell ID 78641:

# Spell ID 78642:

# Spell ID 78643:

# Spell ID 78645:

# Spell ID 78649:

# Spell ID 78651:

# Spell ID 78652:

# Spell ID 78653:

# Spell ID 78654:

# Spell ID 78659:

# Spell ID 78691:

# Spell ID 78692:

# Spell ID 78693:

# Spell ID 78694:

# Spell ID 78695:

# Spell ID 78912:

# Spell ID 78913:

# Spell ID 78914:

# Spell ID 78915:

# Spell ID 78916:

# Spell ID 78921:

# Spell ID 78923:

# Spell ID 78924:

# Spell ID 78925:

# Spell ID 78926:

# Spell ID 78931:

# Spell ID 78932:

# Spell ID 78934:

# Spell ID 78935:

# Spell ID 78936:

# Spell ID 78941:

# Spell ID 78942:

# Spell ID 78943:

# Spell ID 78945:

# Spell ID 78946:

# Spell ID 78951:

# Spell ID 78952:

# Spell ID 78953:

# Spell ID 78954:

# Spell ID 78956:

# Spell ID 78961:

# Spell ID 78962:

# Spell ID 78963:

# Spell ID 78964:

# Spell ID 78965:

# Spell ID 79123:

# Spell ID 79124:

# Spell ID 79125:

# Spell ID 79126:

# Spell ID 79128:

# Spell ID 79132:

# Spell ID 79134:

# Spell ID 79135:

# Spell ID 79136:

# Spell ID 79138:

# Spell ID 79142:

# Spell ID 79143:

# Spell ID 79145:

# Spell ID 79146:

# Spell ID 79148:

# Spell ID 79152:

# Spell ID 79153:

# Spell ID 79154:

# Spell ID 79156:

# Spell ID 79158:

# Spell ID 79162:

# Spell ID 79163:

# Spell ID 79164:

# Spell ID 79165:

# Spell ID 79168:

# Spell ID 79182:

# Spell ID 79183:

# Spell ID 79184:

# Spell ID 79185:

# Spell ID 79186:

# Spell ID 79213:

# Spell ID 79214:

# Spell ID 79215:

# Spell ID 79216:

# Spell ID 79218:

# Spell ID 79231:

# Spell ID 79234:

# Spell ID 79235:

# Spell ID 79236:

# Spell ID 79238:

# Spell ID 79241:

# Spell ID 79243:

# Spell ID 79245:

# Spell ID 79246:

# Spell ID 79248:

# Spell ID 79251:

# Spell ID 79253:

# Spell ID 79254:

# Spell ID 79256:

# Spell ID 79258:

# Spell ID 79261:

# Spell ID 79263:

# Spell ID 79264:

# Spell ID 79265:

# Spell ID 79268:

# Spell ID 79281:

# Spell ID 79283:

# Spell ID 79284:

# Spell ID 79285:

# Spell ID 79286:

# Spell ID 79312:

# Spell ID 79314:

# Spell ID 79315:

# Spell ID 79316:

# Spell ID 79318:

# Spell ID 79321:

# Spell ID 79324:

# Spell ID 79325:

# Spell ID 79326:

# Spell ID 79328:

# Spell ID 79341:

# Spell ID 79342:

# Spell ID 79345:

# Spell ID 79346:

# Spell ID 79348:

# Spell ID 79351:

# Spell ID 79352:

# Spell ID 79354:

# Spell ID 79356:

# Spell ID 79358:

# Spell ID 79361:

# Spell ID 79362:

# Spell ID 79364:

# Spell ID 79365:

# Spell ID 79368:

# Spell ID 79381:

# Spell ID 79382:

# Spell ID 79384:

# Spell ID 79385:

# Spell ID 79386:

# Spell ID 79412:

# Spell ID 79413:

# Spell ID 79415:

# Spell ID 79416:

# Spell ID 79418:

# Spell ID 79421:

# Spell ID 79423:

# Spell ID 79425:

# Spell ID 79426:

# Spell ID 79428:

# Spell ID 79431:

# Spell ID 79432:

# Spell ID 79435:

# Spell ID 79436:

# Spell ID 79438:

# Spell ID 79451:

# Spell ID 79452:

# Spell ID 79453:

# Spell ID 79456:

# Spell ID 79458:

# Spell ID 79461:

# Spell ID 79462:

# Spell ID 79463:

# Spell ID 79465:

# Spell ID 79468:

# Spell ID 79481:

# Spell ID 79482:

# Spell ID 79483:

# Spell ID 79485:

# Spell ID 79486:

# Spell ID 79512:

# Spell ID 79513:

# Spell ID 79514:

# Spell ID 79516:

# Spell ID 79518:

# Spell ID 79521:

# Spell ID 79523:

# Spell ID 79524:

# Spell ID 79526:

# Spell ID 79528:

# Spell ID 79531:

# Spell ID 79532:

# Spell ID 79534:

# Spell ID 79536:

# Spell ID 79538:

# Spell ID 79541:

# Spell ID 79542:

# Spell ID 79543:

# Spell ID 79546:

# Spell ID 79548:

# Spell ID 79561:

# Spell ID 79562:

# Spell ID 79563:

# Spell ID 79564:

# Spell ID 79568:

# Spell ID 79581:

# Spell ID 79582:

# Spell ID 79583:

# Spell ID 79584:

# Spell ID 79586:

# Spell ID 79612:

# Spell ID 79613:

# Spell ID 79614:

# Spell ID 79615:

# Spell ID 79618:

# Spell ID 79621:

# Spell ID 79623:

# Spell ID 79624:

# Spell ID 79625:

# Spell ID 79628:

# Spell ID 79631:

# Spell ID 79632:

# Spell ID 79634:

# Spell ID 79635:

# Spell ID 79638:

# Spell ID 79641:

# Spell ID 79642:

# Spell ID 79643:

# Spell ID 79645:

# Spell ID 79648:

# Spell ID 79651:

# Spell ID 79652:

# Spell ID 79653:

# Spell ID 79654:

# Spell ID 79658:

# Spell ID 79681:

# Spell ID 79682:

# Spell ID 79683:

# Spell ID 79684:

# Spell ID 79685:

# Spell ID 79812:

# Spell ID 79813:

# Spell ID 79814:

# Spell ID 79815:

# Spell ID 79816:

# Spell ID 79821:

# Spell ID 79823:

# Spell ID 79824:

# Spell ID 79825:

# Spell ID 79826:

# Spell ID 79831:

# Spell ID 79832:

# Spell ID 79834:

# Spell ID 79835:

# Spell ID 79836:

# Spell ID 79841:

# Spell ID 79842:

# Spell ID 79843:

# Spell ID 79845:

# Spell ID 79846:

# Spell ID 79851:

# Spell ID 79852:

# Spell ID 79853:

# Spell ID 79854:

# Spell ID 79856:

# Spell ID 79861:

# Spell ID 79862:

# Spell ID 79863:

# Spell ID 79864:

# Spell ID 79865:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0