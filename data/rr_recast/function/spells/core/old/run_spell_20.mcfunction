# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 21345:

# Spell ID 21346:

# Spell ID 21347:

# Spell ID 21348:

# Spell ID 21349:

# Spell ID 21354:

# Spell ID 21356:

# Spell ID 21357:

# Spell ID 21358:

# Spell ID 21359:

# Spell ID 21364:

# Spell ID 21365:

# Spell ID 21367:

# Spell ID 21368:

# Spell ID 21369:

# Spell ID 21374:

# Spell ID 21375:

# Spell ID 21376:

# Spell ID 21378:

# Spell ID 21379:

# Spell ID 21384:

# Spell ID 21385:

# Spell ID 21386:

# Spell ID 21387:

# Spell ID 21389:

# Spell ID 21394:

# Spell ID 21395:

# Spell ID 21396:

# Spell ID 21397:

# Spell ID 21398:

# Spell ID 21435:

# Spell ID 21436:

# Spell ID 21437:

# Spell ID 21438:

# Spell ID 21439:

# Spell ID 21453:

# Spell ID 21456:

# Spell ID 21457:

# Spell ID 21458:

# Spell ID 21459:

# Spell ID 21463:

# Spell ID 21465:

# Spell ID 21467:

# Spell ID 21468:

# Spell ID 21469:

# Spell ID 21473:

# Spell ID 21475:

# Spell ID 21476:

# Spell ID 21478:

# Spell ID 21479:

# Spell ID 21483:

# Spell ID 21485:

# Spell ID 21486:

# Spell ID 21487:

# Spell ID 21489:

# Spell ID 21493:

# Spell ID 21495:

# Spell ID 21496:

# Spell ID 21497:

# Spell ID 21498:

# Spell ID 21534:

# Spell ID 21536:

# Spell ID 21537:

# Spell ID 21538:

# Spell ID 21539:

# Spell ID 21543:

# Spell ID 21546:

# Spell ID 21547:

# Spell ID 21548:

# Spell ID 21549:

# Spell ID 21563:

# Spell ID 21564:

# Spell ID 21567:

# Spell ID 21568:

# Spell ID 21569:

# Spell ID 21573:

# Spell ID 21574:

# Spell ID 21576:

# Spell ID 21578:

# Spell ID 21579:

