# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 25134:

# Spell ID 25136:

# Spell ID 25137:

# Spell ID 25138:

# Spell ID 25139:

# Spell ID 25143:

# Spell ID 25146:

# Spell ID 25147:

# Spell ID 25148:

# Spell ID 25149:

# Spell ID 25163:

# Spell ID 25164:

# Spell ID 25167:

# Spell ID 25168:

# Spell ID 25169:

# Spell ID 25173:

# Spell ID 25174:

# Spell ID 25176:

# Spell ID 25178:

# Spell ID 25179:

# Spell ID 25183:

# Spell ID 25184:

# Spell ID 25186:

# Spell ID 25187:

# Spell ID 25189:

# Spell ID 25193:

# Spell ID 25194:

# Spell ID 25196:

# Spell ID 25197:

# Spell ID 25198:

# Spell ID 25314:

# Spell ID 25316:

# Spell ID 25317:

# Spell ID 25318:

# Spell ID 25319:

# Spell ID 25341:

# Spell ID 25346:

# Spell ID 25347:

# Spell ID 25348:

# Spell ID 25349:

# Spell ID 25361:

# Spell ID 25364:

# Spell ID 25367:

# Spell ID 25368:

# Spell ID 25369:

# Spell ID 25371:

# Spell ID 25374:

# Spell ID 25376:

# Spell ID 25378:

# Spell ID 25379:

# Spell ID 25381:

# Spell ID 25384:

# Spell ID 25386:

# Spell ID 25387:

# Spell ID 25389:

# Spell ID 25391:

# Spell ID 25394:

# Spell ID 25396:

# Spell ID 25397:

# Spell ID 25398:

# Spell ID 25413:

# Spell ID 25416:

# Spell ID 25417:

# Spell ID 25418:

# Spell ID 25419:

# Spell ID 25431:

# Spell ID 25436:

# Spell ID 25437:

# Spell ID 25438:

# Spell ID 25439:

# Spell ID 25461:

# Spell ID 25463:

# Spell ID 25467:

# Spell ID 25468:

# Spell ID 25469:

# Spell ID 25471:

# Spell ID 25473:

# Spell ID 25476:

# Spell ID 25478:

# Spell ID 25479:

# Spell ID 25481:

# Spell ID 25483:

# Spell ID 25486:

# Spell ID 25487:

# Spell ID 25489:

# Spell ID 25491:

# Spell ID 25493:

# Spell ID 25496:

# Spell ID 25497:

# Spell ID 25498:

# Spell ID 25613:

# Spell ID 25614:

# Spell ID 25617:

# Spell ID 25618:

# Spell ID 25619:

# Spell ID 25631:

# Spell ID 25634:

# Spell ID 25637:

# Spell ID 25638:

# Spell ID 25639:

# Spell ID 25641:

# Spell ID 25643:

# Spell ID 25647:

# Spell ID 25648:

# Spell ID 25649:

# Spell ID 25671:

# Spell ID 25673:

# Spell ID 25674:

# Spell ID 25678:

# Spell ID 25679:

# Spell ID 25681:

# Spell ID 25683:

# Spell ID 25684:

# Spell ID 25687:

# Spell ID 25689:

# Spell ID 25691:

# Spell ID 25693:

# Spell ID 25694:

# Spell ID 25697:

# Spell ID 25698:

# Spell ID 25713:

# Spell ID 25714:

# Spell ID 25716:

# Spell ID 25718:

# Spell ID 25719:

# Spell ID 25731:

# Spell ID 25734:

# Spell ID 25736:

# Spell ID 25738:

# Spell ID 25739:

# Spell ID 25741:

# Spell ID 25743:

# Spell ID 25746:

# Spell ID 25748:

# Spell ID 25749:

# Spell ID 25761:

# Spell ID 25763:

# Spell ID 25764:

# Spell ID 25768:

# Spell ID 25769:

# Spell ID 25781:

# Spell ID 25783:

# Spell ID 25784:

# Spell ID 25786:

# Spell ID 25789:

# Spell ID 25791:

# Spell ID 25793:

# Spell ID 25794:

# Spell ID 25796:

# Spell ID 25798:

# Spell ID 25813:

# Spell ID 25814:

# Spell ID 25816:

# Spell ID 25817:

# Spell ID 25819:

