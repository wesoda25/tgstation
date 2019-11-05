//This is for electronic versions of learning, for now solely martial arts

/obj/item/clothing/head/AED
  name = "Automatic Education Device"
  desc = "A complex assortment of metal, electrodes, and wires. Simply put the headset on, insert an education chip, and turn it on to instantly learn the contents of said chip."
  icon_state = "electrode_helmet"
  actions_types = list(/datum/action/item_action/instant_learn)
  var/chip_storage = 1

/obj/item/clothing/head/AED/attackby(obj/item/E, mob/user, params)
  var/obj/item/education_chip = E
  if(chip_storage == 1)
    chip_storage -1
    to_chat(user, "<span class='notice'>You insert the [E] into the [src].</span>")
    qdel(W)
    return
  else
    to_chat(user, "<span class='warning'>\The [src] is full.</span>")
    return

/obj/item/education_chip
  name = "Empty Education Chip"
  desc = "An empty education chip."
  icon = 'icons/obj/education_chips.dmi'
  icon_state = "edchip"
  lefthand_file = 'icons/mob/inhands/misc/devices_lefthand.dmi'
  righthand_file = 'icons/mob/inhands/misc/devices_righthand.dmi'
  var/subject

/obj/item/education_chip/cqc
  name = "Close-Quarters-Combat Education Chip"
  desc = "An education chip containing the martial art of CQC. Insert into an Automatic Education Device to learn."
  subject = /datum/martial_art/cqc

/obj/item/education_chip/cqc/Initialize()
  . = ..()
  add_overlay("edchip_cqc")

/obj/item/education_chip/carp
  name = "Sleeping Carp Education Chip"
  desc = "An education chip containing the martial art of Sleeping Carp. Insert into an Automatic Education Device to learn."
  subject = /datum/martial_art/the_sleeping_carp

/obj/item/education_chip/carp/Initialize()
  . = ..()
  add_overlay("edchip_carp")

/obj/item/education_chip/plasma_fist
  name = "Plasma Fist Education Chip"
  desc = "An education chip containing the martial art of Plasma Fist. Insert into an Automatic Education Device to learn."
  subject = /datum/martial_art/plasma_fist

/obj/item/education_chip/plasma_fist/Initialize()
  . = ..()
  add_overlay("edchip_pfist")