# Spell ID 21583: Soul Steal [T3]
execute as @e[scores={rr.spell.SpellStore=21583},tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/soul_steal
execute as @e[scores={rr.spell.SpellStore=21583},predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_t3_t4,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/soul_steal
execute as @e[scores={rr.spell.SpellStore=21583},predicate=rr_recast:held_items/mainhand/memory_tablet_t3_t4,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/soul_steal
execute as @e[scores={rr.spell.SpellStore=21583},tag=!RunicSpellStarted,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=21583},tag=!RunicSpellStarted,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=21583},tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=21583},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 21584:

# Spell ID 21586:

# Spell ID 21587:

# Spell ID 21589:

# Spell ID 21593:

# Spell ID 21594:

# Spell ID 21596:

# Spell ID 21597:

# Spell ID 21598:

# Spell ID 21634:

# Spell ID 21635:

# Spell ID 21637:

# Spell ID 21638:

# Spell ID 21639:

# Spell ID 21643:

# Spell ID 21645:

# Spell ID 21647:

# Spell ID 21648:

# Spell ID 21649:

# Spell ID 21653:

# Spell ID 21654:

# Spell ID 21657:

# Spell ID 21658:

# Spell ID 21659:

# Spell ID 21673:

# Spell ID 21674:

# Spell ID 21675:

# Spell ID 21678:

# Spell ID 21679:

# Spell ID 21683:

# Spell ID 21684:

# Spell ID 21685:

# Spell ID 21687:

# Spell ID 21689:

# Spell ID 21693:

# Spell ID 21694:

# Spell ID 21695:

# Spell ID 21697:

# Spell ID 21698:

# Spell ID 21734:

# Spell ID 21735:

# Spell ID 21736:

# Spell ID 21738:

# Spell ID 21739:

# Spell ID 21743:

# Spell ID 21745:

# Spell ID 21746:

# Spell ID 21748:

# Spell ID 21749:

# Spell ID 21753:

# Spell ID 21754:

# Spell ID 21756:

# Spell ID 21758:

# Spell ID 21759:

# Spell ID 21763:

# Spell ID 21764:

# Spell ID 21765:

# Spell ID 21768:

# Spell ID 21769:

# Spell ID 21783:

# Spell ID 21784:

# Spell ID 21785:

# Spell ID 21786:

# Spell ID 21789:

# Spell ID 21793:

# Spell ID 21794:

# Spell ID 21795:

# Spell ID 21796:

# Spell ID 21798:

# Spell ID 21834:

# Spell ID 21835:

# Spell ID 21836:

# Spell ID 21837:

# Spell ID 21839:

# Spell ID 21843:

# Spell ID 21845:

# Spell ID 21846:

# Spell ID 21847:

# Spell ID 21849:

# Spell ID 21853:

# Spell ID 21854:

# Spell ID 21856:

# Spell ID 21857:

# Spell ID 21859:

# Spell ID 21863:

# Spell ID 21864:

# Spell ID 21865:

# Spell ID 21867:

# Spell ID 21869:

# Spell ID 21873:

# Spell ID 21874:

# Spell ID 21875:

# Spell ID 21876:

# Spell ID 21879:

# Spell ID 21893:

# Spell ID 21894:

# Spell ID 21895:

# Spell ID 21896:

# Spell ID 21897:

# Spell ID 21934:

# Spell ID 21935:

# Spell ID 21936:

# Spell ID 21937:

# Spell ID 21938:

# Spell ID 21943:

# Spell ID 21945:

# Spell ID 21946:

# Spell ID 21947:

# Spell ID 21948:

# Spell ID 21953:

# Spell ID 21954:

# Spell ID 21956:

# Spell ID 21957:

# Spell ID 21958:

# Spell ID 21963:

# Spell ID 21964:

# Spell ID 21965:

# Spell ID 21967:

# Spell ID 21968:

# Spell ID 21973:

# Spell ID 21974:

# Spell ID 21975:

# Spell ID 21976:

# Spell ID 21978:

# Spell ID 21983:

# Spell ID 21984:

# Spell ID 21985:

# Spell ID 21986:

# Spell ID 21987:

# Spell ID 23145:

# Spell ID 23146:

# Spell ID 23147:

# Spell ID 23148:

# Spell ID 23149:

# Spell ID 23154:

# Spell ID 23156:

# Spell ID 23157:

# Spell ID 23158:

# Spell ID 23159:

# Spell ID 23164:

# Spell ID 23165:

# Spell ID 23167:

# Spell ID 23168:

# Spell ID 23169:

# Spell ID 23174:

# Spell ID 23175:

# Spell ID 23176:

# Spell ID 23178:

# Spell ID 23179:

# Spell ID 23184:

# Spell ID 23185:

# Spell ID 23186:

# Spell ID 23187:

# Spell ID 23189:

# Spell ID 23194:

# Spell ID 23195:

# Spell ID 23196:

# Spell ID 23197:

# Spell ID 23198:

# Spell ID 23415:

# Spell ID 23416:

# Spell ID 23417:

# Spell ID 23418:

# Spell ID 23419:

# Spell ID 23451:

# Spell ID 23456:

# Spell ID 23457:

# Spell ID 23458:

# Spell ID 23459:

# Spell ID 23461:

# Spell ID 23465:

# Spell ID 23467:

# Spell ID 23468:

# Spell ID 23469:

# Spell ID 23471:

# Spell ID 23475:

# Spell ID 23476:

# Spell ID 23478:

# Spell ID 23479:

# Spell ID 23481:

# Spell ID 23485:

# Spell ID 23486:

# Spell ID 23487:

# Spell ID 23489:

# Spell ID 23491:

# Spell ID 23495:

# Spell ID 23496:

# Spell ID 23497:

# Spell ID 23498:

# Spell ID 23514:

# Spell ID 23516:

# Spell ID 23517:

# Spell ID 23518:

# Spell ID 23519:

# Spell ID 23541:

# Spell ID 23546:

# Spell ID 23547:

# Spell ID 23548:

# Spell ID 23549:

# Spell ID 23561:

# Spell ID 23564:

# Spell ID 23567:

# Spell ID 23568:

# Spell ID 23569:

# Spell ID 23571:

# Spell ID 23574:

# Spell ID 23576:

# Spell ID 23578:

# Spell ID 23579:

# Spell ID 23581:

# Spell ID 23584:

# Spell ID 23586:

# Spell ID 23587:

# Spell ID 23589:

# Spell ID 23591:

# Spell ID 23594:

# Spell ID 23596:

# Spell ID 23597:

# Spell ID 23598:

# Spell ID 23614:

# Spell ID 23615:

# Spell ID 23617:

# Spell ID 23618:

# Spell ID 23619:

# Spell ID 23641:

# Spell ID 23645:

# Spell ID 23647:

# Spell ID 23648:

# Spell ID 23649:

# Spell ID 23651:

# Spell ID 23654:

# Spell ID 23657:

# Spell ID 23658:

# Spell ID 23659:

# Spell ID 23671:

# Spell ID 23674:

# Spell ID 23675:

# Spell ID 23678:

# Spell ID 23679:

# Spell ID 23681:

# Spell ID 23684:

# Spell ID 23685:

# Spell ID 23687:

# Spell ID 23689:

# Spell ID 23691:

# Spell ID 23694:

# Spell ID 23695:

# Spell ID 23697:

# Spell ID 23698:

# Spell ID 23714:

# Spell ID 23715:

# Spell ID 23716:

# Spell ID 23718:

# Spell ID 23719:

# Spell ID 23741:

# Spell ID 23745:

# Spell ID 23746:

# Spell ID 23748:

# Spell ID 23749:

# Spell ID 23751:

# Spell ID 23754:

# Spell ID 23756:

# Spell ID 23758:

# Spell ID 23759:

# Spell ID 23761:

# Spell ID 23764:

# Spell ID 23765:

# Spell ID 23768:

# Spell ID 23769:

# Spell ID 23781:

# Spell ID 23784:

# Spell ID 23785:

# Spell ID 23786:

# Spell ID 23789:

# Spell ID 23791:

# Spell ID 23794:

# Spell ID 23795:

# Spell ID 23796:

# Spell ID 23798:

# Spell ID 23814:

# Spell ID 23815:

# Spell ID 23816:

# Spell ID 23817:

# Spell ID 23819:

# Spell ID 23841:

# Spell ID 23845:

# Spell ID 23846:

# Spell ID 23847:

# Spell ID 23849:

# Spell ID 23851:

# Spell ID 23854:

# Spell ID 23856:

# Spell ID 23857:

# Spell ID 23859:

# Spell ID 23861:

# Spell ID 23864:

# Spell ID 23865:

# Spell ID 23867:

# Spell ID 23869:

# Spell ID 23871:

# Spell ID 23874:

# Spell ID 23875:

# Spell ID 23876:

# Spell ID 23879:

# Spell ID 23891:

# Spell ID 23894:

# Spell ID 23895:

# Spell ID 23896:

# Spell ID 23897:

# Spell ID 23914:

# Spell ID 23915:

# Spell ID 23916:

# Spell ID 23917:

# Spell ID 23918:

# Spell ID 23941:

# Spell ID 23945:

# Spell ID 23946:

# Spell ID 23947:

# Spell ID 23948:

# Spell ID 23951:

# Spell ID 23954:

# Spell ID 23956:

# Spell ID 23957:

# Spell ID 23958:

# Spell ID 23961:

# Spell ID 23964:

# Spell ID 23965:

# Spell ID 23967:

# Spell ID 23968:

# Spell ID 23971:

# Spell ID 23974:

# Spell ID 23975:

# Spell ID 23976:

# Spell ID 23978:

# Spell ID 23981:

# Spell ID 23984:

# Spell ID 23985:

# Spell ID 23986:

# Spell ID 23987:

# Spell ID 24135:

# Spell ID 24136:

# Spell ID 24137:

# Spell ID 24138:

# Spell ID 24139:

# Spell ID 24153:

# Spell ID 24156:

# Spell ID 24157:

# Spell ID 24158:

# Spell ID 24159:

# Spell ID 24163:

# Spell ID 24165:

# Spell ID 24167:

# Spell ID 24168:

# Spell ID 24169:

# Spell ID 24173:

# Spell ID 24175:

# Spell ID 24176:

# Spell ID 24178:

# Spell ID 24179:

# Spell ID 24183:

# Spell ID 24185:

# Spell ID 24186:

# Spell ID 24187:

# Spell ID 24189:

# Spell ID 24193:

# Spell ID 24195:

# Spell ID 24196:

# Spell ID 24197:

# Spell ID 24198:

# Spell ID 24315:

# Spell ID 24316:

# Spell ID 24317:

# Spell ID 24318:

# Spell ID 24319:

# Spell ID 24351:

# Spell ID 24356:

# Spell ID 24357:

# Spell ID 24358:

# Spell ID 24359:

# Spell ID 24361:

# Spell ID 24365:

# Spell ID 24367:

# Spell ID 24368:

# Spell ID 24369:

# Spell ID 24371:

# Spell ID 24375:

# Spell ID 24376:

# Spell ID 24378:

# Spell ID 24379:

# Spell ID 24381:

# Spell ID 24385:

# Spell ID 24386:

# Spell ID 24387:

# Spell ID 24389:

# Spell ID 24391:

# Spell ID 24395:

# Spell ID 24396:

# Spell ID 24397:

# Spell ID 24398:

# Spell ID 24513:

# Spell ID 24516:

# Spell ID 24517:

# Spell ID 24518:

# Spell ID 24519:

# Spell ID 24531:

# Spell ID 24536:

# Spell ID 24537:

# Spell ID 24538:

# Spell ID 24539:

# Spell ID 24561:

# Spell ID 24563:

# Spell ID 24567:

# Spell ID 24568: Magnetize [T1]
execute as @e[scores={rr.spell.SpellStore=24568},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/magnetize

# Spell ID 24569:

# Spell ID 24571:

# Spell ID 24573:

# Spell ID 24576:

# Spell ID 24578:

# Spell ID 24579:

# Spell ID 24581:

# Spell ID 24583:

# Spell ID 24586:

# Spell ID 24587:

# Spell ID 24589:

# Spell ID 24591:

# Spell ID 24593:

# Spell ID 24596:

# Spell ID 24597:

# Spell ID 24598:

# Spell ID 24613:

# Spell ID 24615:

# Spell ID 24617:

# Spell ID 24618:

# Spell ID 24619:

# Spell ID 24631:

# Spell ID 24635:

# Spell ID 24637:

# Spell ID 24638:

# Spell ID 24639:

# Spell ID 24651:

# Spell ID 24653:

# Spell ID 24657:

# Spell ID 24658:

# Spell ID 24659:

# Spell ID 24671:

# Spell ID 24673:

# Spell ID 24675:

# Spell ID 24678:

# Spell ID 24679:

# Spell ID 24681:

# Spell ID 24683:

# Spell ID 24685:

# Spell ID 24687:

# Spell ID 24689:

# Spell ID 24691:

# Spell ID 24693:

# Spell ID 24695:

# Spell ID 24697:

# Spell ID 24698:

# Spell ID 24713:

# Spell ID 24715:

# Spell ID 24716:

# Spell ID 24718:

# Spell ID 24719:

# Spell ID 24731:

# Spell ID 24735:

# Spell ID 24736:

# Spell ID 24738:

# Spell ID 24739:

# Spell ID 24751:

# Spell ID 24753:

# Spell ID 24756:

# Spell ID 24758:

# Spell ID 24759:

# Spell ID 24761:

# Spell ID 24763:

# Spell ID 24765:

# Spell ID 24768:

# Spell ID 24769:

# Spell ID 24781:

# Spell ID 24783:

# Spell ID 24785:

# Spell ID 24786:

# Spell ID 24789:

# Spell ID 24791:

# Spell ID 24793:

# Spell ID 24795:

# Spell ID 24796:

# Spell ID 24798:

# Spell ID 24813:

# Spell ID 24815:

# Spell ID 24816:

# Spell ID 24817:

# Spell ID 24819:

# Spell ID 24831:

# Spell ID 24835:

# Spell ID 24836:

# Spell ID 24837:

# Spell ID 24839:

# Spell ID 24851:

# Spell ID 24853:

# Spell ID 24856:

# Spell ID 24857:

# Spell ID 24859:

# Spell ID 24861:

# Spell ID 24863:

# Spell ID 24865:

# Spell ID 24867:

# Spell ID 24869:

# Spell ID 24871:

# Spell ID 24873:

# Spell ID 24875:

# Spell ID 24876:

# Spell ID 24879:

# Spell ID 24891:

# Spell ID 24893:

# Spell ID 24895: Alchemize [T2]
execute as @e[scores={rr.spell.SpellStore=24895},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/alchemize
execute as @e[scores={rr.spell.SpellStore=24895},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/alchemize
execute as @e[scores={rr.spell.SpellStore=24895},tag=RunicTab1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/alchemize
execute as @e[scores={rr.spell.SpellStore=24895},tag=RunicMem1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/alchemize
execute as @e[scores={rr.spell.SpellStore=24895},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=24895},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 24896:

# Spell ID 24897:

# Spell ID 24913:

# Spell ID 24915:

# Spell ID 24916:

# Spell ID 24917:

# Spell ID 24918:

# Spell ID 24931:

# Spell ID 24935:

# Spell ID 24936:

# Spell ID 24937:

# Spell ID 24938:

# Spell ID 24951:

# Spell ID 24953:

# Spell ID 24956:

# Spell ID 24957:

# Spell ID 24958:

# Spell ID 24961:

# Spell ID 24963:

# Spell ID 24965:

# Spell ID 24967:

# Spell ID 24968:

# Spell ID 24971:

# Spell ID 24973:

# Spell ID 24975:

# Spell ID 24976:

# Spell ID 24978:

# Spell ID 24981:

# Spell ID 24983:

# Spell ID 24985:

# Spell ID 24986:

# Spell ID 24987:

scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0