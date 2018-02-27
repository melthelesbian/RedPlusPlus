PalletTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 13, 13, SIGNPOST_JUMPTEXT, PalletTownText4
	bg_event  7,  9, SIGNPOST_JUMPTEXT, PalletTownText5
	bg_event  3,  5, SIGNPOST_JUMPTEXT, PalletTownText6
	bg_event 11,  5, SIGNPOST_JUMPTEXT, PalletTownText7

	db 3 ; object events
	object_event  8,  6, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  8, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_COMMAND, jumptextfaceplayer, PalletTownText2, -1
	object_event 11, 14, SPRITE_FISHER2, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_COMMAND, jumptextfaceplayer, PalletTownText3, -1

	const_def 1 ; object constants
	const PALLETTOWN_OAK

OakAppearsText:
	text "Oak: Hey! Wait!"
	line "Don't go out!"
	done

OakWalksUpText:
	text "Oak: Sorry I'm so"
	line "slow, I don't have"
	cont "Running Shoes"
    cont "like you do."

	para "Anyway, you need"
	line "your own #mon"
	cont "for protection."

	para "Here, come with"
	line "me!"
	done

PalletTownText2:
	text "I'm raising"
	line "#mon too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

PalletTownText3:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #mon as"
	cont "data via PC!"
	done

PalletTownText4:
	text "Oak's #mon"
	line "Research Lab"
	done

PalletTownText5:
	text "Pallet Town"

	para "Shades of your"
	line "journey await!"
	done

PalletTownText6:
	text "<PLAYER>'s house "
	done

PalletTownText7:
	text "<RIVAL>'s house "
	done
