# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 31245:

# Spell ID 31246:

# Spell ID 31247:

# Spell ID 31248:

# Spell ID 31249:

# Spell ID 31254:

# Spell ID 31256:

# Spell ID 31257:

# Spell ID 31258:

# Spell ID 31259:

# Spell ID 31264:

# Spell ID 31265:

# Spell ID 31267:

# Spell ID 31268:

# Spell ID 31269:

# Spell ID 31274:

# Spell ID 31275:

# Spell ID 31276:

# Spell ID 31278:

# Spell ID 31279:

# Spell ID 31284:

# Spell ID 31285:

# Spell ID 31286:

# Spell ID 31287:

# Spell ID 31289:

# Spell ID 31294:

# Spell ID 31295:

# Spell ID 31296:

# Spell ID 31297:

# Spell ID 31298:

# Spell ID 31425:

# Spell ID 31426:

# Spell ID 31427:

# Spell ID 31428:

# Spell ID 31429:

# Spell ID 31452:

# Spell ID 31456:

# Spell ID 31457:

# Spell ID 31458:

# Spell ID 31459:

# Spell ID 31462:

# Spell ID 31465:

# Spell ID 31467:

# Spell ID 31468:

# Spell ID 31469:

# Spell ID 31472:

# Spell ID 31475:

# Spell ID 31476:

# Spell ID 31478:

# Spell ID 31479:

# Spell ID 31482:

# Spell ID 31485:

# Spell ID 31486:

# Spell ID 31487:

# Spell ID 31489:

# Spell ID 31492:

# Spell ID 31495:

# Spell ID 31496:

# Spell ID 31497:

# Spell ID 31498:

# Spell ID 31524:

# Spell ID 31526:

# Spell ID 31527:

# Spell ID 31528:

# Spell ID 31529:

# Spell ID 31542:

# Spell ID 31546:

# Spell ID 31547:

# Spell ID 31548:

# Spell ID 31549:

# Spell ID 31562:

# Spell ID 31564:

# Spell ID 31567:

# Spell ID 31568:

# Spell ID 31569:

# Spell ID 31572:

# Spell ID 31574:

# Spell ID 31576:

# Spell ID 31578:

# Spell ID 31579:

# Spell ID 31582:

# Spell ID 31584:

# Spell ID 31586:

# Spell ID 31587:

# Spell ID 31589:

# Spell ID 31592:

# Spell ID 31594:

# Spell ID 31596:

# Spell ID 31597:

# Spell ID 31598:

# Spell ID 31624:

# Spell ID 31625:

# Spell ID 31627:

# Spell ID 31628:

# Spell ID 31629:

# Spell ID 31642:

# Spell ID 31645:

# Spell ID 31647:

# Spell ID 31648:

# Spell ID 31649:

# Spell ID 31652:

# Spell ID 31654:

# Spell ID 31657:

# Spell ID 31658:

# Spell ID 31659:

# Spell ID 31672:

# Spell ID 31674:

# Spell ID 31675:

# Spell ID 31678:

# Spell ID 31679:

# Spell ID 31682:

# Spell ID 31684:

# Spell ID 31685:

# Spell ID 31687:

# Spell ID 31689:

# Spell ID 31692:

# Spell ID 31694:

# Spell ID 31695:

# Spell ID 31697:

# Spell ID 31698:

# Spell ID 31724:

# Spell ID 31725:

# Spell ID 31726:

# Spell ID 31728:

# Spell ID 31729:

# Spell ID 31742:

# Spell ID 31745:

# Spell ID 31746:

# Spell ID 31748:

# Spell ID 31749:

# Spell ID 31752:

# Spell ID 31754:

# Spell ID 31756:

# Spell ID 31758:

# Spell ID 31759:

# Spell ID 31762:

# Spell ID 31764:

# Spell ID 31765:

# Spell ID 31768:

# Spell ID 31769:

# Spell ID 31782:

# Spell ID 31784:

# Spell ID 31785:

# Spell ID 31786:

# Spell ID 31789:

# Spell ID 31792:

# Spell ID 31794:

# Spell ID 31795:

# Spell ID 31796:

# Spell ID 31798:

# Spell ID 31824:

# Spell ID 31825:

# Spell ID 31826:

# Spell ID 31827:

# Spell ID 31829:

# Spell ID 31842:

# Spell ID 31845:

# Spell ID 31846:

# Spell ID 31847:

# Spell ID 31849:

# Spell ID 31852:

# Spell ID 31854:

# Spell ID 31856:

