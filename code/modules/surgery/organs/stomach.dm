/obj/item/organ/stomach
	name = "stomach"
	icon_state = "stomach"
	origin_tech = "biotech=4"
	w_class = WEIGHT_CLASS_NORMAL
	zone = "chest"
	slot = "stomach"
	attack_verb = list("gored", "squished", "slapped", "digested")
	desc = "Onaka ga suite imasu."
	var/disgustmetabolism = 1

/obj/item/organ/stomach/on_life()
	var/mob/living/carbon/human/H = owner

	if(istype(H))
		H.dna.species.handle_digestion(H)
		H.dna.species.handle_disgust(H, disgustmetabolism)

/obj/item/organ/stomach/Remove()
	..()
	var/mob/living/carbon/human/H = owner

	if(istype(H))
		H.clear_alert("disgust")

/obj/item/organ/stomach/fly
	name = "insectoid stomach"
	icon_state = "stomach-x" //xenomorph liver? It's just a black liver so it fits.
	desc = "A mutant stomach designed to handle the unique diet of a flyperson."

/obj/item/organ/stomach/plasmaman
	name = "digestive crystal"
	icon_state = "pstomach"
	desc = "A strange crystal that is responsible for metabolizing the unseen energy force that feeds plasmamen."
