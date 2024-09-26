# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 12345:

# Spell ID 12346:

# Spell ID 12347:

# Spell ID 12348:

# Spell ID 12349: Ignore [T1]
execute as @e[scores={rr.spell.SpellStore=12349},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/ignore

# Spell ID 12354:

# Spell ID 12356:

# Spell ID 12357: Bubble (Unfinished) [T1]
execute as @e[scores={rr.spell.SpellStore=12357},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 12358:

# Spell ID 12359:

# Spell ID 12364:

# Spell ID 12365:

# Spell ID 12367:

# Spell ID 12368:

# Spell ID 12369:

# Spell ID 12374:

# Spell ID 12375:

# Spell ID 12376:

# Spell ID 12378:

# Spell ID 12379:

# Spell ID 12384:

# Spell ID 12385:

# Spell ID 12386:

# Spell ID 12387:

# Spell ID 12389:

# Spell ID 12394:

# Spell ID 12395:

# Spell ID 12396:

# Spell ID 12397:

# Spell ID 12398:

# Spell ID 12435:

# Spell ID 12436:

# Spell ID 12437:

# Spell ID 12438:

# Spell ID 12439:

# Spell ID 12453:

# Spell ID 12456:

# Spell ID 12457:

# Spell ID 12458:

# Spell ID 12459:

# Spell ID 12463:

# Spell ID 12465:

# Spell ID 12467:

# Spell ID 12468:

# Spell ID 12469:

# Spell ID 12473:

# Spell ID 12475:

# Spell ID 12476:

# Spell ID 12478:

# Spell ID 12479:

# Spell ID 12483:

# Spell ID 12485:

# Spell ID 12486:

# Spell ID 12487:

# Spell ID 12489:

# Spell ID 12493:

# Spell ID 12495:

# Spell ID 12496:

# Spell ID 12497:

# Spell ID 12498:

# Spell ID 12534:

# Spell ID 12536:

# Spell ID 12537:

# Spell ID 12538:

# Spell ID 12539:

# Spell ID 12543:

# Spell ID 12546:

# Spell ID 12547:

# Spell ID 12548:

# Spell ID 12549:

# Spell ID 12563:

# Spell ID 12564:

# Spell ID 12567:

# Spell ID 12568:

# Spell ID 12569:

# Spell ID 12573:

# Spell ID 12574:

# Spell ID 12576:

# Spell ID 12578:

# Spell ID 12579:

# Spell ID 12583:

# Spell ID 12584:

# Spell ID 12586:

# Spell ID 12587:

# Spell ID 12589:

# Spell ID 12593:

# Spell ID 12594:

# Spell ID 12596:

# Spell ID 12597:

# Spell ID 12598:

# Spell ID 12634:

# Spell ID 12635:

# Spell ID 12637:

# Spell ID 12638:

# Spell ID 12639:

# Spell ID 12643:

# Spell ID 12645:

# Spell ID 12647:

# Spell ID 12648:

# Spell ID 12649:

# Spell ID 12653:

# Spell ID 12654:

# Spell ID 12657:

# Spell ID 12658:

# Spell ID 12659:

# Spell ID 12673:

# Spell ID 12674:

# Spell ID 12675:

# Spell ID 12678:

# Spell ID 12679:

# Spell ID 12683:

# Spell ID 12684:

# Spell ID 12685:

# Spell ID 12687:

# Spell ID 12689:

# Spell ID 12693:

# Spell ID 12694:

# Spell ID 12695:

# Spell ID 12697:

# Spell ID 12698:

# Spell ID 12734:

# Spell ID 12735:

# Spell ID 12736:

# Spell ID 12738:

# Spell ID 12739:

# Spell ID 12743:

# Spell ID 12745:

# Spell ID 12746:

# Spell ID 12748:

# Spell ID 12749:

# Spell ID 12753:

# Spell ID 12754:

# Spell ID 12756:

# Spell ID 12758:

# Spell ID 12759:

# Spell ID 12763:

# Spell ID 12764:

# Spell ID 12765:

# Spell ID 12768:

# Spell ID 12769:

# Spell ID 12783:

# Spell ID 12784:

# Spell ID 12785:

# Spell ID 12786:

# Spell ID 12789:

# Spell ID 12793:

# Spell ID 12794:

# Spell ID 12795:

# Spell ID 12796:

# Spell ID 12798:

# Spell ID 12834:

# Spell ID 12835:

# Spell ID 12836:

# Spell ID 12837:

# Spell ID 12839:

# Spell ID 12843:

# Spell ID 12845:

# Spell ID 12846:

# Spell ID 12847:

# Spell ID 12849:

# Spell ID 12853:

# Spell ID 12854:

# Spell ID 12856:

# Spell ID 12857:

# Spell ID 12859:

# Spell ID 12863:

# Spell ID 12864:

# Spell ID 12865:

# Spell ID 12867:

# Spell ID 12869:

# Spell ID 12873:

# Spell ID 12874:

# Spell ID 12875:

# Spell ID 12876:

# Spell ID 12879:

# Spell ID 12893:

# Spell ID 12894:

# Spell ID 12895:

# Spell ID 12896:

# Spell ID 12897:

# Spell ID 12934:

# Spell ID 12935:

# Spell ID 12936:

# Spell ID 12937:

# Spell ID 12938:

# Spell ID 12943:

# Spell ID 12945:

# Spell ID 12946:

# Spell ID 12947:

# Spell ID 12948:

# Spell ID 12953:

# Spell ID 12954:

# Spell ID 12956:

# Spell ID 12957:

# Spell ID 12958:

# Spell ID 12963:

# Spell ID 12964:

# Spell ID 12965:

# Spell ID 12967:

# Spell ID 12968:

# Spell ID 12973:

# Spell ID 12974:

# Spell ID 12975:

# Spell ID 12976:

# Spell ID 12978:

# Spell ID 12983:

# Spell ID 12984:

# Spell ID 12985:

# Spell ID 12986:

# Spell ID 12987:

# Spell ID 13245:

# Spell ID 13246:

# Spell ID 13247:

# Spell ID 13248:

# Spell ID 13249:

# Spell ID 13254:

# Spell ID 13256:

# Spell ID 13257:

# Spell ID 13258:

# Spell ID 13259:

# Spell ID 13264:

# Spell ID 13265:

# Spell ID 13267:

# Spell ID 13268:

# Spell ID 13269:

# Spell ID 13274:

# Spell ID 13275:

# Spell ID 13276:

# Spell ID 13278:

# Spell ID 13279:

# Spell ID 13284:

# Spell ID 13285:

# Spell ID 13286:

# Spell ID 13287:

# Spell ID 13289:

# Spell ID 13294:

# Spell ID 13295:

# Spell ID 13296:

# Spell ID 13297:

# Spell ID 13298:

# Spell ID 13425:

# Spell ID 13426:

# Spell ID 13427:

# Spell ID 13428:

# Spell ID 13429:

# Spell ID 13452:

# Spell ID 13456:

# Spell ID 13457:

# Spell ID 13458:

# Spell ID 13459:

# Spell ID 13462:

# Spell ID 13465:

# Spell ID 13467:

# Spell ID 13468:

# Spell ID 13469:

# Spell ID 13472:

# Spell ID 13475:

# Spell ID 13476:

# Spell ID 13478:

# Spell ID 13479:

# Spell ID 13482:

# Spell ID 13485:

# Spell ID 13486:

# Spell ID 13487:

# Spell ID 13489:

# Spell ID 13492:

# Spell ID 13495:

# Spell ID 13496:

# Spell ID 13497:

# Spell ID 13498:

# Spell ID 13524:

# Spell ID 13526:

# Spell ID 13527:

# Spell ID 13528:

# Spell ID 13529:

# Spell ID 13542:

# Spell ID 13546:

# Spell ID 13547:

# Spell ID 13548:

# Spell ID 13549:

# Spell ID 13562:

# Spell ID 13564:

# Spell ID 13567:

# Spell ID 13568:

# Spell ID 13569:

# Spell ID 13572:

# Spell ID 13574:

# Spell ID 13576:

# Spell ID 13578:

# Spell ID 13579:

# Spell ID 13582:

# Spell ID 13584:

# Spell ID 13586:

# Spell ID 13587:

# Spell ID 13589:

# Spell ID 13592:

# Spell ID 13594:

# Spell ID 13596:

# Spell ID 13597: Chaos Bolt [T2]
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/chaos_bolt
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/chaos_bolt
execute as @e[scores={rr.spell.SpellStore=13597},tag=RunicTab1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/chaos_bolt
execute as @e[scores={rr.spell.SpellStore=13597},tag=RunicMem1Held,tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/chaos_bolt
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=13597},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 13598:

# Spell ID 13624:

# Spell ID 13625:

# Spell ID 13627:

# Spell ID 13628:

# Spell ID 13629:

# Spell ID 13642:

# Spell ID 13645:

# Spell ID 13647:

# Spell ID 13648:

# Spell ID 13649:

# Spell ID 13652:

# Spell ID 13654:

# Spell ID 13657:

# Spell ID 13658:

# Spell ID 13659:

# Spell ID 13672:

# Spell ID 13674:

# Spell ID 13675:

# Spell ID 13678:

# Spell ID 13679:

# Spell ID 13682:

# Spell ID 13684:

# Spell ID 13685:

# Spell ID 13687:

# Spell ID 13689:

# Spell ID 13692:

# Spell ID 13694:

# Spell ID 13695:

# Spell ID 13697:

# Spell ID 13698:

# Spell ID 13724:

# Spell ID 13725:

# Spell ID 13726:

# Spell ID 13728:

# Spell ID 13729:

# Spell ID 13742:

# Spell ID 13745:

# Spell ID 13746:

# Spell ID 13748:

# Spell ID 13749:

# Spell ID 13752:

# Spell ID 13754:

# Spell ID 13756:

# Spell ID 13758:

# Spell ID 13759:

# Spell ID 13762:

# Spell ID 13764:

# Spell ID 13765:

# Spell ID 13768:

# Spell ID 13769:

# Spell ID 13782:

# Spell ID 13784:

# Spell ID 13785:

# Spell ID 13786:

# Spell ID 13789:

# Spell ID 13792:

# Spell ID 13794:

# Spell ID 13795:

# Spell ID 13796:

# Spell ID 13798:

# Spell ID 13824:

# Spell ID 13825:

# Spell ID 13826:

# Spell ID 13827:

# Spell ID 13829:

# Spell ID 13842:

# Spell ID 13845:

# Spell ID 13846:

# Spell ID 13847:

# Spell ID 13849:

# Spell ID 13852:

# Spell ID 13854:

# Spell ID 13856:

# Spell ID 13857:

# Spell ID 13859:

# Spell ID 13862:

# Spell ID 13864:

# Spell ID 13865:

# Spell ID 13867:

# Spell ID 13869:

# Spell ID 13872:

# Spell ID 13874:

# Spell ID 13875:

# Spell ID 13876:

# Spell ID 13879:

# Spell ID 13892:

# Spell ID 13894:

# Spell ID 13895:

# Spell ID 13896:

# Spell ID 13897:

# Spell ID 13924:

# Spell ID 13925:

# Spell ID 13926:

# Spell ID 13927:

# Spell ID 13928:

# Spell ID 13942:

# Spell ID 13945:

# Spell ID 13946:

# Spell ID 13947:

# Spell ID 13948:

# Spell ID 13952:

# Spell ID 13954:

# Spell ID 13956:

# Spell ID 13957:

# Spell ID 13958:

# Spell ID 13962:

# Spell ID 13964:

# Spell ID 13965:

# Spell ID 13967:

# Spell ID 13968:

# Spell ID 13972:

# Spell ID 13974:

# Spell ID 13975:

# Spell ID 13976:

# Spell ID 13978:

# Spell ID 13982:

# Spell ID 13984:

# Spell ID 13985:

# Spell ID 13986:

# Spell ID 13987:

# Spell ID 14235:

# Spell ID 14236:

# Spell ID 14237:

# Spell ID 14238:

# Spell ID 14239:

# Spell ID 14253:

# Spell ID 14256:

# Spell ID 14257:

# Spell ID 14258:

# Spell ID 14259:

# Spell ID 14263:

# Spell ID 14265:

# Spell ID 14267:

# Spell ID 14268:

# Spell ID 14269:

# Spell ID 14273:

# Spell ID 14275:

# Spell ID 14276:

# Spell ID 14278:

# Spell ID 14279:

# Spell ID 14283:

# Spell ID 14285:

# Spell ID 14286:

# Spell ID 14287:

# Spell ID 14289:

# Spell ID 14293:

# Spell ID 14295:

# Spell ID 14296:

# Spell ID 14297:

# Spell ID 14298:

# Spell ID 14325:

# Spell ID 14326:

# Spell ID 14327:

# Spell ID 14328:

# Spell ID 14329:

# Spell ID 14352:

# Spell ID 14356:

# Spell ID 14357:

# Spell ID 14358:

# Spell ID 14359:

# Spell ID 14362:

# Spell ID 14365:

# Spell ID 14367:

# Spell ID 14368:

# Spell ID 14369:

# Spell ID 14372:

# Spell ID 14375:

# Spell ID 14376:

# Spell ID 14378:

# Spell ID 14379:

# Spell ID 14382:

# Spell ID 14385:

# Spell ID 14386:

# Spell ID 14387:

# Spell ID 14389:

# Spell ID 14392:

# Spell ID 14395:

# Spell ID 14396:

# Spell ID 14397:

# Spell ID 14398:

# Spell ID 14523:

# Spell ID 14526:

# Spell ID 14527:

# Spell ID 14528:

# Spell ID 14529:

# Spell ID 14532:

# Spell ID 14536:

# Spell ID 14537:

# Spell ID 14538:

# Spell ID 14539:

# Spell ID 14562:

# Spell ID 14563:

# Spell ID 14567: Liquid State (Unfinished) [T1]
execute as @e[scores={rr.spell.SpellStore=14567},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 14568:

# Spell ID 14569:

# Spell ID 14572:

# Spell ID 14573:

# Spell ID 14576:

# Spell ID 14578:

# Spell ID 14579:

# Spell ID 14582:

# Spell ID 14583:

# Spell ID 14586:

# Spell ID 14587:

# Spell ID 14589:

# Spell ID 14592:

# Spell ID 14593:

# Spell ID 14596:

# Spell ID 14597:

# Spell ID 14598:

# Spell ID 14623:

# Spell ID 14625:

# Spell ID 14627:

# Spell ID 14628:

# Spell ID 14629:

# Spell ID 14632:

# Spell ID 14635:

# Spell ID 14637:

# Spell ID 14638:

# Spell ID 14639:

# Spell ID 14652:

# Spell ID 14653:

# Spell ID 14657:

# Spell ID 14658:

# Spell ID 14659:

# Spell ID 14672:

# Spell ID 14673:

# Spell ID 14675:

# Spell ID 14678:

# Spell ID 14679:

# Spell ID 14682:

# Spell ID 14683:

# Spell ID 14685:

# Spell ID 14687:

# Spell ID 14689:

# Spell ID 14692:

# Spell ID 14693:

# Spell ID 14695:

# Spell ID 14697:

# Spell ID 14698:

# Spell ID 14723:

# Spell ID 14725:

# Spell ID 14726:

# Spell ID 14728:

# Spell ID 14729:

# Spell ID 14732:

# Spell ID 14735:

# Spell ID 14736:

# Spell ID 14738:

# Spell ID 14739:

# Spell ID 14752:

# Spell ID 14753:

# Spell ID 14756:

# Spell ID 14758:

# Spell ID 14759:

# Spell ID 14762:

# Spell ID 14763:

# Spell ID 14765:

# Spell ID 14768:

# Spell ID 14769:

# Spell ID 14782:

# Spell ID 14783:

# Spell ID 14785:

# Spell ID 14786:

# Spell ID 14789:

# Spell ID 14792:

# Spell ID 14793:

# Spell ID 14795:

# Spell ID 14796:

# Spell ID 14798:

# Spell ID 14823:

# Spell ID 14825:

# Spell ID 14826:

# Spell ID 14827:

# Spell ID 14829:

# Spell ID 14832:

# Spell ID 14835:

# Spell ID 14836:

# Spell ID 14837:

# Spell ID 14839:

# Spell ID 14852:

# Spell ID 14853:

# Spell ID 14856:

# Spell ID 14857:

# Spell ID 14859:

# Spell ID 14862:

# Spell ID 14863:

# Spell ID 14865:

# Spell ID 14867:

# Spell ID 14869:

# Spell ID 14872:

# Spell ID 14873:

# Spell ID 14875:

# Spell ID 14876:

# Spell ID 14879:

# Spell ID 14892:

# Spell ID 14893:

# Spell ID 14895:

# Spell ID 14896:

# Spell ID 14897:

# Spell ID 14923:

# Spell ID 14925:

# Spell ID 14926:

# Spell ID 14927:

# Spell ID 14928:

# Spell ID 14932:

# Spell ID 14935:

# Spell ID 14936:

# Spell ID 14937:

# Spell ID 14938:

# Spell ID 14952:

# Spell ID 14953:

# Spell ID 14956:

# Spell ID 14957:

# Spell ID 14958:

# Spell ID 14962:

# Spell ID 14963:

# Spell ID 14965:

# Spell ID 14967:

# Spell ID 14968:

# Spell ID 14972:

# Spell ID 14973:

# Spell ID 14975:

# Spell ID 14976:

# Spell ID 14978:

# Spell ID 14982:

# Spell ID 14983:

# Spell ID 14985:

# Spell ID 14986:

# Spell ID 14987:


# 15120 possible Spells

scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0