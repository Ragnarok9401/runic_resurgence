# Run what Spell the player's Spell ID matches to, and clear the player's Spell ID score
# Note: Copy Spell ID score to a separate SpellStore score for later tracking
execute as @s[scores={rr.spell.SpellID=12345..}] at @s store result score @s rr.spell.SpellStore run scoreboard players get @s rr.spell.SpellID

# Spell ID 51234:

# Spell ID 51236:

# Spell ID 51237:

# Spell ID 51238:

# Spell ID 51239:

# Spell ID 51243:

# Spell ID 51246:

# Spell ID 51247:

# Spell ID 51248:

# Spell ID 51249:

# Spell ID 51263:

# Spell ID 51264:

# Spell ID 51267:

# Spell ID 51268:

# Spell ID 51269:

# Spell ID 51273:

# Spell ID 51274:

# Spell ID 51276:

# Spell ID 51278:

# Spell ID 51279:

# Spell ID 51283:

# Spell ID 51284:

# Spell ID 51286:

# Spell ID 51287:

# Spell ID 51289:

# Spell ID 51293:

# Spell ID 51294: Return [T3]
execute as @e[scores={rr.spell.SpellStore=51294},tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/return
execute as @e[scores={rr.spell.SpellStore=51294},tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/return
execute as @e[scores={rr.spell.SpellStore=51294},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/return
execute as @e[scores={rr.spell.SpellStore=51294},tag=!RunicSpellStarted,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=51294},tag=!RunicSpellStarted,tag=!RunicMem3Held,tag=!RunicMem4Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 51296:

# Spell ID 51297:

# Spell ID 51298:

# Spell ID 51324:

# Spell ID 51326:

# Spell ID 51327:

# Spell ID 51328:

# Spell ID 51329:

# Spell ID 51342:

# Spell ID 51346:

# Spell ID 51347:

# Spell ID 51348:

# Spell ID 51349:

# Spell ID 51362:

# Spell ID 51364:

# Spell ID 51367:

# Spell ID 51368:

# Spell ID 51369:

# Spell ID 51372:

# Spell ID 51374:

# Spell ID 51376:

# Spell ID 51378:

# Spell ID 51379:

# Spell ID 51382:

# Spell ID 51384:

# Spell ID 51386:

# Spell ID 51387:

# Spell ID 51389:

# Spell ID 51392:

# Spell ID 51394:

# Spell ID 51396:

# Spell ID 51397:

# Spell ID 51398:

# Spell ID 51423:

# Spell ID 51426:

# Spell ID 51427:

# Spell ID 51428:

# Spell ID 51429:

# Spell ID 51432:

# Spell ID 51436:

# Spell ID 51437:

# Spell ID 51438:

# Spell ID 51439:

# Spell ID 51462:

# Spell ID 51463:

# Spell ID 51467:

# Spell ID 51468:

# Spell ID 51469:

# Spell ID 51472:

# Spell ID 51473:

# Spell ID 51476:

# Spell ID 51478:

# Spell ID 51479:

# Spell ID 51482:

# Spell ID 51483:

# Spell ID 51486:

# Spell ID 51487:

# Spell ID 51489:

# Spell ID 51492:

# Spell ID 51493:

# Spell ID 51496:

# Spell ID 51497:

# Spell ID 51498:

# Spell ID 51623:

# Spell ID 51624:

# Spell ID 51627:

# Spell ID 51628:

# Spell ID 51629:

# Spell ID 51632:

# Spell ID 51634:

# Spell ID 51637:

# Spell ID 51638:

# Spell ID 51639:

# Spell ID 51642:

# Spell ID 51643:

# Spell ID 51647:

# Spell ID 51648:

# Spell ID 51649:

# Spell ID 51672:

# Spell ID 51673:

# Spell ID 51674:

# Spell ID 51678:

# Spell ID 51679:

# Spell ID 51682:

# Spell ID 51683:

# Spell ID 51684:

# Spell ID 51687:

# Spell ID 51689:

# Spell ID 51692:

# Spell ID 51693:

# Spell ID 51694:

# Spell ID 51697:

# Spell ID 51698:

# Spell ID 51723:

# Spell ID 51724:

# Spell ID 51726:

# Spell ID 51728:

# Spell ID 51729:

# Spell ID 51732:

# Spell ID 51734:

# Spell ID 51736:

# Spell ID 51738:

# Spell ID 51739:

# Spell ID 51742:

# Spell ID 51743:

# Spell ID 51746:

# Spell ID 51748:

# Spell ID 51749:

# Spell ID 51762:

# Spell ID 51763:

# Spell ID 51764:

# Spell ID 51768:

# Spell ID 51769:

# Spell ID 51782:

# Spell ID 51783:

# Spell ID 51784:

# Spell ID 51786:

# Spell ID 51789:

# Spell ID 51792:

# Spell ID 51793:

# Spell ID 51794:

# Spell ID 51796:

# Spell ID 51798:

# Spell ID 51823:

# Spell ID 51824:

# Spell ID 51826:

# Spell ID 51827:

# Spell ID 51829: Chain Mine (Unfinished) [T2]
#execute as @e[scores={rr.spell.SpellStore=51829},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/chain_mine
execute as @e[scores={rr.spell.SpellStore=51829},type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/unfinished_spell

# Spell ID 51832:

# Spell ID 51834:

# Spell ID 51836:

# Spell ID 51837:

# Spell ID 51839:

# Spell ID 51842:

# Spell ID 51843:

# Spell ID 51846:

# Spell ID 51847:

# Spell ID 51849:

# Spell ID 51862:

# Spell ID 51863:

# Spell ID 51864:

# Spell ID 51867:

# Spell ID 51869:

# Spell ID 51872:

# Spell ID 51873:

# Spell ID 51874:

# Spell ID 51876:

# Spell ID 51879:

# Spell ID 51892:

# Spell ID 51893:

# Spell ID 51894:

# Spell ID 51896:

# Spell ID 51897:

# Spell ID 51923:

# Spell ID 51924:

# Spell ID 51926:

# Spell ID 51927:

# Spell ID 51928:

# Spell ID 51932:

# Spell ID 51934:

# Spell ID 51936:

# Spell ID 51937:

# Spell ID 51938:

# Spell ID 51942:

# Spell ID 51943:

# Spell ID 51946:

# Spell ID 51947:

# Spell ID 51948:

# Spell ID 51962:

# Spell ID 51963:

# Spell ID 51964:

# Spell ID 51967:

# Spell ID 51968:

# Spell ID 51972:

# Spell ID 51973:

# Spell ID 51974:

# Spell ID 51976:

# Spell ID 51978:

# Spell ID 51982:

# Spell ID 51983:

# Spell ID 51984:

# Spell ID 51986:

# Spell ID 51987:

# Spell ID 52134:

# Spell ID 52136:

# Spell ID 52137:

# Spell ID 52138:

# Spell ID 52139:

# Spell ID 52143:

# Spell ID 52146:

# Spell ID 52147:

# Spell ID 52148:

# Spell ID 52149:

# Spell ID 52163:

# Spell ID 52164:

# Spell ID 52167:

# Spell ID 52168:

# Spell ID 52169:

# Spell ID 52173:

# Spell ID 52174:

# Spell ID 52176:

# Spell ID 52178:

# Spell ID 52179:

# Spell ID 52183:

# Spell ID 52184:

# Spell ID 52186:

# Spell ID 52187:

# Spell ID 52189:

# Spell ID 52193:

# Spell ID 52194:

# Spell ID 52196:

# Spell ID 52197:

# Spell ID 52198:

# Spell ID 52314:

# Spell ID 52316:

# Spell ID 52317:

# Spell ID 52318:

# Spell ID 52319:

# Spell ID 52341:

# Spell ID 52346:

# Spell ID 52347:

# Spell ID 52348:

# Spell ID 52349:

# Spell ID 52361:

# Spell ID 52364:

# Spell ID 52367:

# Spell ID 52368:

# Spell ID 52369:

# Spell ID 52371:

# Spell ID 52374:

# Spell ID 52376:

# Spell ID 52378:

# Spell ID 52379:

# Spell ID 52381:

# Spell ID 52384:

# Spell ID 52386:

# Spell ID 52387:

# Spell ID 52389:

# Spell ID 52391:

# Spell ID 52394:

# Spell ID 52396:

# Spell ID 52397:

# Spell ID 52398:

# Spell ID 52413:

# Spell ID 52416:

# Spell ID 52417:

# Spell ID 52418:

# Spell ID 52419:

# Spell ID 52431:

# Spell ID 52436:

# Spell ID 52437:

# Spell ID 52438:

# Spell ID 52439:

# Spell ID 52461:

# Spell ID 52463:

# Spell ID 52467:

# Spell ID 52468:

# Spell ID 52469:

# Spell ID 52471:

# Spell ID 52473:

# Spell ID 52476:

# Spell ID 52478:

# Spell ID 52479:

# Spell ID 52481:

# Spell ID 52483:

# Spell ID 52486:

# Spell ID 52487:

# Spell ID 52489:

# Spell ID 52491:

# Spell ID 52493:

# Spell ID 52496:

# Spell ID 52497:

# Spell ID 52498:

# Spell ID 52613:

# Spell ID 52614:

# Spell ID 52617:

# Spell ID 52618:

# Spell ID 52619:

# Spell ID 52631:

# Spell ID 52634:

# Spell ID 52637:

# Spell ID 52638:

# Spell ID 52639:

# Spell ID 52641:

# Spell ID 52643:

# Spell ID 52647:

# Spell ID 52648:

# Spell ID 52649:

# Spell ID 52671:

# Spell ID 52673:

# Spell ID 52674:

# Spell ID 52678:

# Spell ID 52679:

# Spell ID 52681:

# Spell ID 52683:

# Spell ID 52684:

# Spell ID 52687:

# Spell ID 52689:

# Spell ID 52691:

# Spell ID 52693:

# Spell ID 52694:

# Spell ID 52697:

# Spell ID 52698:

# Spell ID 52713:

# Spell ID 52714:

# Spell ID 52716:

# Spell ID 52718:

# Spell ID 52719:

# Spell ID 52731:

# Spell ID 52734:

# Spell ID 52736:

# Spell ID 52738:

# Spell ID 52739:

# Spell ID 52741:

# Spell ID 52743:

# Spell ID 52746:

# Spell ID 52748:

# Spell ID 52749:

# Spell ID 52761:

# Spell ID 52763:

# Spell ID 52764:

# Spell ID 52768:

# Spell ID 52769:

# Spell ID 52781:

# Spell ID 52783:

# Spell ID 52784:

# Spell ID 52786:

# Spell ID 52789:

# Spell ID 52791:

# Spell ID 52793:

# Spell ID 52794:

# Spell ID 52796:

# Spell ID 52798:

# Spell ID 52813:

# Spell ID 52814:

# Spell ID 52816:

# Spell ID 52817:

# Spell ID 52819:

# Spell ID 52831:

# Spell ID 52834:

# Spell ID 52836:

# Spell ID 52837:

# Spell ID 52839:

# Spell ID 52841:

# Spell ID 52843:

# Spell ID 52846:

# Spell ID 52847:

# Spell ID 52849:

# Spell ID 52861:

# Spell ID 52863:

# Spell ID 52864:

# Spell ID 52867:

# Spell ID 52869:

# Spell ID 52871:

# Spell ID 52873:

# Spell ID 52874:

# Spell ID 52876:

# Spell ID 52879:

# Spell ID 52891:

# Spell ID 52893:

# Spell ID 52894:

# Spell ID 52896:

# Spell ID 52897:

# Spell ID 52913:

# Spell ID 52914:

# Spell ID 52916:

# Spell ID 52917:

# Spell ID 52918:

# Spell ID 52931:

# Spell ID 52934:

# Spell ID 52936:

# Spell ID 52937:

# Spell ID 52938:

# Spell ID 52941:

# Spell ID 52943:

# Spell ID 52946:

# Spell ID 52947:

# Spell ID 52948:

# Spell ID 52961:

# Spell ID 52963:

# Spell ID 52964:

# Spell ID 52967:

# Spell ID 52968:

# Spell ID 52971:

# Spell ID 52973:

# Spell ID 52974:

# Spell ID 52976:

# Spell ID 52978:

# Spell ID 52981:

# Spell ID 52983:

# Spell ID 52984:

# Spell ID 52986:

# Spell ID 52987:

# Spell ID 53124:

# Spell ID 53126:

# Spell ID 53127:

# Spell ID 53128:

# Spell ID 53129:

# Spell ID 53142:

# Spell ID 53146:

# Spell ID 53147:

# Spell ID 53148:

# Spell ID 53149:

# Spell ID 53162:

# Spell ID 53164:

# Spell ID 53167:

# Spell ID 53168:

# Spell ID 53169:

# Spell ID 53172:

# Spell ID 53174:

# Spell ID 53176:

# Spell ID 53178:

# Spell ID 53179:

# Spell ID 53182:

# Spell ID 53184:

# Spell ID 53186:

# Spell ID 53187:

# Spell ID 53189:

# Spell ID 53192:

# Spell ID 53194:

# Spell ID 53196:

# Spell ID 53197:

# Spell ID 53198:

# Spell ID 53214:

# Spell ID 53216:

# Spell ID 53217:

# Spell ID 53218:

# Spell ID 53219:

# Spell ID 53241:

# Spell ID 53246:

# Spell ID 53247:

# Spell ID 53248:

# Spell ID 53249:

# Spell ID 53261:

# Spell ID 53264:

# Spell ID 53267:

# Spell ID 53268:

# Spell ID 53269:

# Spell ID 53271:

# Spell ID 53274:

# Spell ID 53276:

# Spell ID 53278:

# Spell ID 53279:

# Spell ID 53281:

# Spell ID 53284:

# Spell ID 53286:

# Spell ID 53287:

# Spell ID 53289:

# Spell ID 53291:

# Spell ID 53294:

# Spell ID 53296:

# Spell ID 53297:

# Spell ID 53298:

# Spell ID 53412:

# Spell ID 53416:

# Spell ID 53417:

# Spell ID 53418:

# Spell ID 53419:

# Spell ID 53421:

# Spell ID 53426:

# Spell ID 53427:

# Spell ID 53428:

# Spell ID 53429:

# Spell ID 53461:

# Spell ID 53462:

# Spell ID 53467:

# Spell ID 53468:

# Spell ID 53469:

# Spell ID 53471:

# Spell ID 53472:

# Spell ID 53476:

# Spell ID 53478:

# Spell ID 53479:

# Spell ID 53481:

# Spell ID 53482:

# Spell ID 53486:

# Spell ID 53487:

# Spell ID 53489:

# Spell ID 53491:

# Spell ID 53492:

# Spell ID 53496:

# Spell ID 53497:

# Spell ID 53498:

# Spell ID 53612:

# Spell ID 53614:

# Spell ID 53617:

# Spell ID 53618:

# Spell ID 53619:

# Spell ID 53621:

# Spell ID 53624:

# Spell ID 53627:

# Spell ID 53628:

# Spell ID 53629:

# Spell ID 53641:

# Spell ID 53642:

# Spell ID 53647:

# Spell ID 53648:

# Spell ID 53649:

# Spell ID 53671:

# Spell ID 53672:

# Spell ID 53674:

# Spell ID 53678:

# Spell ID 53679:

# Spell ID 53681:

# Spell ID 53682:

# Spell ID 53684:

# Spell ID 53687:

# Spell ID 53689:

# Spell ID 53691:

# Spell ID 53692:

# Spell ID 53694:

# Spell ID 53697:

# Spell ID 53698:

# Spell ID 53712:

# Spell ID 53714:

# Spell ID 53716:

# Spell ID 53718:

# Spell ID 53719:

# Spell ID 53721:

# Spell ID 53724:

# Spell ID 53726:

# Spell ID 53728:

# Spell ID 53729:

# Spell ID 53741:

# Spell ID 53742:

# Spell ID 53746:

# Spell ID 53748:

# Spell ID 53749:

# Spell ID 53761:

# Spell ID 53762:

# Spell ID 53764:

# Spell ID 53768:

# Spell ID 53769:

# Spell ID 53781:

# Spell ID 53782:

# Spell ID 53784:

# Spell ID 53786:

# Spell ID 53789:

# Spell ID 53791:

# Spell ID 53792:

# Spell ID 53794:

# Spell ID 53796:

# Spell ID 53798:

# Spell ID 53812:

# Spell ID 53814:

# Spell ID 53816:

# Spell ID 53817:

# Spell ID 53819:

# Spell ID 53821:

# Spell ID 53824:

# Spell ID 53826:

# Spell ID 53827:

# Spell ID 53829:

# Spell ID 53841:

# Spell ID 53842:

# Spell ID 53846:

# Spell ID 53847:

# Spell ID 53849:

# Spell ID 53861:

# Spell ID 53862:

# Spell ID 53864:

# Spell ID 53867:

# Spell ID 53869:

# Spell ID 53871:

# Spell ID 53872:

# Spell ID 53874:

# Spell ID 53876:

# Spell ID 53879:

# Spell ID 53891:

# Spell ID 53892:

# Spell ID 53894:

# Spell ID 53896:

# Spell ID 53897:

# Spell ID 53912:

# Spell ID 53914:

# Spell ID 53916:

# Spell ID 53917:

# Spell ID 53918:

# Spell ID 53921:

# Spell ID 53924:

# Spell ID 53926:

# Spell ID 53927:

# Spell ID 53928:

# Spell ID 53941:

# Spell ID 53942:

# Spell ID 53946:

# Spell ID 53947:

# Spell ID 53948:

# Spell ID 53961:

# Spell ID 53962:

# Spell ID 53964:

# Spell ID 53967:

# Spell ID 53968:

# Spell ID 53971:

# Spell ID 53972:

# Spell ID 53974:

# Spell ID 53976:

# Spell ID 53978:

# Spell ID 53981:

# Spell ID 53982:

# Spell ID 53984:

# Spell ID 53986:

# Spell ID 53987:

# Spell ID 54123:

# Spell ID 54126:

# Spell ID 54127:

# Spell ID 54128:

# Spell ID 54129:

# Spell ID 54132:

# Spell ID 54136:

# Spell ID 54137:

# Spell ID 54138:

# Spell ID 54139:

# Spell ID 54162:

# Spell ID 54163:

# Spell ID 54167:

# Spell ID 54168:

# Spell ID 54169:

# Spell ID 54172:

# Spell ID 54173:

# Spell ID 54176:

# Spell ID 54178:

# Spell ID 54179:

# Spell ID 54182:

# Spell ID 54183:

# Spell ID 54186:

# Spell ID 54187:

# Spell ID 54189:

# Spell ID 54192:

# Spell ID 54193:

# Spell ID 54196:

# Spell ID 54197:

# Spell ID 54198:

# Spell ID 54213:

# Spell ID 54216:

# Spell ID 54217:

# Spell ID 54218:

# Spell ID 54219:

# Spell ID 54231:

# Spell ID 54236:

# Spell ID 54237:

# Spell ID 54238:

# Spell ID 54239:

# Spell ID 54261:

# Spell ID 54263:

# Spell ID 54267:

# Spell ID 54268:

# Spell ID 54269:

# Spell ID 54271:

# Spell ID 54273:

# Spell ID 54276:

# Spell ID 54278:

# Spell ID 54279:

# Spell ID 54281:

# Spell ID 54283:

# Spell ID 54286: Enchanted Shield [T2] | Enchanted Shield II [T4]
execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicSpellStarted,tag=RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield_2
execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicSpellStarted,tag=RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield_2

execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield
execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicSpellStarted,tag=!RunicSpellStarted2,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield

execute as @e[scores={rr.spell.SpellStore=54286},tag=!RunicTab1Held,tag=!RunicTab4Held,tag=!RunicMemHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield
execute as @e[scores={rr.spell.SpellStore=54286},tag=!RunicMem1Held,tag=!RunicMem4Held,tag=!RunicTabHeld,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield

execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicTab4Held,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield_2
execute as @e[scores={rr.spell.SpellStore=54286},tag=RunicMem4Held,tag=!RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/enchanted_shield_2

execute as @e[scores={rr.spell.SpellStore=54286},tag=!RunicSpellStarted,tag=RunicTab1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier
execute as @e[scores={rr.spell.SpellStore=54286},tag=!RunicSpellStarted,tag=RunicMem1Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

# Spell ID 54287:

# Spell ID 54289:

# Spell ID 54291:

# Spell ID 54293:

# Spell ID 54296:

# Spell ID 54297:

# Spell ID 54298:

# Spell ID 54312:

# Spell ID 54316:

# Spell ID 54317:

# Spell ID 54318:

# Spell ID 54319:

# Spell ID 54321:

# Spell ID 54326:

# Spell ID 54327:

# Spell ID 54328:

# Spell ID 54329:

# Spell ID 54361:

# Spell ID 54362:

# Spell ID 54367:

# Spell ID 54368:

# Spell ID 54369:

# Spell ID 54371:

# Spell ID 54372:

# Spell ID 54376:

# Spell ID 54378:

# Spell ID 54379:

# Spell ID 54381:

# Spell ID 54382:

# Spell ID 54386:

# Spell ID 54387:

# Spell ID 54389:

# Spell ID 54391:

# Spell ID 54392:

# Spell ID 54396:

# Spell ID 54397:

# Spell ID 54398:

# Spell ID 54612:

# Spell ID 54613:

# Spell ID 54617:

# Spell ID 54618:

# Spell ID 54619:

# Spell ID 54621:

# Spell ID 54623:

# Spell ID 54627:

# Spell ID 54628:

# Spell ID 54629:

# Spell ID 54631:

# Spell ID 54632:

# Spell ID 54637:

# Spell ID 54638:

# Spell ID 54639:

# Spell ID 54671:

# Spell ID 54672:

# Spell ID 54673:

# Spell ID 54678:

# Spell ID 54679:

# Spell ID 54681:

# Spell ID 54682:

# Spell ID 54683:

# Spell ID 54687:

# Spell ID 54689:

# Spell ID 54691:

# Spell ID 54692:

# Spell ID 54693:

# Spell ID 54697:

# Spell ID 54698:

# Spell ID 54712:

# Spell ID 54713:

# Spell ID 54716:

# Spell ID 54718:

# Spell ID 54719:

# Spell ID 54721: Ricochet Bolt [T3]
execute as @e[scores={rr.spell.SpellStore=54721},tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicSpellStarted,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/ricochet_bolt
execute as @e[scores={rr.spell.SpellStore=54721},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicSpellStarted,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/ricochet_bolt

execute as @e[scores={rr.spell.SpellStore=54721},tag=RunicSpellStarted,type=!#rr_recast:spell_ignore] at @s unless entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/execution/ricochet_bolt

execute as @e[scores={rr.spell.SpellStore=54721},tag=!RunicSpellStarted,tag=!RunicTab3Held,tag=!RunicTab4Held,tag=!RunicMem3Held,tag=!RunicTab4Held,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/spell_too_high_tier

execute as @e[scores={rr.spell.SpellStore=54721},tag=!RunicTab1Held,tag=!RunicTab2Held,tag=!RunicMemHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell
execute as @e[scores={rr.spell.SpellStore=54721},tag=!RunicMem1Held,tag=!RunicMem2Held,tag=!RunicTabHeld,type=!#rr_recast:spell_ignore] at @s if entity @e[type=armor_stand,tag=RunicDiscomStand,distance=..50,tag=!RunicDiscomDisabled] run function rr_recast:spells/core/deny_spell

# Spell ID 54723:

# Spell ID 54726:

# Spell ID 54728:

# Spell ID 54729:

# Spell ID 54731:

# Spell ID 54732:

# Spell ID 54736:

# Spell ID 54738:

# Spell ID 54739:

# Spell ID 54761:

# Spell ID 54762:

# Spell ID 54763:

# Spell ID 54768:

# Spell ID 54769:

# Spell ID 54781:

# Spell ID 54782:

# Spell ID 54783:

# Spell ID 54786:

# Spell ID 54789:

# Spell ID 54791:

# Spell ID 54792:

# Spell ID 54793:

# Spell ID 54796:

# Spell ID 54798:

# Spell ID 54812:

# Spell ID 54813:

# Spell ID 54816:

# Spell ID 54817:

# Spell ID 54819:

# Spell ID 54821:

# Spell ID 54823:

# Spell ID 54826:

# Spell ID 54827:

# Spell ID 54829:

# Spell ID 54831:

# Spell ID 54832:

# Spell ID 54836:

# Spell ID 54837:

# Spell ID 54839:

# Spell ID 54861:

# Spell ID 54862:

# Spell ID 54863:

# Spell ID 54867:

# Spell ID 54869:

# Spell ID 54871:

# Spell ID 54872:

# Spell ID 54873:

# Spell ID 54876:

# Spell ID 54879:

# Spell ID 54891:

# Spell ID 54892:

# Spell ID 54893:

# Spell ID 54896:

# Spell ID 54897:

# Spell ID 54912:

# Spell ID 54913:

# Spell ID 54916:

# Spell ID 54917:

# Spell ID 54918:

# Spell ID 54921:

# Spell ID 54923:

# Spell ID 54926:

# Spell ID 54927:

# Spell ID 54928:

# Spell ID 54931:

# Spell ID 54932:

# Spell ID 54936:

# Spell ID 54937:

# Spell ID 54938:

# Spell ID 54961:

# Spell ID 54962:

# Spell ID 54963:

# Spell ID 54967:

# Spell ID 54968:

# Spell ID 54971:

# Spell ID 54972:

# Spell ID 54973:

# Spell ID 54976:

# Spell ID 54978:

# Spell ID 54981:

# Spell ID 54982:

# Spell ID 54983:

# Spell ID 54986:

# Spell ID 54987:


scoreboard players set @s[tag=!RunicSpellStartup] rr.spell.SpellStore 0