# Spell ID 31857:

# Spell ID 31859: Frost Cluster [T3]
execute as @e[scores={rr.spell.SpellStore=31859},tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cluster_shot

execute as @e[scores={rr.spell.SpellStore=31859},predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_t3_t4,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cluster_shot
execute as @e[scores={rr.spell.SpellStore=31859},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/cluster_shot

execute as @e[scores={rr.spell.SpellStore=31859},tag=!RunicSpellStarted,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=31859},tag=!RunicSpellStarted,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=31859},tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicSpellStarted,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=31859},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicSpellStarted,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 31862:

# Spell ID 31864:

# Spell ID 31865:

# Spell ID 31867:

# Spell ID 31869:

# Spell ID 31872:

# Spell ID 31874:

# Spell ID 31875:

# Spell ID 31876:

# Spell ID 31879:

# Spell ID 31892:

# Spell ID 31894:

# Spell ID 31895:

# Spell ID 31896:

# Spell ID 31897:

# Spell ID 31924:

# Spell ID 31925:

# Spell ID 31926:

# Spell ID 31927:

# Spell ID 31928:

# Spell ID 31942:

# Spell ID 31945:

# Spell ID 31946:

# Spell ID 31947:

# Spell ID 31948:

# Spell ID 31952:

# Spell ID 31954:

# Spell ID 31956:

# Spell ID 31957:

# Spell ID 31958:

# Spell ID 31962:

# Spell ID 31964:

# Spell ID 31965:

# Spell ID 31967:

# Spell ID 31968:

# Spell ID 31972:

# Spell ID 31974:

# Spell ID 31975:

# Spell ID 31976:

# Spell ID 31978:

# Spell ID 31982:

# Spell ID 31984:

# Spell ID 31985:

# Spell ID 31986:

# Spell ID 31987:

# Spell ID 32145:

# Spell ID 32146:

# Spell ID 32147:

# Spell ID 32148:

# Spell ID 32149:

# Spell ID 32154:

# Spell ID 32156:

# Spell ID 32157:

# Spell ID 32158:

# Spell ID 32159:

# Spell ID 32164:

# Spell ID 32165:

# Spell ID 32167:

# Spell ID 32168:

# Spell ID 32169:

# Spell ID 32174:

# Spell ID 32175:

# Spell ID 32176:

# Spell ID 32178:

# Spell ID 32179:

# Spell ID 32184:

# Spell ID 32185:

# Spell ID 32186:

# Spell ID 32187:

# Spell ID 32189:

# Spell ID 32194:

# Spell ID 32195:

# Spell ID 32196:

# Spell ID 32197:

# Spell ID 32198:

# Spell ID 32415:

# Spell ID 32416:

# Spell ID 32417:

# Spell ID 32418:

# Spell ID 32419:

# Spell ID 32451:

# Spell ID 32456:

# Spell ID 32457:

# Spell ID 32458:

# Spell ID 32459:

# Spell ID 32461:

# Spell ID 32465:

# Spell ID 32467:

# Spell ID 32468:

# Spell ID 32469:

# Spell ID 32471:

# Spell ID 32475:

# Spell ID 32476:

# Spell ID 32478:

# Spell ID 32479:

# Spell ID 32481:

# Spell ID 32485:

# Spell ID 32486:

# Spell ID 32487:

# Spell ID 32489:

# Spell ID 32491:

# Spell ID 32495:

# Spell ID 32496:

# Spell ID 32497:

# Spell ID 32498:

# Spell ID 32514:

# Spell ID 32516:

# Spell ID 32517:

# Spell ID 32518:

# Spell ID 32519:

# Spell ID 32541:

# Spell ID 32546:

# Spell ID 32547:

# Spell ID 32548:

# Spell ID 32549:

# Spell ID 32561:

# Spell ID 32564:

# Spell ID 32567:

# Spell ID 32568:

# Spell ID 32569:

# Spell ID 32571:

# Spell ID 32574:

# Spell ID 32576:

# Spell ID 32578:

# Spell ID 32579:

# Spell ID 32581:

# Spell ID 32584:

# Spell ID 32586:

# Spell ID 32587:

# Spell ID 32589:

# Spell ID 32591:

# Spell ID 32594:

# Spell ID 32596:

# Spell ID 32597:

# Spell ID 32598:

# Spell ID 32614:

# Spell ID 32615:

# Spell ID 32617:

# Spell ID 32618:

# Spell ID 32619:

# Spell ID 32641:

# Spell ID 32645:

# Spell ID 32647:

# Spell ID 32648:

# Spell ID 32649:

# Spell ID 32651:

# Spell ID 32654:

# Spell ID 32657:

# Spell ID 32658:

# Spell ID 32659:

# Spell ID 32671:

# Spell ID 32674:

# Spell ID 32675:

# Spell ID 32678:

# Spell ID 32679:

# Spell ID 32681:

# Spell ID 32684:

# Spell ID 32685:

# Spell ID 32687:

# Spell ID 32689:

# Spell ID 32691:

# Spell ID 32694:

# Spell ID 32695:

# Spell ID 32697:

# Spell ID 32698:

# Spell ID 32714:

# Spell ID 32715:

# Spell ID 32716:

# Spell ID 32718:

# Spell ID 32719:

# Spell ID 32741:

# Spell ID 32745:

# Spell ID 32746:

# Spell ID 32748:

# Spell ID 32749:

# Spell ID 32751:

# Spell ID 32754:

# Spell ID 32756:

# Spell ID 32758:

# Spell ID 32759:

# Spell ID 32761:

# Spell ID 32764:

# Spell ID 32765:

# Spell ID 32768:

# Spell ID 32769:

# Spell ID 32781:

# Spell ID 32784:

# Spell ID 32785:

# Spell ID 32786:

# Spell ID 32789:

# Spell ID 32791:

# Spell ID 32794:

# Spell ID 32795:

# Spell ID 32796:

# Spell ID 32798:

# Spell ID 32814:

# Spell ID 32815:

# Spell ID 32816:

# Spell ID 32817:

# Spell ID 32819:

# Spell ID 32841:

# Spell ID 32845:

# Spell ID 32846:

# Spell ID 32847:

# Spell ID 32849:

# Spell ID 32851:

# Spell ID 32854:

# Spell ID 32856:

# Spell ID 32857:

# Spell ID 32859:

# Spell ID 32861:

# Spell ID 32864:

# Spell ID 32865:

# Spell ID 32867:

# Spell ID 32869:

# Spell ID 32871:

# Spell ID 32874:

# Spell ID 32875:

# Spell ID 32876:

# Spell ID 32879:

# Spell ID 32891:

# Spell ID 32894:

# Spell ID 32895:

# Spell ID 32896:

# Spell ID 32897:

# Spell ID 32914:

# Spell ID 32915:

# Spell ID 32916:

# Spell ID 32917:

# Spell ID 32918:

# Spell ID 32941:

# Spell ID 32945:

# Spell ID 32946:

# Spell ID 32947:

# Spell ID 32948:

# Spell ID 32951:

# Spell ID 32954:

# Spell ID 32956:

# Spell ID 32957:

# Spell ID 32958:

# Spell ID 32961:

# Spell ID 32964:

# Spell ID 32965:

# Spell ID 32967:

# Spell ID 32968:

# Spell ID 32971:

# Spell ID 32974:

# Spell ID 32975:

# Spell ID 32976:

# Spell ID 32978:

# Spell ID 32981:

# Spell ID 32984:

# Spell ID 32985:

# Spell ID 32986:

# Spell ID 32987:

# Spell ID 34125:

# Spell ID 34126:

# Spell ID 34127:

# Spell ID 34128:

# Spell ID 34129:

# Spell ID 34152:

# Spell ID 34156:

# Spell ID 34157:

# Spell ID 34158:

# Spell ID 34159:

# Spell ID 34162:

# Spell ID 34165:

# Spell ID 34167: Stone Thorns (Unfinished) [T2]
execute as @e[scores={rr.spell.SpellStore=34167},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 34168:

# Spell ID 34169:

# Spell ID 34172:

# Spell ID 34175:

# Spell ID 34176:

# Spell ID 34178:

# Spell ID 34179:

# Spell ID 34182:

# Spell ID 34185:

# Spell ID 34186:

# Spell ID 34187:

# Spell ID 34189:

# Spell ID 34192:

# Spell ID 34195:

# Spell ID 34196:

# Spell ID 34197:

# Spell ID 34198:

# Spell ID 34215:

# Spell ID 34216:

# Spell ID 34217:

# Spell ID 34218:

# Spell ID 34219:

# Spell ID 34251:

# Spell ID 34256:

# Spell ID 34257:

# Spell ID 34258:

# Spell ID 34259:

# Spell ID 34261:

# Spell ID 34265:

# Spell ID 34267:

# Spell ID 34268:

# Spell ID 34269:

# Spell ID 34271:

# Spell ID 34275:

# Spell ID 34276:

# Spell ID 34278:

# Spell ID 34279:

# Spell ID 34281:

# Spell ID 34285:

# Spell ID 34286:

# Spell ID 34287:

# Spell ID 34289:

# Spell ID 34291:

# Spell ID 34295:

# Spell ID 34296:

# Spell ID 34297:

# Spell ID 34298:

# Spell ID 34512:

# Spell ID 34516:

# Spell ID 34517:

# Spell ID 34518:

# Spell ID 34519:

# Spell ID 34521:

# Spell ID 34526:

# Spell ID 34527:

# Spell ID 34528:

# Spell ID 34529:

# Spell ID 34561:

# Spell ID 34562:

# Spell ID 34567:

# Spell ID 34568:

# Spell ID 34569:

# Spell ID 34571:

# Spell ID 34572:

# Spell ID 34576:

# Spell ID 34578:

# Spell ID 34579:

# Spell ID 34581:

# Spell ID 34582:

# Spell ID 34586:

# Spell ID 34587:

# Spell ID 34589:

# Spell ID 34591:

# Spell ID 34592:

# Spell ID 34596:

# Spell ID 34597:

# Spell ID 34598:

# Spell ID 34612:

# Spell ID 34615:

# Spell ID 34617:

# Spell ID 34618:

# Spell ID 34619:

# Spell ID 34621:

# Spell ID 34625:

# Spell ID 34627:

# Spell ID 34628:

# Spell ID 34629:

# Spell ID 34651:

# Spell ID 34652:

# Spell ID 34657:

# Spell ID 34658:

# Spell ID 34659:

# Spell ID 34671:

# Spell ID 34672:

# Spell ID 34675:

# Spell ID 34678:

# Spell ID 34679:

# Spell ID 34681:

# Spell ID 34682:

# Spell ID 34685:

# Spell ID 34687:

# Spell ID 34689:

# Spell ID 34691:

# Spell ID 34692:

# Spell ID 34695:

# Spell ID 34697:

# Spell ID 34698:

# Spell ID 34712:

# Spell ID 34715:

# Spell ID 34716:

# Spell ID 34718:

# Spell ID 34719:

# Spell ID 34721:

# Spell ID 34725:

# Spell ID 34726:

# Spell ID 34728:

# Spell ID 34729:

# Spell ID 34751:

# Spell ID 34752:

# Spell ID 34756:

# Spell ID 34758:

# Spell ID 34759:

# Spell ID 34761:

# Spell ID 34762:

# Spell ID 34765:

# Spell ID 34768:

# Spell ID 34769:

# Spell ID 34781:

# Spell ID 34782:

# Spell ID 34785:

# Spell ID 34786:

# Spell ID 34789:

# Spell ID 34791:

# Spell ID 34792:

# Spell ID 34795:

# Spell ID 34796:

# Spell ID 34798:

# Spell ID 34812:

# Spell ID 34815:

# Spell ID 34816:

# Spell ID 34817:

# Spell ID 34819:

# Spell ID 34821:

# Spell ID 34825:

# Spell ID 34826:

# Spell ID 34827:

# Spell ID 34829:

# Spell ID 34851:

# Spell ID 34852:

# Spell ID 34856:

# Spell ID 34857:

# Spell ID 34859:

# Spell ID 34861:

# Spell ID 34862:

# Spell ID 34865:

# Spell ID 34867:

# Spell ID 34869:

# Spell ID 34871:

# Spell ID 34872:

# Spell ID 34875:

# Spell ID 34876:

# Spell ID 34879:

# Spell ID 34891:

# Spell ID 34892:

# Spell ID 34895:

# Spell ID 34896:

# Spell ID 34897:

# Spell ID 34912:

# Spell ID 34915:

# Spell ID 34916:

# Spell ID 34917:

# Spell ID 34918:

# Spell ID 34921:

# Spell ID 34925:

# Spell ID 34926:

# Spell ID 34927:

# Spell ID 34928:

# Spell ID 34951:

# Spell ID 34952:

# Spell ID 34956:

# Spell ID 34957:

# Spell ID 34958:

# Spell ID 34961:

# Spell ID 34962:

# Spell ID 34965:

# Spell ID 34967:

# Spell ID 34968:

# Spell ID 34971:

# Spell ID 34972:

# Spell ID 34975:

# Spell ID 34976:

# Spell ID 34978:

# Spell ID 34981:

# Spell ID 34982:

# Spell ID 34985:

# Spell ID 34986:

# Spell ID 34987:

scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0