# Spell ID 25831:

# Spell ID 25834:

# Spell ID 25836:

# Spell ID 25837:

# Spell ID 25839:

# Spell ID 25841:

# Spell ID 25843:

# Spell ID 25846:

# Spell ID 25847:

# Spell ID 25849:

# Spell ID 25861:

# Spell ID 25863:

# Spell ID 25864:

# Spell ID 25867:

# Spell ID 25869:

# Spell ID 25871:

# Spell ID 25873:

# Spell ID 25874:

# Spell ID 25876:

# Spell ID 25879:

# Spell ID 25891: Quick Fall [T2]
execute as @e[scores={rr.spell.SpellStore=25891},tag=!RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/quick_fall
execute as @e[scores={rr.spell.SpellStore=25891},tag=!RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/quick_fall
execute as @e[scores={rr.spell.SpellStore=25891},tag=RunicTab1Held,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/quick_fall
execute as @e[scores={rr.spell.SpellStore=25891},tag=RunicMem1Held,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/quick_fall
execute as @e[scores={rr.spell.SpellStore=25891},tag=!RunicSpellStarted,tag=RunicTab1Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=25891},tag=!RunicSpellStarted,tag=RunicMem1Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 25893:

# Spell ID 25894:

# Spell ID 25896:

# Spell ID 25897:

# Spell ID 25913:

# Spell ID 25914:

# Spell ID 25916:

# Spell ID 25917:

# Spell ID 25918:

# Spell ID 25931:

# Spell ID 25934:

# Spell ID 25936:

# Spell ID 25937:

# Spell ID 25938:

# Spell ID 25941:

# Spell ID 25943:

# Spell ID 25946:

# Spell ID 25947:

# Spell ID 25948:

# Spell ID 25961:

# Spell ID 25963:

# Spell ID 25964:

# Spell ID 25967:

# Spell ID 25968:

# Spell ID 25971:

# Spell ID 25973:

# Spell ID 25974:

# Spell ID 25976:

# Spell ID 25978:

# Spell ID 25981:

# Spell ID 25983:

# Spell ID 25984:

# Spell ID 25986:

# Spell ID 25987:

# Spell ID 26134:

# Spell ID 26135:

# Spell ID 26137:

# Spell ID 26138:

# Spell ID 26139:

# Spell ID 26143:

# Spell ID 26145:

# Spell ID 26147:

# Spell ID 26148:

# Spell ID 26149:

# Spell ID 26153:

# Spell ID 26154:

# Spell ID 26157:

# Spell ID 26158:

# Spell ID 26159:

# Spell ID 26173:

# Spell ID 26174:

# Spell ID 26175:

# Spell ID 26178:

# Spell ID 26179:

# Spell ID 26183:

# Spell ID 26184:

# Spell ID 26185:

# Spell ID 26187:

# Spell ID 26189:

# Spell ID 26193:

# Spell ID 26194: Invisify [T1]
execute as @e[scores={rr.spell.SpellStore=26194},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/invisify

# Spell ID 26195:

# Spell ID 26197:

# Spell ID 26198:

# Spell ID 26314:

# Spell ID 26315:

# Spell ID 26317:

# Spell ID 26318:

# Spell ID 26319:

# Spell ID 26341:

# Spell ID 26345:

# Spell ID 26347:

# Spell ID 26348:

# Spell ID 26349:

# Spell ID 26351:

# Spell ID 26354:

# Spell ID 26357:

# Spell ID 26358:

# Spell ID 26359:

# Spell ID 26371:

# Spell ID 26374:

# Spell ID 26375:

# Spell ID 26378:

# Spell ID 26379:

# Spell ID 26381:

# Spell ID 26384:

# Spell ID 26385:

# Spell ID 26387:

# Spell ID 26389:

# Spell ID 26391:

# Spell ID 26394:

# Spell ID 26395:

# Spell ID 26397:

# Spell ID 26398:

# Spell ID 26413:

# Spell ID 26415:

# Spell ID 26417:

# Spell ID 26418:

# Spell ID 26419:

# Spell ID 26431:

# Spell ID 26435:

# Spell ID 26437:

# Spell ID 26438:

# Spell ID 26439:

# Spell ID 26451:

# Spell ID 26453:

# Spell ID 26457:

# Spell ID 26458:

# Spell ID 26459:

# Spell ID 26471:

# Spell ID 26473:

# Spell ID 26475:

# Spell ID 26478:

# Spell ID 26479:

# Spell ID 26481:

# Spell ID 26483:

# Spell ID 26485:

# Spell ID 26487:

# Spell ID 26489:

# Spell ID 26491:

# Spell ID 26493:

# Spell ID 26495:

# Spell ID 26497:

# Spell ID 26498:

# Spell ID 26513:

# Spell ID 26514:

# Spell ID 26517:

# Spell ID 26518:

# Spell ID 26519:

# Spell ID 26531:

# Spell ID 26534:

# Spell ID 26537:

# Spell ID 26538:

# Spell ID 26539:

# Spell ID 26541:

# Spell ID 26543:

# Spell ID 26547:

# Spell ID 26548: Cleanse [T1]
execute as @e[scores={rr.spell.SpellStore=26548},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/cleanse

# Spell ID 26549:

# Spell ID 26571:

# Spell ID 26573:

# Spell ID 26574:

# Spell ID 26578:

# Spell ID 26579:

# Spell ID 26581:

# Spell ID 26583:

# Spell ID 26584:

# Spell ID 26587:

# Spell ID 26589:

# Spell ID 26591:

# Spell ID 26593:

# Spell ID 26594:

# Spell ID 26597:

# Spell ID 26598:

# Spell ID 26713:

# Spell ID 26714:

# Spell ID 26715:

# Spell ID 26718:

# Spell ID 26719:

# Spell ID 26731:

# Spell ID 26734:

# Spell ID 26735:

# Spell ID 26738:

# Spell ID 26739:

# Spell ID 26741:

# Spell ID 26743:

# Spell ID 26745:

# Spell ID 26748:

# Spell ID 26749:

# Spell ID 26751:

# Spell ID 26753:

# Spell ID 26754:

# Spell ID 26758:

# Spell ID 26759:

# Spell ID 26781:

# Spell ID 26783:

# Spell ID 26784:

# Spell ID 26785:

# Spell ID 26789:

# Spell ID 26791:

# Spell ID 26793:

# Spell ID 26794:

# Spell ID 26795:

# Spell ID 26798:

# Spell ID 26813:

# Spell ID 26814:

# Spell ID 26815:

# Spell ID 26817:

# Spell ID 26819:

# Spell ID 26831:

# Spell ID 26834:

# Spell ID 26835:

# Spell ID 26837:

# Spell ID 26839:

# Spell ID 26841:

# Spell ID 26843:

# Spell ID 26845:

# Spell ID 26847:

# Spell ID 26849: Timestop Aura (Unfinished) [T2]
execute as @e[scores={rr.spell.SpellStore=26849},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 26851:

# Spell ID 26853:

# Spell ID 26854:

# Spell ID 26857:

# Spell ID 26859:

# Spell ID 26871:

# Spell ID 26873:

# Spell ID 26874:

# Spell ID 26875:

# Spell ID 26879:

# Spell ID 26891:

# Spell ID 26893:

# Spell ID 26894:

# Spell ID 26895:

# Spell ID 26897:

# Spell ID 26913:

# Spell ID 26914:

# Spell ID 26915:

# Spell ID 26917:

# Spell ID 26918:

# Spell ID 26931:

# Spell ID 26934:

# Spell ID 26935:

# Spell ID 26937:

# Spell ID 26938:

# Spell ID 26941:

# Spell ID 26943:

# Spell ID 26945:

# Spell ID 26947:

# Spell ID 26948:

# Spell ID 26951:

# Spell ID 26953:

# Spell ID 26954:

# Spell ID 26957:

# Spell ID 26958:

# Spell ID 26971:

# Spell ID 26973:

# Spell ID 26974:

# Spell ID 26975:

# Spell ID 26978:

# Spell ID 26981:

# Spell ID 26983:

# Spell ID 26984:

# Spell ID 26985:

# Spell ID 26987:

# Spell ID 27134:

# Spell ID 27135:

# Spell ID 27136:

# Spell ID 27138:

# Spell ID 27139:

# Spell ID 27143:

# Spell ID 27145:

# Spell ID 27146:

# Spell ID 27148:

# Spell ID 27149:

# Spell ID 27153:

# Spell ID 27154:

# Spell ID 27156:

# Spell ID 27158:

# Spell ID 27159:

# Spell ID 27163:

# Spell ID 27164:

# Spell ID 27165:

# Spell ID 27168:

# Spell ID 27169:

# Spell ID 27183:

# Spell ID 27184:

# Spell ID 27185:

# Spell ID 27186:

# Spell ID 27189:

# Spell ID 27193:

# Spell ID 27194:

# Spell ID 27195:

# Spell ID 27196:

# Spell ID 27198:

# Spell ID 27314:

# Spell ID 27315:

# Spell ID 27316:

# Spell ID 27318:

# Spell ID 27319:

# Spell ID 27341:

# Spell ID 27345:

# Spell ID 27346:

# Spell ID 27348:

# Spell ID 27349:

# Spell ID 27351:

# Spell ID 27354:

# Spell ID 27356:

# Spell ID 27358:

# Spell ID 27359:

# Spell ID 27361:

# Spell ID 27364:

# Spell ID 27365:

# Spell ID 27368:

# Spell ID 27369:

# Spell ID 27381:

# Spell ID 27384:

# Spell ID 27385:

# Spell ID 27386:

# Spell ID 27389:

# Spell ID 27391:

# Spell ID 27394:

# Spell ID 27395:

# Spell ID 27396:

# Spell ID 27398:

# Spell ID 27413:

# Spell ID 27415:

# Spell ID 27416:

# Spell ID 27418:

# Spell ID 27419:

# Spell ID 27431:

# Spell ID 27435:

# Spell ID 27436:

# Spell ID 27438:

# Spell ID 27439:

# Spell ID 27451:

# Spell ID 27453:

# Spell ID 27456:

# Spell ID 27458:

# Spell ID 27459:

# Spell ID 27461:

# Spell ID 27463:

# Spell ID 27465:

# Spell ID 27468:

# Spell ID 27469:

# Spell ID 27481:

# Spell ID 27483:

# Spell ID 27485:

# Spell ID 27486:

# Spell ID 27489:

# Spell ID 27491:

# Spell ID 27493:

# Spell ID 27495:

# Spell ID 27496:

# Spell ID 27498:

# Spell ID 27513:

# Spell ID 27514:

# Spell ID 27516:

# Spell ID 27518:

# Spell ID 27519:

# Spell ID 27531:

# Spell ID 27534:

# Spell ID 27536:

# Spell ID 27538:

# Spell ID 27539:

# Spell ID 27541:

# Spell ID 27543:

# Spell ID 27546:

# Spell ID 27548:

# Spell ID 27549:

# Spell ID 27561:

# Spell ID 27563:

# Spell ID 27564:

# Spell ID 27568:

# Spell ID 27569:

# Spell ID 27581:

# Spell ID 27583:

# Spell ID 27584:

# Spell ID 27586:

# Spell ID 27589:

# Spell ID 27591:

# Spell ID 27593:

# Spell ID 27594:

# Spell ID 27596:

# Spell ID 27598:

# Spell ID 27613:

# Spell ID 27614:

# Spell ID 27615:

# Spell ID 27618:

# Spell ID 27619:

# Spell ID 27631:

# Spell ID 27634:

# Spell ID 27635:

# Spell ID 27638:

# Spell ID 27639:

# Spell ID 27641:

# Spell ID 27643:

# Spell ID 27645:

# Spell ID 27648:

# Spell ID 27649:

# Spell ID 27651:

# Spell ID 27653:

# Spell ID 27654:

# Spell ID 27658:

# Spell ID 27659:

# Spell ID 27681:

# Spell ID 27683:

# Spell ID 27684:

# Spell ID 27685:

# Spell ID 27689:

# Spell ID 27691:

# Spell ID 27693:

# Spell ID 27694:

# Spell ID 27695:

# Spell ID 27698:

# Spell ID 27813:

# Spell ID 27814:

# Spell ID 27815:

# Spell ID 27816:

# Spell ID 27819:

# Spell ID 27831:

# Spell ID 27834:

# Spell ID 27835:

# Spell ID 27836:

# Spell ID 27839:

# Spell ID 27841:

# Spell ID 27843:

# Spell ID 27845:

# Spell ID 27846:

# Spell ID 27849:

# Spell ID 27851:

# Spell ID 27853:

# Spell ID 27854:

# Spell ID 27856:

# Spell ID 27859:

# Spell ID 27861:

# Spell ID 27863:

# Spell ID 27864:

# Spell ID 27865:

# Spell ID 27869:

# Spell ID 27891:

# Spell ID 27893:

# Spell ID 27894:

# Spell ID 27895:

# Spell ID 27896:

# Spell ID 27913:

# Spell ID 27914:

# Spell ID 27915:

# Spell ID 27916:

# Spell ID 27918:

# Spell ID 27931:

# Spell ID 27934:

# Spell ID 27935:

# Spell ID 27936:

# Spell ID 27938:

# Spell ID 27941:

# Spell ID 27943:

# Spell ID 27945:

# Spell ID 27946:

# Spell ID 27948:

# Spell ID 27951:

# Spell ID 27953:

# Spell ID 27954:

# Spell ID 27956:

# Spell ID 27958:

# Spell ID 27961:

# Spell ID 27963:

# Spell ID 27964:

# Spell ID 27965:

# Spell ID 27968:

# Spell ID 27981:

# Spell ID 27983:

# Spell ID 27984:

# Spell ID 27985:

# Spell ID 27986:

# Spell ID 28134:

# Spell ID 28135:

# Spell ID 28136:

# Spell ID 28137:

# Spell ID 28139:

# Spell ID 28143:

# Spell ID 28145:

# Spell ID 28146:

# Spell ID 28147:

# Spell ID 28149:

# Spell ID 28153:

# Spell ID 28154:

# Spell ID 28156:

# Spell ID 28157:

# Spell ID 28159:

# Spell ID 28163:

# Spell ID 28164:

# Spell ID 28165:

# Spell ID 28167:

# Spell ID 28169:

# Spell ID 28173:

# Spell ID 28174:

# Spell ID 28175:

# Spell ID 28176:

# Spell ID 28179:

# Spell ID 28193:

# Spell ID 28194:

# Spell ID 28195:

# Spell ID 28196:

# Spell ID 28197:

# Spell ID 28314:

# Spell ID 28315:

# Spell ID 28316:

# Spell ID 28317:

# Spell ID 28319:

# Spell ID 28341:

# Spell ID 28345:

# Spell ID 28346:

# Spell ID 28347:

# Spell ID 28349:

# Spell ID 28351:

# Spell ID 28354:

# Spell ID 28356:

# Spell ID 28357:

# Spell ID 28359:

# Spell ID 28361:

# Spell ID 28364:

# Spell ID 28365:

# Spell ID 28367:

# Spell ID 28369:

# Spell ID 28371:

# Spell ID 28374:

# Spell ID 28375:

# Spell ID 28376:

# Spell ID 28379:

# Spell ID 28391:

# Spell ID 28394:

# Spell ID 28395:

# Spell ID 28396:

# Spell ID 28397:

# Spell ID 28413:

# Spell ID 28415:

# Spell ID 28416:

# Spell ID 28417:

# Spell ID 28419:

# Spell ID 28431:

# Spell ID 28435:

# Spell ID 28436:

# Spell ID 28437:

# Spell ID 28439:

# Spell ID 28451:

# Spell ID 28453:

# Spell ID 28456:

# Spell ID 28457:

# Spell ID 28459:

# Spell ID 28461:

# Spell ID 28463:

# Spell ID 28465:

# Spell ID 28467:

# Spell ID 28469:

# Spell ID 28471:

# Spell ID 28473:

# Spell ID 28475:

# Spell ID 28476:

# Spell ID 28479:

# Spell ID 28491:

# Spell ID 28493:

# Spell ID 28495:

# Spell ID 28496:

# Spell ID 28497:

# Spell ID 28513:

# Spell ID 28514:

# Spell ID 28516:

# Spell ID 28517:

# Spell ID 28519:

# Spell ID 28531:

# Spell ID 28534:

# Spell ID 28536:

# Spell ID 28537:

# Spell ID 28539:

# Spell ID 28541:

# Spell ID 28543:

# Spell ID 28546:

# Spell ID 28547:

# Spell ID 28549:

# Spell ID 28561:

# Spell ID 28563:

# Spell ID 28564:

# Spell ID 28567:

# Spell ID 28569:

# Spell ID 28571:

# Spell ID 28573:

# Spell ID 28574:

# Spell ID 28576:

# Spell ID 28579:

# Spell ID 28591:

# Spell ID 28593:

# Spell ID 28594:

# Spell ID 28596:

# Spell ID 28597:

# Spell ID 28613:

# Spell ID 28614:

# Spell ID 28615:

# Spell ID 28617:

# Spell ID 28619:

# Spell ID 28631:

# Spell ID 28634:

# Spell ID 28635:

# Spell ID 28637:

# Spell ID 28639:

# Spell ID 28641:

# Spell ID 28643:

# Spell ID 28645:

# Spell ID 28647:

# Spell ID 28649:

# Spell ID 28651:

# Spell ID 28653:

# Spell ID 28654:

# Spell ID 28657:

# Spell ID 28659:

# Spell ID 28671:

# Spell ID 28673:

# Spell ID 28674:

# Spell ID 28675:

# Spell ID 28679:

# Spell ID 28691:

# Spell ID 28693:

# Spell ID 28694:

# Spell ID 28695:

# Spell ID 28697:

# Spell ID 28713:

# Spell ID 28714:

# Spell ID 28715:

# Spell ID 28716:

# Spell ID 28719:

# Spell ID 28731:

# Spell ID 28734:

# Spell ID 28735:

# Spell ID 28736:

# Spell ID 28739:

# Spell ID 28741:

# Spell ID 28743:

# Spell ID 28745:

# Spell ID 28746:

# Spell ID 28749:

# Spell ID 28751:

# Spell ID 28753:

# Spell ID 28754:

# Spell ID 28756:

# Spell ID 28759:

# Spell ID 28761:

# Spell ID 28763:

# Spell ID 28764:

# Spell ID 28765:

# Spell ID 28769:

# Spell ID 28791:

# Spell ID 28793:

# Spell ID 28794:

# Spell ID 28795:

# Spell ID 28796:

# Spell ID 28913:

# Spell ID 28914:

# Spell ID 28915:

# Spell ID 28916:

# Spell ID 28917:

# Spell ID 28931:

# Spell ID 28934:

# Spell ID 28935:

# Spell ID 28936:

# Spell ID 28937:

# Spell ID 28941:

# Spell ID 28943:

# Spell ID 28945:

# Spell ID 28946:

# Spell ID 28947:

# Spell ID 28951:

# Spell ID 28953:

# Spell ID 28954:

# Spell ID 28956:

# Spell ID 28957:

# Spell ID 28961:

# Spell ID 28963:

# Spell ID 28964:

# Spell ID 28965:

# Spell ID 28967:

# Spell ID 28971:

# Spell ID 28973:

# Spell ID 28974:

# Spell ID 28975:

# Spell ID 28976:

# Spell ID 29134:

# Spell ID 29135:

# Spell ID 29136:

# Spell ID 29137:

# Spell ID 29138:

# Spell ID 29143:

# Spell ID 29145:

# Spell ID 29146:

# Spell ID 29147:

# Spell ID 29148:

# Spell ID 29153:

# Spell ID 29154:

# Spell ID 29156:

# Spell ID 29157:

# Spell ID 29158:

# Spell ID 29163:

# Spell ID 29164:

# Spell ID 29165:

# Spell ID 29167:

# Spell ID 29168:

# Spell ID 29173:

# Spell ID 29174:

# Spell ID 29175:

# Spell ID 29176:

# Spell ID 29178:

# Spell ID 29183:

# Spell ID 29184:

# Spell ID 29185:

# Spell ID 29186:

# Spell ID 29187:

# Spell ID 29314:

# Spell ID 29315:

# Spell ID 29316:

# Spell ID 29317:

# Spell ID 29318:

# Spell ID 29341:

# Spell ID 29345:

# Spell ID 29346:

# Spell ID 29347:

# Spell ID 29348:

# Spell ID 29351:

# Spell ID 29354:

# Spell ID 29356:

# Spell ID 29357:

# Spell ID 29358:

# Spell ID 29361:

# Spell ID 29364:

# Spell ID 29365:

# Spell ID 29367:

# Spell ID 29368:

# Spell ID 29371:

# Spell ID 29374:

# Spell ID 29375:

# Spell ID 29376:

# Spell ID 29378:

# Spell ID 29381:

# Spell ID 29384:

# Spell ID 29385:

# Spell ID 29386:

# Spell ID 29387:

# Spell ID 29413:

# Spell ID 29415:

# Spell ID 29416:

# Spell ID 29417:

# Spell ID 29418:

# Spell ID 29431:

# Spell ID 29435:

# Spell ID 29436:

# Spell ID 29437:

# Spell ID 29438:

# Spell ID 29451:

# Spell ID 29453:

# Spell ID 29456:

# Spell ID 29457:

# Spell ID 29458:

# Spell ID 29461:

# Spell ID 29463:

# Spell ID 29465:

# Spell ID 29467:

# Spell ID 29468:

# Spell ID 29471:

# Spell ID 29473:

# Spell ID 29475:

# Spell ID 29476:

# Spell ID 29478:

# Spell ID 29481:

# Spell ID 29483:

# Spell ID 29485:

# Spell ID 29486:

# Spell ID 29487:

# Spell ID 29513:

# Spell ID 29514:

# Spell ID 29516:

# Spell ID 29517:

# Spell ID 29518:

# Spell ID 29531:

# Spell ID 29534:

# Spell ID 29536:

# Spell ID 29537:

# Spell ID 29538:

# Spell ID 29541:

# Spell ID 29543:

# Spell ID 29546:

# Spell ID 29547:

# Spell ID 29548:

# Spell ID 29561:

# Spell ID 29563:

# Spell ID 29564:

# Spell ID 29567:

# Spell ID 29568:

# Spell ID 29571:

# Spell ID 29573:

# Spell ID 29574:

# Spell ID 29576:

# Spell ID 29578:

# Spell ID 29581:

# Spell ID 29583:

# Spell ID 29584:

# Spell ID 29586:

# Spell ID 29587:

# Spell ID 29613:

# Spell ID 29614:

# Spell ID 29615:

# Spell ID 29617:

# Spell ID 29618:

# Spell ID 29631:

# Spell ID 29634:

# Spell ID 29635:

# Spell ID 29637:

# Spell ID 29638:

# Spell ID 29641:

# Spell ID 29643:

# Spell ID 29645:

# Spell ID 29647:

# Spell ID 29648:

# Spell ID 29651:

# Spell ID 29653:

# Spell ID 29654:

# Spell ID 29657:

# Spell ID 29658:

# Spell ID 29671:

# Spell ID 29673:

# Spell ID 29674:

# Spell ID 29675:

# Spell ID 29678:

# Spell ID 29681:

# Spell ID 29683:

# Spell ID 29684:

# Spell ID 29685:

# Spell ID 29687:

# Spell ID 29713:

# Spell ID 29714:

# Spell ID 29715:

# Spell ID 29716:

# Spell ID 29718:

# Spell ID 29731:

# Spell ID 29734:

# Spell ID 29735:

# Spell ID 29736:

# Spell ID 29738:

# Spell ID 29741:

# Spell ID 29743:

# Spell ID 29745:

# Spell ID 29746:

# Spell ID 29748:

# Spell ID 29751:

# Spell ID 29753:

# Spell ID 29754:

# Spell ID 29756:

# Spell ID 29758:

# Spell ID 29761:

# Spell ID 29763:

# Spell ID 29764:

# Spell ID 29765:

# Spell ID 29768:

# Spell ID 29781:

# Spell ID 29783:

# Spell ID 29784:

# Spell ID 29785:

# Spell ID 29786:

# Spell ID 29813:

# Spell ID 29814:

# Spell ID 29815:

# Spell ID 29816:

# Spell ID 29817:

# Spell ID 29831:

# Spell ID 29834:

# Spell ID 29835:

# Spell ID 29836:

# Spell ID 29837:

# Spell ID 29841:

# Spell ID 29843:

# Spell ID 29845:

# Spell ID 29846:

# Spell ID 29847:

# Spell ID 29851:

# Spell ID 29853:

# Spell ID 29854:

# Spell ID 29856:

# Spell ID 29857:

# Spell ID 29861:

# Spell ID 29863:

# Spell ID 29864:

# Spell ID 29865:

# Spell ID 29867:

# Spell ID 29871:

# Spell ID 29873:

# Spell ID 29874:

# Spell ID 29875:

# Spell ID 29876:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0