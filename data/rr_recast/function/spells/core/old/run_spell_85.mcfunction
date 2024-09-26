# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 85123:

# Spell ID 85124:

# Spell ID 85126:

# Spell ID 85127:

# Spell ID 85129:

# Spell ID 85132:

# Spell ID 85134:

# Spell ID 85136:

# Spell ID 85137:

# Spell ID 85139:

# Spell ID 85142:

# Spell ID 85143:

# Spell ID 85146:

# Spell ID 85147:

# Spell ID 85149:

# Spell ID 85162:

# Spell ID 85163:

# Spell ID 85164:

# Spell ID 85167:

# Spell ID 85169:

# Spell ID 85172:

# Spell ID 85173:

# Spell ID 85174:

# Spell ID 85176:

# Spell ID 85179:

# Spell ID 85192:

# Spell ID 85193:

# Spell ID 85194:

# Spell ID 85196:

# Spell ID 85197:

# Spell ID 85213:

# Spell ID 85214:

# Spell ID 85216:

# Spell ID 85217:

# Spell ID 85219:

# Spell ID 85231:

# Spell ID 85234:

# Spell ID 85236:

# Spell ID 85237:

# Spell ID 85239:

# Spell ID 85241:

# Spell ID 85243:

# Spell ID 85246:

# Spell ID 85247:

# Spell ID 85249:

# Spell ID 85261:

# Spell ID 85263:

# Spell ID 85264:

# Spell ID 85267:

# Spell ID 85269:

# Spell ID 85271:

