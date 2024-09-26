# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 61234:

# Spell ID 61235:

# Spell ID 61237:

# Spell ID 61238:

# Spell ID 61239:

# Spell ID 61243:

# Spell ID 61245:

# Spell ID 61247:

# Spell ID 61248:

# Spell ID 61249:

# Spell ID 61253:

# Spell ID 61254:

# Spell ID 61257:

# Spell ID 61258:

# Spell ID 61259:

# Spell ID 61273:

# Spell ID 61274:

# Spell ID 61275:

# Spell ID 61278:

# Spell ID 61279:

# Spell ID 61283:

# Spell ID 61284:

# Spell ID 61285:

# Spell ID 61287:

# Spell ID 61289:

# Spell ID 61293:

# Spell ID 61294:

# Spell ID 61295:

# Spell ID 61297:

# Spell ID 61298:

# Spell ID 61324:

# Spell ID 61325:

# Spell ID 61327:

# Spell ID 61328:

# Spell ID 61329:

# Spell ID 61342:

# Spell ID 61345:

# Spell ID 61347:

# Spell ID 61348:

# Spell ID 61349:

# Spell ID 61352:

# Spell ID 61354:

# Spell ID 61357:

# Spell ID 61358:

# Spell ID 61359:

# Spell ID 61372:

# Spell ID 61374:

# Spell ID 61375:

# Spell ID 61378:

# Spell ID 61379:

# Spell ID 61382:

# Spell ID 61384:

# Spell ID 61385:

# Spell ID 61387:

# Spell ID 61389:

# Spell ID 61392:

# Spell ID 61394:

# Spell ID 61395:

# Spell ID 61397:

# Spell ID 61398:

# Spell ID 61423:

# Spell ID 61425:

# Spell ID 61427:

# Spell ID 61428:

# Spell ID 61429:

# Spell ID 61432:

# Spell ID 61435:

# Spell ID 61437:

# Spell ID 61438:

# Spell ID 61439:

# Spell ID 61452:

# Spell ID 61453:

# Spell ID 61457:

# Spell ID 61458:

# Spell ID 61459: First Wind [T2]
execute as @e[scores={rr.spell.SpellStore=61459},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/first_wind
execute as @e[scores={rr.spell.SpellStore=61459},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/first_wind
execute as @e[scores={rr.spell.SpellStore=61459},tag=RunicTab1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/first_wind
execute as @e[scores={rr.spell.SpellStore=61459},tag=RunicMem1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/first_wind
execute as @e[scores={rr.spell.SpellStore=61459},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=61459},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 61472:

# Spell ID 61473:

# Spell ID 61475:

# Spell ID 61478:

# Spell ID 61479:

# Spell ID 61482:

# Spell ID 61483:

# Spell ID 61485:

# Spell ID 61487:

# Spell ID 61489:

# Spell ID 61492:

# Spell ID 61493:

# Spell ID 61495:

# Spell ID 61497:

# Spell ID 61498:

# Spell ID 61523:

# Spell ID 61524:

# Spell ID 61527:

# Spell ID 61528:

# Spell ID 61529:

# Spell ID 61532:

# Spell ID 61534:

# Spell ID 61537:

# Spell ID 61538:

# Spell ID 61539:

# Spell ID 61542:

# Spell ID 61543:

# Spell ID 61547:

# Spell ID 61548:

# Spell ID 61549:

# Spell ID 61572:

# Spell ID 61573:

# Spell ID 61574:

# Spell ID 61578:

# Spell ID 61579:

# Spell ID 61582:

# Spell ID 61583:

# Spell ID 61584:

# Spell ID 61587:

# Spell ID 61589:

# Spell ID 61592:

# Spell ID 61593:

# Spell ID 61594:

# Spell ID 61597:

# Spell ID 61598:

# Spell ID 61723:

# Spell ID 61724:

# Spell ID 61725:

# Spell ID 61728:

# Spell ID 61729:

# Spell ID 61732:

# Spell ID 61734:

# Spell ID 61735:

# Spell ID 61738:

# Spell ID 61739:

# Spell ID 61742:

# Spell ID 61743:

# Spell ID 61745:

# Spell ID 61748:

# Spell ID 61749:

# Spell ID 61752:

# Spell ID 61753:

# Spell ID 61754:

# Spell ID 61758:

# Spell ID 61759:

# Spell ID 61782:

# Spell ID 61783:

# Spell ID 61784:

# Spell ID 61785:

# Spell ID 61789:

# Spell ID 61792:

# Spell ID 61793:

# Spell ID 61794:

# Spell ID 61795:

# Spell ID 61798:

# Spell ID 61823:

# Spell ID 61824:

# Spell ID 61825:

# Spell ID 61827:

# Spell ID 61829:

# Spell ID 61832:

# Spell ID 61834:

# Spell ID 61835:

# Spell ID 61837:

# Spell ID 61839:

# Spell ID 61842:

# Spell ID 61843:

# Spell ID 61845:

# Spell ID 61847:

# Spell ID 61849:

# Spell ID 61852:

# Spell ID 61853:

# Spell ID 61854:

# Spell ID 61857:

# Spell ID 61859:

# Spell ID 61872:

# Spell ID 61873:

# Spell ID 61874:

# Spell ID 61875:

# Spell ID 61879:

# Spell ID 61892:

# Spell ID 61893:

# Spell ID 61894:

# Spell ID 61895:

# Spell ID 61897:

# Spell ID 61923:

# Spell ID 61924:

# Spell ID 61925:

# Spell ID 61927:

# Spell ID 61928:

# Spell ID 61932:

# Spell ID 61934:

# Spell ID 61935:

# Spell ID 61937:

# Spell ID 61938:

# Spell ID 61942:

# Spell ID 61943:

# Spell ID 61945:

# Spell ID 61947:

# Spell ID 61948:

# Spell ID 61952:

# Spell ID 61953:

# Spell ID 61954:

# Spell ID 61957:

# Spell ID 61958:

# Spell ID 61972:

# Spell ID 61973:

# Spell ID 61974:

# Spell ID 61975:

# Spell ID 61978:

# Spell ID 61982:

# Spell ID 61983:

# Spell ID 61984:

# Spell ID 61985:

# Spell ID 61987:

# Spell ID 62134:

# Spell ID 62135:

# Spell ID 62137:

# Spell ID 62138:

# Spell ID 62139:

# Spell ID 62143:

# Spell ID 62145:

# Spell ID 62147:

# Spell ID 62148:

# Spell ID 62149:

# Spell ID 62153:

# Spell ID 62154:

# Spell ID 62157:

# Spell ID 62158:

# Spell ID 62159:

# Spell ID 62173:

# Spell ID 62174:

# Spell ID 62175:

# Spell ID 62178:

# Spell ID 62179:

# Spell ID 62183:

# Spell ID 62184:

# Spell ID 62185:

# Spell ID 62187:

# Spell ID 62189:

# Spell ID 62193:

# Spell ID 62194:

# Spell ID 62195:

# Spell ID 62197:

# Spell ID 62198:

# Spell ID 62314:

# Spell ID 62315:

# Spell ID 62317:

# Spell ID 62318:

# Spell ID 62319:

# Spell ID 62341:

# Spell ID 62345:

# Spell ID 62347:

# Spell ID 62348:

# Spell ID 62349:

# Spell ID 62351:

# Spell ID 62354:

# Spell ID 62357:

# Spell ID 62358:

# Spell ID 62359:

# Spell ID 62371:

# Spell ID 62374:

# Spell ID 62375:

# Spell ID 62378:

# Spell ID 62379:

# Spell ID 62381:

# Spell ID 62384:

# Spell ID 62385: Tendril Wave [TS | T3]
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/tendril_wave
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/tendril_wave
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/tendril_wave
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=!RunicSpellStarted,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=!RunicSpellStarted,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=62385},tag=RunicHasTW,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=62385},tag=!RunicHasTW] at @s run function rr_recast:spells/execution/spell_not_unlocked

# Spell ID 62387:

# Spell ID 62389:

# Spell ID 62391:

# Spell ID 62394:

# Spell ID 62395:

# Spell ID 62397:

# Spell ID 62398:

# Spell ID 62413:

# Spell ID 62415:

# Spell ID 62417:

# Spell ID 62418:

# Spell ID 62419:

# Spell ID 62431:

# Spell ID 62435:

# Spell ID 62437:

# Spell ID 62438:

# Spell ID 62439:

# Spell ID 62451:

# Spell ID 62453:

# Spell ID 62457:

# Spell ID 62458:

# Spell ID 62459:

# Spell ID 62471:

# Spell ID 62473:

# Spell ID 62475:

# Spell ID 62478:

# Spell ID 62479:

# Spell ID 62481:

# Spell ID 62483:

# Spell ID 62485:

# Spell ID 62487:

# Spell ID 62489:

# Spell ID 62491:

# Spell ID 62493:

# Spell ID 62495:

# Spell ID 62497:

# Spell ID 62498:

# Spell ID 62513:

# Spell ID 62514:

# Spell ID 62517:

# Spell ID 62518:

# Spell ID 62519:

# Spell ID 62531:

# Spell ID 62534:

# Spell ID 62537:

# Spell ID 62538:

# Spell ID 62539:

# Spell ID 62541:

# Spell ID 62543:

# Spell ID 62547:

# Spell ID 62548:

# Spell ID 62549:

# Spell ID 62571:

# Spell ID 62573:

# Spell ID 62574:

# Spell ID 62578:

# Spell ID 62579:

# Spell ID 62581:

# Spell ID 62583:

# Spell ID 62584:

# Spell ID 62587:

# Spell ID 62589:

# Spell ID 62591:

# Spell ID 62593:

# Spell ID 62594:

# Spell ID 62597:

# Spell ID 62598:

# Spell ID 62713:

# Spell ID 62714:

# Spell ID 62715:

# Spell ID 62718:

# Spell ID 62719:

# Spell ID 62731:

# Spell ID 62734:

# Spell ID 62735:

# Spell ID 62738:

# Spell ID 62739:

# Spell ID 62741:

# Spell ID 62743:

# Spell ID 62745:

# Spell ID 62748:

# Spell ID 62749:

# Spell ID 62751:

# Spell ID 62753:

# Spell ID 62754:

# Spell ID 62758:

# Spell ID 62759:

# Spell ID 62781:

# Spell ID 62783:

# Spell ID 62784:

# Spell ID 62785:

# Spell ID 62789:

# Spell ID 62791:

# Spell ID 62793:

# Spell ID 62794:

# Spell ID 62795:

# Spell ID 62798:

# Spell ID 62813:

# Spell ID 62814:

# Spell ID 62815:

# Spell ID 62817:

# Spell ID 62819:

# Spell ID 62831:

# Spell ID 62834:

# Spell ID 62835:

# Spell ID 62837:

# Spell ID 62839:

# Spell ID 62841:

# Spell ID 62843:

# Spell ID 62845:

# Spell ID 62847:

# Spell ID 62849:

# Spell ID 62851:

# Spell ID 62853:

# Spell ID 62854:

# Spell ID 62857:

# Spell ID 62859:

# Spell ID 62871:

# Spell ID 62873:

# Spell ID 62874:

# Spell ID 62875:

# Spell ID 62879:

# Spell ID 62891:

# Spell ID 62893:

# Spell ID 62894:

# Spell ID 62895:

# Spell ID 62897:

# Spell ID 62913:

# Spell ID 62914:

# Spell ID 62915:

# Spell ID 62917:

# Spell ID 62918:

# Spell ID 62931:

# Spell ID 62934:

# Spell ID 62935:

# Spell ID 62937:

# Spell ID 62938:

# Spell ID 62941:

# Spell ID 62943:

# Spell ID 62945:

# Spell ID 62947:

# Spell ID 62948:

# Spell ID 62951:

# Spell ID 62953:

# Spell ID 62954:

# Spell ID 62957:

# Spell ID 62958:

# Spell ID 62971:

# Spell ID 62973:

# Spell ID 62974:

# Spell ID 62975:

# Spell ID 62978:

# Spell ID 62981:

# Spell ID 62983:

# Spell ID 62984:

# Spell ID 62985:

# Spell ID 62987:

# Spell ID 63124:

# Spell ID 63125:

# Spell ID 63127:

# Spell ID 63128:

# Spell ID 63129:

# Spell ID 63142:

# Spell ID 63145:

# Spell ID 63147:

# Spell ID 63148:

# Spell ID 63149:

# Spell ID 63152:

# Spell ID 63154:

# Spell ID 63157:

# Spell ID 63158:

# Spell ID 63159:

# Spell ID 63172:

# Spell ID 63174:

# Spell ID 63175:

# Spell ID 63178:

# Spell ID 63179:

# Spell ID 63182:

# Spell ID 63184:

# Spell ID 63185:

# Spell ID 63187:

# Spell ID 63189:

# Spell ID 63192:

# Spell ID 63194:

# Spell ID 63195:

# Spell ID 63197:

# Spell ID 63198:

# Spell ID 63214:

# Spell ID 63215:

# Spell ID 63217:

# Spell ID 63218:

# Spell ID 63219:

# Spell ID 63241:

# Spell ID 63245:

# Spell ID 63247:

# Spell ID 63248:

# Spell ID 63249:

# Spell ID 63251:

# Spell ID 63254:

# Spell ID 63257:

# Spell ID 63258:

# Spell ID 63259:

# Spell ID 63271:

# Spell ID 63274:

# Spell ID 63275:

# Spell ID 63278:

# Spell ID 63279:

# Spell ID 63281:

# Spell ID 63284:

# Spell ID 63285:

# Spell ID 63287:

# Spell ID 63289:

# Spell ID 63291:

# Spell ID 63294:

# Spell ID 63295:

# Spell ID 63297:

# Spell ID 63298:

# Spell ID 63412:

# Spell ID 63415:

# Spell ID 63417:

# Spell ID 63418:

# Spell ID 63419:

# Spell ID 63421:

# Spell ID 63425:

# Spell ID 63427:

# Spell ID 63428:

# Spell ID 63429:

# Spell ID 63451:

# Spell ID 63452:

# Spell ID 63457:

# Spell ID 63458:

# Spell ID 63459:

# Spell ID 63471:

# Spell ID 63472:

# Spell ID 63475:

# Spell ID 63478:

# Spell ID 63479:

# Spell ID 63481:

# Spell ID 63482:

# Spell ID 63485:

# Spell ID 63487:

# Spell ID 63489:

# Spell ID 63491:

# Spell ID 63492:

# Spell ID 63495:

# Spell ID 63497:

# Spell ID 63498:

# Spell ID 63512:

# Spell ID 63514:

# Spell ID 63517:

# Spell ID 63518:

# Spell ID 63519:

# Spell ID 63521:

# Spell ID 63524:

# Spell ID 63527:

# Spell ID 63528:

# Spell ID 63529:

# Spell ID 63541:

# Spell ID 63542:

# Spell ID 63547:

# Spell ID 63548:

# Spell ID 63549:

# Spell ID 63571:

# Spell ID 63572:

# Spell ID 63574:

# Spell ID 63578:

# Spell ID 63579:

# Spell ID 63581:

# Spell ID 63582:

# Spell ID 63584:

# Spell ID 63587:

# Spell ID 63589:

# Spell ID 63591:

# Spell ID 63592:

# Spell ID 63594:

# Spell ID 63597:

# Spell ID 63598:

# Spell ID 63712:

# Spell ID 63714:

# Spell ID 63715:

# Spell ID 63718:

# Spell ID 63719:

# Spell ID 63721:

# Spell ID 63724:

# Spell ID 63725:

# Spell ID 63728:

# Spell ID 63729:

# Spell ID 63741:

# Spell ID 63742:

# Spell ID 63745:

# Spell ID 63748:

# Spell ID 63749:

# Spell ID 63751:

# Spell ID 63752:

# Spell ID 63754:

# Spell ID 63758:

# Spell ID 63759:

# Spell ID 63781:

# Spell ID 63782:

# Spell ID 63784:

# Spell ID 63785:

# Spell ID 63789:

# Spell ID 63791:

# Spell ID 63792:

# Spell ID 63794:

# Spell ID 63795:

# Spell ID 63798:

# Spell ID 63812:

# Spell ID 63814:

# Spell ID 63815:

# Spell ID 63817:

# Spell ID 63819:

# Spell ID 63821:

# Spell ID 63824:

# Spell ID 63825:

# Spell ID 63827:

# Spell ID 63829:

# Spell ID 63841:

# Spell ID 63842:

# Spell ID 63845:

# Spell ID 63847:

# Spell ID 63849:

# Spell ID 63851:

# Spell ID 63852:

# Spell ID 63854:

# Spell ID 63857:

# Spell ID 63859:

# Spell ID 63871:

# Spell ID 63872:

# Spell ID 63874:

# Spell ID 63875:

# Spell ID 63879:

# Spell ID 63891:

# Spell ID 63892:

# Spell ID 63894:

# Spell ID 63895:

# Spell ID 63897:

# Spell ID 63912:

# Spell ID 63914:

# Spell ID 63915:

# Spell ID 63917:

# Spell ID 63918:

# Spell ID 63921:

# Spell ID 63924:

# Spell ID 63925:

# Spell ID 63927:

# Spell ID 63928:

# Spell ID 63941:

# Spell ID 63942:

# Spell ID 63945:

# Spell ID 63947:

# Spell ID 63948:

# Spell ID 63951:

# Spell ID 63952:

# Spell ID 63954:

# Spell ID 63957:

# Spell ID 63958:

# Spell ID 63971:

# Spell ID 63972:

# Spell ID 63974:

# Spell ID 63975:

# Spell ID 63978:

# Spell ID 63981:

# Spell ID 63982:

# Spell ID 63984:

# Spell ID 63985:

# Spell ID 63987:

# Spell ID 64123:

# Spell ID 64125:

# Spell ID 64127:

# Spell ID 64128:

# Spell ID 64129:

# Spell ID 64132:

# Spell ID 64135:

# Spell ID 64137:

# Spell ID 64138:

# Spell ID 64139:

# Spell ID 64152:

# Spell ID 64153:

# Spell ID 64157:

# Spell ID 64158:

# Spell ID 64159:

# Spell ID 64172:

# Spell ID 64173:

# Spell ID 64175:

# Spell ID 64178:

# Spell ID 64179:

# Spell ID 64182:

# Spell ID 64183:

# Spell ID 64185:

# Spell ID 64187:

# Spell ID 64189:

# Spell ID 64192:

# Spell ID 64193:

# Spell ID 64195:

# Spell ID 64197:

# Spell ID 64198:

# Spell ID 64213:

# Spell ID 64215:

# Spell ID 64217:

# Spell ID 64218:

# Spell ID 64219:

# Spell ID 64231:

# Spell ID 64235:

# Spell ID 64237:

# Spell ID 64238:

# Spell ID 64239:

# Spell ID 64251:

# Spell ID 64253:

# Spell ID 64257:

# Spell ID 64258:

# Spell ID 64259:

# Spell ID 64271:

# Spell ID 64273:

# Spell ID 64275:

# Spell ID 64278:

# Spell ID 64279:

# Spell ID 64281:

# Spell ID 64283:

# Spell ID 64285:

# Spell ID 64287:

# Spell ID 64289:

# Spell ID 64291:

# Spell ID 64293:

# Spell ID 64295:

# Spell ID 64297:

# Spell ID 64298:

# Spell ID 64312:

# Spell ID 64315:

# Spell ID 64317:

# Spell ID 64318:

# Spell ID 64319:

# Spell ID 64321:

# Spell ID 64325:

# Spell ID 64327:

# Spell ID 64328:

# Spell ID 64329:

# Spell ID 64351:

# Spell ID 64352:

# Spell ID 64357:

# Spell ID 64358:

# Spell ID 64359:

# Spell ID 64371:

# Spell ID 64372:

# Spell ID 64375:

# Spell ID 64378:

# Spell ID 64379:

# Spell ID 64381:

# Spell ID 64382:

# Spell ID 64385:

# Spell ID 64387:

# Spell ID 64389:

# Spell ID 64391: Lightwalk (Unfinished) [T4]
execute as @e[scores={rr.spell.SpellStore=64391},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 64392:

# Spell ID 64395:

# Spell ID 64397:

# Spell ID 64398:

# Spell ID 64512:

# Spell ID 64513:

# Spell ID 64517:

# Spell ID 64518:

# Spell ID 64519:

# Spell ID 64521:

# Spell ID 64523:

# Spell ID 64527:

# Spell ID 64528:

# Spell ID 64529:

# Spell ID 64531:

# Spell ID 64532:

# Spell ID 64537:

# Spell ID 64538:

# Spell ID 64539:

# Spell ID 64571:

# Spell ID 64572:

# Spell ID 64573:

# Spell ID 64578:

# Spell ID 64579:

# Spell ID 64581:

# Spell ID 64582:

# Spell ID 64583:

# Spell ID 64587:

# Spell ID 64589:

# Spell ID 64591:

# Spell ID 64592:

# Spell ID 64593:

# Spell ID 64597:

# Spell ID 64598:

# Spell ID 64712:

# Spell ID 64713:

# Spell ID 64715:

# Spell ID 64718:

# Spell ID 64719:

# Spell ID 64721:

# Spell ID 64723:

# Spell ID 64725:

# Spell ID 64728:

# Spell ID 64729:

# Spell ID 64731:

# Spell ID 64732:

# Spell ID 64735:

# Spell ID 64738:

# Spell ID 64739:

# Spell ID 64751:

# Spell ID 64752:

# Spell ID 64753:

# Spell ID 64758:

# Spell ID 64759:

# Spell ID 64781:

# Spell ID 64782:

# Spell ID 64783:

# Spell ID 64785:

# Spell ID 64789:

# Spell ID 64791:

# Spell ID 64792:

# Spell ID 64793:

# Spell ID 64795:

# Spell ID 64798:

# Spell ID 64812:

# Spell ID 64813:

# Spell ID 64815:

# Spell ID 64817:

# Spell ID 64819:

# Spell ID 64821:

# Spell ID 64823:

# Spell ID 64825:

# Spell ID 64827:

# Spell ID 64829:

# Spell ID 64831:

# Spell ID 64832:

# Spell ID 64835:

# Spell ID 64837:

# Spell ID 64839:

# Spell ID 64851:

# Spell ID 64852:

# Spell ID 64853:

# Spell ID 64857:

# Spell ID 64859:

# Spell ID 64871:

# Spell ID 64872:

# Spell ID 64873:

# Spell ID 64875:

# Spell ID 64879:

# Spell ID 64891:

# Spell ID 64892:

# Spell ID 64893:

# Spell ID 64895:

# Spell ID 64897:

# Spell ID 64912:

# Spell ID 64913:

# Spell ID 64915:

# Spell ID 64917:

# Spell ID 64918: Solidify (Unfinished) [T2]
execute as @e[scores={rr.spell.SpellStore=64918},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 64921:

# Spell ID 64923:

# Spell ID 64925:

# Spell ID 64927:

# Spell ID 64928:

# Spell ID 64931:

# Spell ID 64932:

# Spell ID 64935:

# Spell ID 64937:

# Spell ID 64938:

# Spell ID 64951:

# Spell ID 64952:

# Spell ID 64953:

# Spell ID 64957:

# Spell ID 64958:

# Spell ID 64971:

# Spell ID 64972:

# Spell ID 64973:

# Spell ID 64975:

# Spell ID 64978:

# Spell ID 64981:

# Spell ID 64982:

# Spell ID 64983:

# Spell ID 64985:

# Spell ID 64987:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0