# Spell ID 85273: Life Force [T1]
execute as @e[scores={rr.spell.SpellStore=85273},type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/life_force
execute as @e[scores={rr.spell.SpellStore=85273},type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 85274:

# Spell ID 85276:

# Spell ID 85279:

# Spell ID 85291:

# Spell ID 85293:

# Spell ID 85294:

# Spell ID 85296:

# Spell ID 85297:

# Spell ID 85312:

# Spell ID 85314:

# Spell ID 85316:

# Spell ID 85317:

# Spell ID 85319:

# Spell ID 85321:

# Spell ID 85324:

# Spell ID 85326:

# Spell ID 85327:

# Spell ID 85329:

# Spell ID 85341:

# Spell ID 85342:

# Spell ID 85346:

# Spell ID 85347:

# Spell ID 85349:

# Spell ID 85361:

# Spell ID 85362:

# Spell ID 85364:

# Spell ID 85367:

# Spell ID 85369:

# Spell ID 85371:

# Spell ID 85372:

# Spell ID 85374:

# Spell ID 85376:

# Spell ID 85379:

# Spell ID 85391:

# Spell ID 85392:

# Spell ID 85394:

# Spell ID 85396:

# Spell ID 85397:

# Spell ID 85412:

# Spell ID 85413:

# Spell ID 85416:

# Spell ID 85417:

# Spell ID 85419:

# Spell ID 85421:

# Spell ID 85423:

# Spell ID 85426:

# Spell ID 85427:

# Spell ID 85429:

# Spell ID 85431:

# Spell ID 85432:

# Spell ID 85436:

# Spell ID 85437:

# Spell ID 85439:

# Spell ID 85461:

# Spell ID 85462:

# Spell ID 85463:

# Spell ID 85467:

# Spell ID 85469:

# Spell ID 85471:

# Spell ID 85472:

# Spell ID 85473:

# Spell ID 85476:

# Spell ID 85479:

# Spell ID 85491:

# Spell ID 85492:

# Spell ID 85493:

# Spell ID 85496:

# Spell ID 85497:

# Spell ID 85612:

# Spell ID 85613:

# Spell ID 85614:

# Spell ID 85617:

# Spell ID 85619:

# Spell ID 85621:

# Spell ID 85623:

# Spell ID 85624:

# Spell ID 85627:

# Spell ID 85629:

# Spell ID 85631:

# Spell ID 85632:

# Spell ID 85634:

# Spell ID 85637:

# Spell ID 85639:

# Spell ID 85641:

# Spell ID 85642:

# Spell ID 85643:

# Spell ID 85647:

# Spell ID 85649:

# Spell ID 85671:

# Spell ID 85672:

# Spell ID 85673:

# Spell ID 85674:

# Spell ID 85679:

# Spell ID 85691:

# Spell ID 85692:

# Spell ID 85693:

# Spell ID 85694:

# Spell ID 85697:

# Spell ID 85712:

# Spell ID 85713:

# Spell ID 85714:

# Spell ID 85716:

# Spell ID 85719:

# Spell ID 85721:

# Spell ID 85723:

# Spell ID 85724:

# Spell ID 85726:

# Spell ID 85729:

# Spell ID 85731:

# Spell ID 85732:

# Spell ID 85734:

# Spell ID 85736:

# Spell ID 85739:

# Spell ID 85741:

# Spell ID 85742:

# Spell ID 85743:

# Spell ID 85746:

# Spell ID 85749:

# Spell ID 85761:

# Spell ID 85762:

# Spell ID 85763:

# Spell ID 85764:

# Spell ID 85769:

# Spell ID 85791:

# Spell ID 85792:

# Spell ID 85793:

# Spell ID 85794:

# Spell ID 85796:

# Spell ID 85912:

# Spell ID 85913:

# Spell ID 85914:

# Spell ID 85916:

# Spell ID 85917:

# Spell ID 85921:

# Spell ID 85923:

# Spell ID 85924:

# Spell ID 85926:

# Spell ID 85927:

# Spell ID 85931:

# Spell ID 85932:

# Spell ID 85934:

# Spell ID 85936:

# Spell ID 85937:

# Spell ID 85941:

# Spell ID 85942:

# Spell ID 85943:

# Spell ID 85946:

# Spell ID 85947:

# Spell ID 85961:

# Spell ID 85962:

# Spell ID 85963:

# Spell ID 85964:

# Spell ID 85967:

# Spell ID 85971:

# Spell ID 85972:

# Spell ID 85973:

# Spell ID 85974:

# Spell ID 85976:

# Spell ID 86123:

# Spell ID 86124:

# Spell ID 86125:

# Spell ID 86127:

# Spell ID 86129:

# Spell ID 86132:

# Spell ID 86134:

# Spell ID 86135:

# Spell ID 86137:

# Spell ID 86139:

# Spell ID 86142:

# Spell ID 86143:

# Spell ID 86145:

# Spell ID 86147:

# Spell ID 86149:

# Spell ID 86152:

# Spell ID 86153:

# Spell ID 86154:

# Spell ID 86157:

# Spell ID 86159:

# Spell ID 86172:

# Spell ID 86173:

# Spell ID 86174:

# Spell ID 86175:

# Spell ID 86179:

# Spell ID 86192:

# Spell ID 86193:

# Spell ID 86194:

# Spell ID 86195:

# Spell ID 86197:

# Spell ID 86213:

# Spell ID 86214:

# Spell ID 86215:

# Spell ID 86217:

# Spell ID 86219:

# Spell ID 86231:

# Spell ID 86234:

# Spell ID 86235:

# Spell ID 86237:

# Spell ID 86239:

# Spell ID 86241:

# Spell ID 86243:

# Spell ID 86245:

# Spell ID 86247:

# Spell ID 86249:

# Spell ID 86251:

# Spell ID 86253:

# Spell ID 86254:

# Spell ID 86257:

# Spell ID 86259:

# Spell ID 86271:

# Spell ID 86273:

# Spell ID 86274:

# Spell ID 86275:

# Spell ID 86279:

# Spell ID 86291:

# Spell ID 86293:

# Spell ID 86294:

# Spell ID 86295:

# Spell ID 86297:

# Spell ID 86312:

# Spell ID 86314:

# Spell ID 86315:

# Spell ID 86317:

# Spell ID 86319:

# Spell ID 86321:

# Spell ID 86324:

# Spell ID 86325:

# Spell ID 86327:

# Spell ID 86329:

# Spell ID 86341:

# Spell ID 86342:

# Spell ID 86345:

# Spell ID 86347:

# Spell ID 86349:

# Spell ID 86351:

# Spell ID 86352:

# Spell ID 86354:

# Spell ID 86357:

# Spell ID 86359:

# Spell ID 86371:

# Spell ID 86372:

# Spell ID 86374:

# Spell ID 86375:

# Spell ID 86379:

# Spell ID 86391:

# Spell ID 86392:

# Spell ID 86394:

# Spell ID 86395:

# Spell ID 86397:

# Spell ID 86412:

# Spell ID 86413:

# Spell ID 86415:

# Spell ID 86417:

# Spell ID 86419:

# Spell ID 86421:

# Spell ID 86423:

# Spell ID 86425:

# Spell ID 86427:

# Spell ID 86429:

# Spell ID 86431:

# Spell ID 86432:

# Spell ID 86435:

# Spell ID 86437:

# Spell ID 86439:

# Spell ID 86451:

# Spell ID 86452:

# Spell ID 86453:

# Spell ID 86457:

# Spell ID 86459:

# Spell ID 86471:

# Spell ID 86472:

# Spell ID 86473:

# Spell ID 86475:

# Spell ID 86479:

# Spell ID 86491:

# Spell ID 86492:

# Spell ID 86493:

# Spell ID 86495:

# Spell ID 86497:

# Spell ID 86512:

# Spell ID 86513:

# Spell ID 86514:

# Spell ID 86517:

# Spell ID 86519:

# Spell ID 86521:

# Spell ID 86523:

# Spell ID 86524:

# Spell ID 86527:

# Spell ID 86529:

# Spell ID 86531:

# Spell ID 86532:

# Spell ID 86534:

# Spell ID 86537:

# Spell ID 86539:

# Spell ID 86541:

# Spell ID 86542:

# Spell ID 86543:

# Spell ID 86547:

# Spell ID 86549:

# Spell ID 86571:

# Spell ID 86572:

# Spell ID 86573:

# Spell ID 86574:

# Spell ID 86579:

# Spell ID 86591:

# Spell ID 86592:

# Spell ID 86593:

# Spell ID 86594:

# Spell ID 86597:

# Spell ID 86712:

# Spell ID 86713:

# Spell ID 86714:

# Spell ID 86715:

# Spell ID 86719:

# Spell ID 86721:

# Spell ID 86723:

# Spell ID 86724:

# Spell ID 86725:

# Spell ID 86729:

# Spell ID 86731:

# Spell ID 86732:

# Spell ID 86734:

# Spell ID 86735:

# Spell ID 86739:

# Spell ID 86741:

# Spell ID 86742:

# Spell ID 86743:

# Spell ID 86745:

# Spell ID 86749:

# Spell ID 86751:

# Spell ID 86752:

# Spell ID 86753:

# Spell ID 86754:

# Spell ID 86759:

# Spell ID 86791:

# Spell ID 86792:

# Spell ID 86793:

# Spell ID 86794:

# Spell ID 86795:

# Spell ID 86912:

# Spell ID 86913:

# Spell ID 86914:

# Spell ID 86915:

# Spell ID 86917:

# Spell ID 86921:

# Spell ID 86923:

# Spell ID 86924:

# Spell ID 86925:

# Spell ID 86927:

# Spell ID 86931:

# Spell ID 86932:

# Spell ID 86934:

# Spell ID 86935:

# Spell ID 86937:

# Spell ID 86941:

# Spell ID 86942:

# Spell ID 86943:

# Spell ID 86945:

# Spell ID 86947:

# Spell ID 86951:

# Spell ID 86952:

# Spell ID 86953:

# Spell ID 86954:

# Spell ID 86957:

# Spell ID 86971:

# Spell ID 86972:

# Spell ID 86973:

# Spell ID 86974:

# Spell ID 86975:

# Spell ID 87123:

# Spell ID 87124:

# Spell ID 87125:

# Spell ID 87126:

# Spell ID 87129:

# Spell ID 87132:

# Spell ID 87134:

# Spell ID 87135:

# Spell ID 87136:

# Spell ID 87139:

# Spell ID 87142:

# Spell ID 87143:

# Spell ID 87145:

# Spell ID 87146:

# Spell ID 87149:

# Spell ID 87152:

# Spell ID 87153:

# Spell ID 87154:

# Spell ID 87156:

# Spell ID 87159:

# Spell ID 87162:

# Spell ID 87163:

# Spell ID 87164:

# Spell ID 87165:

# Spell ID 87169:

# Spell ID 87192:

# Spell ID 87193:

# Spell ID 87194:

# Spell ID 87195:

# Spell ID 87196:

# Spell ID 87213:

# Spell ID 87214:

# Spell ID 87215:

# Spell ID 87216:

# Spell ID 87219:

# Spell ID 87231:

# Spell ID 87234:

# Spell ID 87235:

# Spell ID 87236:

# Spell ID 87239:

# Spell ID 87241:

# Spell ID 87243:

# Spell ID 87245:

# Spell ID 87246:

# Spell ID 87249:

# Spell ID 87251:

# Spell ID 87253:

# Spell ID 87254:

# Spell ID 87256:

# Spell ID 87259:

# Spell ID 87261:

# Spell ID 87263:

# Spell ID 87264:

# Spell ID 87265:

# Spell ID 87269:

# Spell ID 87291:

# Spell ID 87293:

# Spell ID 87294:

# Spell ID 87295:

# Spell ID 87296:

# Spell ID 87312:

# Spell ID 87314:

# Spell ID 87315:

# Spell ID 87316:

# Spell ID 87319:

# Spell ID 87321:

# Spell ID 87324: Siphon Enchant (Unfinished) [T3]
execute as @e[scores={rr.spell.SpellStore=87324},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 87325:

# Spell ID 87326:

# Spell ID 87329:

# Spell ID 87341:

# Spell ID 87342:

# Spell ID 87345:

# Spell ID 87346:

# Spell ID 87349:

# Spell ID 87351:

# Spell ID 87352:

# Spell ID 87354:

# Spell ID 87356:

# Spell ID 87359:

# Spell ID 87361:

# Spell ID 87362:

# Spell ID 87364:

# Spell ID 87365:

# Spell ID 87369:

# Spell ID 87391:

# Spell ID 87392:

# Spell ID 87394:

# Spell ID 87395:

# Spell ID 87396:

# Spell ID 87412:

# Spell ID 87413:

# Spell ID 87415:

# Spell ID 87416:

# Spell ID 87419:

# Spell ID 87421:

# Spell ID 87423:

# Spell ID 87425:

# Spell ID 87426:

# Spell ID 87429:

# Spell ID 87431:

# Spell ID 87432:

# Spell ID 87435:

# Spell ID 87436:

# Spell ID 87439:

# Spell ID 87451:

# Spell ID 87452:

# Spell ID 87453:

# Spell ID 87456:

# Spell ID 87459:

# Spell ID 87461:

# Spell ID 87462:

# Spell ID 87463:

# Spell ID 87465:

# Spell ID 87469:

# Spell ID 87491:

# Spell ID 87492:

# Spell ID 87493:

# Spell ID 87495:

# Spell ID 87496:

# Spell ID 87512:

# Spell ID 87513:

# Spell ID 87514:

# Spell ID 87516:

# Spell ID 87519:

# Spell ID 87521:

# Spell ID 87523:

# Spell ID 87524:

# Spell ID 87526:

# Spell ID 87529:

# Spell ID 87531:

# Spell ID 87532:

# Spell ID 87534:

# Spell ID 87536:

# Spell ID 87539:

# Spell ID 87541:

# Spell ID 87542:

# Spell ID 87543:

# Spell ID 87546:

# Spell ID 87549:

# Spell ID 87561:

# Spell ID 87562:

# Spell ID 87563:

# Spell ID 87564:

# Spell ID 87569:

# Spell ID 87591: XP Shuffle - Feed (Unfinished) [T4]
execute as @e[scores={rr.spell.SpellStore=87591},type=!#rr_recast:spell_ignore,tag=RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_feed

execute as @e[scores={rr.spell.SpellStore=87591},type=!#rr_recast:spell_ignore,tag=RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_feed
execute as @e[scores={rr.spell.SpellStore=87591},type=!#rr_recast:spell_ignore,tag=RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_feed

execute as @e[scores={rr.spell.SpellStore=87591},type=!#rr_recast:spell_ignore,tag=!RunicTab4Held,tag=!RunicMem4Held,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/spell_too_high_tier


# Spell ID 87592: XP Shuffle - Heal (Unfinished) [T3]
execute as @e[scores={rr.spell.SpellStore=87592},type=!#rr_recast:spell_ignore,tag=RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_heal

execute as @e[scores={rr.spell.SpellStore=87592},type=!#rr_recast:spell_ignore,tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_heal
execute as @e[scores={rr.spell.SpellStore=87592},type=!#rr_recast:spell_ignore,tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_heal

execute as @e[scores={rr.spell.SpellStore=87592},type=!#rr_recast:spell_ignore,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/spell_too_high_tier


# Spell ID 87593: XP Shuffle - Mend (Unfinished) [T3]
execute as @e[scores={rr.spell.SpellStore=87593},type=!#rr_recast:spell_ignore,tag=RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_mend

execute as @e[scores={rr.spell.SpellStore=87593},type=!#rr_recast:spell_ignore,tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_mend
execute as @e[scores={rr.spell.SpellStore=87593},type=!#rr_recast:spell_ignore,tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/xp_shuffle_mend

execute as @e[scores={rr.spell.SpellStore=87593},type=!#rr_recast:spell_ignore,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=!RunicSpellStarted] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 87594:

# Spell ID 87596:

# Spell ID 87612:

# Spell ID 87613:

# Spell ID 87614:

# Spell ID 87615:

# Spell ID 87619:

# Spell ID 87621:

# Spell ID 87623:

# Spell ID 87624:

# Spell ID 87625:

# Spell ID 87629:

# Spell ID 87631:

# Spell ID 87632:

# Spell ID 87634:

# Spell ID 87635:

# Spell ID 87639:

# Spell ID 87641:

# Spell ID 87642:

# Spell ID 87643:

# Spell ID 87645:

# Spell ID 87649:

# Spell ID 87651:

# Spell ID 87652:

# Spell ID 87653:

# Spell ID 87654:

# Spell ID 87659:

# Spell ID 87691:

# Spell ID 87692:

# Spell ID 87693:

# Spell ID 87694:

# Spell ID 87695:

# Spell ID 87912:

# Spell ID 87913:

# Spell ID 87914:

# Spell ID 87915:

# Spell ID 87916:

# Spell ID 87921:

# Spell ID 87923:

# Spell ID 87924:

# Spell ID 87925:

# Spell ID 87926:

# Spell ID 87931:

# Spell ID 87932:

# Spell ID 87934:

# Spell ID 87935:

# Spell ID 87936:

# Spell ID 87941:

# Spell ID 87942:

# Spell ID 87943:

# Spell ID 87945:

# Spell ID 87946:

# Spell ID 87951:

# Spell ID 87952:

# Spell ID 87953:

# Spell ID 87954:

# Spell ID 87956:

# Spell ID 87961:

# Spell ID 87962:

# Spell ID 87963:

# Spell ID 87964:

# Spell ID 87965:

# Spell ID 89123:

# Spell ID 89124:

# Spell ID 89125:

# Spell ID 89126:

# Spell ID 89127:

# Spell ID 89132:

# Spell ID 89134:

# Spell ID 89135:

# Spell ID 89136:

# Spell ID 89137:

# Spell ID 89142:

# Spell ID 89143:

# Spell ID 89145:

# Spell ID 89146:

# Spell ID 89147:

# Spell ID 89152: Three-Fold Freeze (Unfinished) [T3]
execute as @e[scores={rr.spell.SpellStore=89152},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 89153:

# Spell ID 89154:

# Spell ID 89156:

# Spell ID 89157:

# Spell ID 89162:

# Spell ID 89163:

# Spell ID 89164:

# Spell ID 89165:

# Spell ID 89167:

# Spell ID 89172:

# Spell ID 89173:

# Spell ID 89174:

# Spell ID 89175:

# Spell ID 89176:

# Spell ID 89213:

# Spell ID 89214:

# Spell ID 89215: Energize [T2]
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] store result score @s rr.math.ItemCount run clear @s redstone 0
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] store result score @s rr.math.ItemCount run clear @s redstone 0
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=8..},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=8..},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215},tag=RunicTab1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore,tag=RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215},tag=RunicMem1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore,tag=RunicEnergizeRunning] at @s run function rr_recast:spells/execution/energize
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=89215},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run title @s actionbar [{"text":"You are missing the components for this spell! (Needed: 8 Redstone)","color":"red","bold":true}]
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run tag @s remove RunicSpellRun
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run tag @s remove RunicCasting
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run title @s actionbar [{"text":"You are missing the components for this spell! (Needed: 8 Redstone)","color":"red","bold":true}]
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run tag @s remove RunicSpellRun
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @e[scores={rr.spell.SpellStore=89215,rr.math.ItemCount=..7},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore,tag=!RunicEnergizeRunning] at @s run tag @s remove RunicCasting

# Spell ID 89216:

# Spell ID 89217:

# Spell ID 89231:

# Spell ID 89234:

# Spell ID 89235:

# Spell ID 89236:

# Spell ID 89237:

# Spell ID 89241:

# Spell ID 89243:

# Spell ID 89245: Mass Heal (Unfinished)
execute as @e[scores={rr.spell.SpellStore=89245},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 89246:

# Spell ID 89247:

# Spell ID 89251:

# Spell ID 89253:

# Spell ID 89254:

# Spell ID 89256:

# Spell ID 89257:

# Spell ID 89261:

# Spell ID 89263:

# Spell ID 89264:

# Spell ID 89265:

# Spell ID 89267:

# Spell ID 89271:

# Spell ID 89273:

# Spell ID 89274:

# Spell ID 89275:

# Spell ID 89276:

# Spell ID 89312:

# Spell ID 89314:

# Spell ID 89315:

# Spell ID 89316:

# Spell ID 89317:

# Spell ID 89321:

# Spell ID 89324:

# Spell ID 89325:

# Spell ID 89326:

# Spell ID 89327:

# Spell ID 89341:

# Spell ID 89342:

# Spell ID 89345:

# Spell ID 89346:

# Spell ID 89347:

# Spell ID 89351:

# Spell ID 89352:

# Spell ID 89354:

# Spell ID 89356:

# Spell ID 89357:

# Spell ID 89361:

# Spell ID 89362:

# Spell ID 89364:

# Spell ID 89365:

# Spell ID 89367:

# Spell ID 89371:

# Spell ID 89372:

# Spell ID 89374:

# Spell ID 89375:

# Spell ID 89376:

# Spell ID 89412:

# Spell ID 89413:

# Spell ID 89415:

# Spell ID 89416:

# Spell ID 89417:

# Spell ID 89421:

# Spell ID 89423:

# Spell ID 89425:

# Spell ID 89426:

# Spell ID 89427:

# Spell ID 89431:

# Spell ID 89432:

# Spell ID 89435:

# Spell ID 89436:

# Spell ID 89437:

# Spell ID 89451:

# Spell ID 89452:

# Spell ID 89453:

# Spell ID 89456:

# Spell ID 89457:

# Spell ID 89461:

# Spell ID 89462:

# Spell ID 89463:

# Spell ID 89465:

# Spell ID 89467:

# Spell ID 89471:

# Spell ID 89472:

# Spell ID 89473:

# Spell ID 89475:

# Spell ID 89476:

# Spell ID 89512:

# Spell ID 89513:

# Spell ID 89514:

# Spell ID 89516:

# Spell ID 89517:

# Spell ID 89521:

# Spell ID 89523:

# Spell ID 89524:

# Spell ID 89526:

# Spell ID 89527:

# Spell ID 89531:

# Spell ID 89532:

# Spell ID 89534:

# Spell ID 89536:

# Spell ID 89537:

# Spell ID 89541:

# Spell ID 89542:

# Spell ID 89543:

# Spell ID 89546:

# Spell ID 89547:

# Spell ID 89561:

# Spell ID 89562:

# Spell ID 89563:

# Spell ID 89564:

# Spell ID 89567:

# Spell ID 89571:

# Spell ID 89572:

# Spell ID 89573:

# Spell ID 89574:

# Spell ID 89576:

# Spell ID 89612:

# Spell ID 89613:

# Spell ID 89614:

# Spell ID 89615:

# Spell ID 89617:

# Spell ID 89621:

# Spell ID 89623:

# Spell ID 89624:

# Spell ID 89625:

# Spell ID 89627:

# Spell ID 89631:

# Spell ID 89632:

# Spell ID 89634:

# Spell ID 89635:

# Spell ID 89637:

# Spell ID 89641:

# Spell ID 89642:

# Spell ID 89643:

# Spell ID 89645:

# Spell ID 89647:

# Spell ID 89651:

# Spell ID 89652:

# Spell ID 89653:

# Spell ID 89654:

# Spell ID 89657:

# Spell ID 89671:

# Spell ID 89672:

# Spell ID 89673:

# Spell ID 89674:

# Spell ID 89675:

# Spell ID 89712:

# Spell ID 89713:

# Spell ID 89714:

# Spell ID 89715:

# Spell ID 89716:

# Spell ID 89721:

# Spell ID 89723:

# Spell ID 89724:

# Spell ID 89725:

# Spell ID 89726:

# Spell ID 89731:

# Spell ID 89732:

# Spell ID 89734:

# Spell ID 89735:

# Spell ID 89736:

# Spell ID 89741:

# Spell ID 89742:

# Spell ID 89743:

# Spell ID 89745:

# Spell ID 89746:

# Spell ID 89751:

# Spell ID 89752:

# Spell ID 89753:

# Spell ID 89754:

# Spell ID 89756:

# Spell ID 89761:

# Spell ID 89762:

# Spell ID 89763:

# Spell ID 89764:

# Spell ID 89765:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0