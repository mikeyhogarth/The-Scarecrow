"The Scarecrow" by Mikey Hogarth
The story genre is "Horror". The release number is 1. The story headline is "A short Napoleonic agricultural horror". The story creation year is 2013.

Release along with an interpreter.

[Extensions]
Include Basic Screen Effects by Emily Short.

[Beginning]
When play begins:
     say "Everything is supposed to be very quiet after a massacre, and it always is, except for the birds. And what do the birds say? All there is to say about a massacre, things like 'Poo-tee-weet'.	
	-- Kurt Vonnegut";
	pause the game;
	say "In the winter of 1815, after countless millions had perished, the Napoleonic Wars came to an end. The little corporal Napoleon Bonaparte, emperor of France for the decade previous, was exiled to the volcanic island of St Helena where he would see out the last six years of his life. 

The end of the Napoleonic wars saw the start of a great agricultural depression in the United Kingdom that would last for a quarter of a century. Many farms succumbed to abandonment and disrepair as both landlords and tenants fell into bankruptcy. 

It is in the wake of this ruin, far from the bloody fields of Waterloo and Rocquencourt, that you find yourself standing on a long farm road in Suffolk, surrounded by patchwork fields of oat, barley and wheat. A dull lifelessness hangs in the air like the fog of war. All is silent, save for the cries of carrion crow circling above. 

Five hundred miles away, a young author called Mary Shelley has finished writing her first novel, 'The Modern Prometheus'..." ; 
pause the game.

Part 1 - Environment Setup

Section 1 - Initial setup

When play begins: 
    now right hand status line is "[time of day]"; 
    now left hand status line is "[location]";
    now the time of day is 3:00 PM.

Section 2 - the environment

A room is either indoors or outdoors. A room is usually indoors.

A thing can be hidden or visible.
A thing can be spooky or unspooky. A thing is usually unspooky.

An animal can be comfortable or uncomfortable. An animal is usually uncomfortable.

An animal has a room called last location. 

Understand "follow [any thing]" as following. Understand the commands "chase" and "pursue" as "follow".

Following is an action applying to one visible thing. 

Check following:
	if the noun is the player, say "Wherever you go, there you are." instead;
	if the noun is visible, say "[The noun] is right here." instead;
	if the last location of the noun is not the location, say "It's not clear where [the noun] has gone." instead. 

[Using best route]
Carry out following:
	let the destination be the location of the noun;
	if the destination is not a room, say "[The noun] isn't anywhere you can follow." instead;
	let aim be the best route from the location to the destination;
	say "(heading [aim])[line break]";
	try going aim. 

To move (pawn - an animal) tidily to (target - a room):
    now the last location of the pawn is the holder of the pawn;
    move the pawn to the target.


Section 3 - Additional Commands

Knocking is an action applying to one visible thing. Understand "knock [something]" and "knock on [something]" as knocking. Carry out knocking something: say "You are not sure that knocking on that will achieve anything."

Understand "Pet [something]" and "Stroke [something]" as touching.

Understand "Kick [something]" and "Punch [something]" and "Bash [something]" and "throw [something]" as attacking.

Understand "Look [direction]" as facing. facing is an action applying to one visible thing.

Carry out facing:
	say "You see nothing in that direction. Nearby: [if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] and [end if][if a door is visible][the list of visible doors][end if]"

Instead of facing up when the player is in the outdoors area, try examining the sky.

Section 4 - Atmosphere

Every turn when a random chance of 1 in 6 succeeds and the location of the player is outdoors:
	say "[one of]You hear the harsh 'caw' of a crow.[or]You feel a cool breeze.[cycling]"

[Letter fragments]
letters found is a number that varies.

When play begins, let letters found be 0.

A letter is a kind of thing. letters are proper-named.

Instead of examining a letter (called the current letter):
	say "You start the letter:[paragraph break]   ";
	continue the action.

The first letter is a letter. Understand "Page" or "Page one" or "Page one of letter" as the first letter. The printed name of the first letter is "page one of a letter". The description of the first letter is "[fixed letter spacing]General Hospital, Antwerp, 24th June 1815. After a long silence, I embrace the opportunity of informing you respecting my present situation. On the 15th, about 12 o'clock at night, we turned out and at two in the morning marched from the city of Brussels, to meet the enemy, who were advancing in great force on that city. About three o'clock in the afternoon of the 16th, we came up with them. Our whole force did not exceed 12,000 men, who were fatigued with a long march of upwards of 20 miles, encumbered with knapsacks and other luggage. The day was uncommonly warm, and no water to be had on the road; however, we were brought up, in order of battle. The French being strongly posted in a thick wood, to the number of 40,000 men, including cavalry and lancers, gave us very little time to look around us ere the fight commenced on both sides, in an awful and destructive manner, they having every advantage of us, both as to position and numbers, particularly in cavalry, as the British dragoons had not yet come up.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 1 of 4."

The second letter is a letter. Understand "Page" or "Page two" or "Page two of letter" as the second letter. The printed name of the second letter is "page two of a letter". The description of the second letter is "[fixed letter spacing]The French cavalry charged the British line of infantry three different times, and did much execution, until we were obliged to form squares of battalions, in order to turn them, which was executed in a most gallant manner, and many hundreds of them never returned. Still, they sent up French forces and as often we beat them them back. The battle lasted until it was quite dark, when the enemy began to give way, our poor fellows who were left alive following them as long as they could see, when night put an end to the fatigues of a well fought day. Thousands on both sides lay killed and wounded on the field of battle; and, as the greater part of the action lay in corn fields along a vast track of country, many hundreds must have died for want of assistance through the night, who were not able of themselves to crawl away.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 4 of 4."

The third letter is a letter. Understand "Page" or "Page three" or "Page three of letter" as the third letter. The printed name of the third letter is "page three of a letter". The description of the third letter is "[fixed letter spacing]I was wounded by a musquet ball, which passed through my right arm and breast, and lodged in my back, from whence it was extracted by a surgeon in the hospital of this place. Captain M. Is most severely wounded, having taken several shots through his body, and the regiment, in general, are mostly cut off. We have heard, since we came here, that our fine brigade, which entered the field on that eventful day, consisting of the 3d batt. Royal Scots, 42d, 44th and 92d regiments, are now formed into one battalion, not exceeding in whole 400 men. Lord Wellington retired in the night, to wait for reinforcements, and next day our cavalry and the rest of the army arrived. The Prussians came on the other side, and I am happy to understand the enemy got a most complete drubbing, losing cannon, baggage  and a great number of prisoners. They retreated towards Valenciennes, and other garrisons on their own frontiers, the allied troops pursuing them.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 3 of 4."

The fourth letter is a letter. Understand "Page" or "Page four" or "Page four of letter" as the fourth letter. The printed name of the fourth letter is "page four of a letter". The description of the fourth letter is "[fixed letter spacing]Thus I have given you as full an account of affairs, principally what I witnessed on the 16th, as I could; that relating to the 18th being from report. Nothing can exceed the kindness and attention of the inhabitants of this city to our wounded men : the hospital is constantly filled with ladies and gentlemen, who, although speaking a different language, personally administer to our wants, with the kindest attention, distributing clean shirts, bread, wine, coffee, tea, milk and fruit of all sorts, with every requisite, for our comfort and accommodation.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is the end of the letter."

after examining the foliage for the first time:
	say "Something in the nearby undergrowth catches your eye - it appears to be a letter.";
	place a letter in the players room.

after examining the coat for the first time:
	say "As you run your fingers along the hem of one of the sleeves, a folded piece of paper falls from one of the inside pockets. It appears to be a letter.";
	place a letter in the players room.	

after examining the fields of corn for the first time:
	say "In amongst the crop here you see a folded piece of paper. It appears to be a letter.";
	place a letter in the players room.
	
after examining the table for the first time:
	say "Tucked into the woodwork beneath the table, you find a folded piece of paper. It appears to be a letter.";
	place a letter in the players room.	

To place a letter in the players room:
	increase letters found by 1;
	if letters found is:
		-- 1: move the first letter to the location;
		-- 2: move the second letter to the location;
		-- 3: move the third letter to the location;
		-- 4: move the fourth letter to the location;		
		-- otherwise: say "You are confused!";
		

Section 5 - Out of world commands

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say "[place] is [way]. " 

after going nowhere:
	say exit list.

Part 2 - The Outdoor Area

The Outdoors Area is a region.

[Region wide backdrops]
The Sky is a backdrop. "Dull, grey clouds hang overhead." The Sky is in the Outdoors Area. Understand "Weather" as the sky.

The Crows are a backdrop. "Yay, crows." The crows are in the outdoors area. Understand "Crow" and "Birds" as The Crows.

The foliage is a backdrop. "Deep green foliage serves as a natural barrier separating the fields." The foliage is in the outdoors area. Understand "Undergrowth" as the foliage.

The fields of corn is a backdrop. It is in The Outdoors Area. The printed name of the fields of corn is "Corn". Understand "Barley" or "Oats" or "Corn" or "Cornfield" or "Wheat" or "Wheatfield" or "Fields" or "Field" or "Patchwork" or "Hills" or "Vista" as the fields of corn. The description is "Acres of barley, wheat and oat stretch over the horizon. The fields are wild and unkempt. Many of the crops have been ravaged by disease."

The Cottage Exterior is a backdrop. It is in The Outdoors Area. The printed name of the cottage exterior is "Cottage". Understand "Cottage" or "House" or "Chimney" or "Windows" as the cottage exterior. The description is "The large cottage is comprised of two floors. It is reddish-beige in colour has a thatched roof. A heavy and weather-worn oak door at the front of the cottage serves as the entrance."

To enter the corn:
	say "The fields of corn seem to go on forever and there would be little point in entering them. [exit list][paragraph break]";

instead of entering the corn:
	enter the corn.

Chapter 1 - The Farm Path

There is a room called The Farm Path. "[if unvisited]You are standing on a muddy farm path. A wooden gate to the south leads into a large barley field. Similar fields lead off into the distance, separated from one another by deep green foliage.
[paragraph break]Your journey here has been long and tiring. Beyond the field to the south you can see a thatched-roof cottage, a place you had once felt a connection with. A place you had once called home. In spite of your aching feet, the cottage no longer feels like an inviting respite.[paragraph break]The weather is overcast and a gentle rain is falling, casting a damp film across the landscape.
[otherwise]A wooden gate to the south leads to a field of barley.[end if]
[if the cat is in the location][paragraph break]You see a small black cat sheltering under some nearby foliage.[end if]" 

The cat is an animal in the farm path. The printed name of the cat is "the cat". the cat is proper-named. Understand "Wellington" as the cat. The cat is scenery. The description of the cat is "The cat stares at you with wide yellow eyes which convey both curiosity and caution in equal measures." 

The cat is wearing a silver collar. The description of the collar is "The cats name is Wellington." After examining the collar: now the printed name of the cat is "Wellington". instead of examining the collar when the cat is uncomfortable, say "The cat edges away warily before you can get close enough. Evidently he is still a little wary of you."

Instead of touching the cat, say "[printed name of cat in sentence case][one of] purrs loudly.[or] rubs his face against your leg.[cycling]"

Instead of touching or attacking or taking the cat when the location of the cat is the farm path:
 	say "As you approach the cat, it flees into the undergrowth."; 
	move the cat to the front of the cottage;
	change the description of the cat to "A small black cat with wide, yellow eyes. The cat is wearing a silver collar."

Instead of touching the cat when the location of the cat is not the farm path and the cat is uncomfortable:
	say "The cat seems more comfortable around you now.";	
	now the cat is comfortable;
	now the cat is not scenery.

To move the cat:
	if the cat is in a room (called the current space):
		now the last location of the cat is the current space;
		let next space be a random room which is adjacent to the current space; 
		let the way be the best route from the location of the cat to the next space;
		if the cat is visible, say "[printed name of cat in sentence case] heads [way] to [the printed name of the next space in lower case]."; 
		move the cat tidily to next space; 
		if the cat is visible, say "[printed name of the cat in sentence case] arrives from the [opposite of way]."

To describe the cat:
	if the cat is comfortable:
		say "[printed name of cat in sentence case] [one of]meows[or]begins scratching in the undergrowth[cycling].";
	otherwise:
		say "[printed name of cat in sentence case] [one of]tilts his head to one side[or]blinks slowly[cycling].".		

Every turn:
	if a random chance of 1 in 3 succeeds and the cat is comfortable:
		move the cat;
	otherwise if a random chance of 1 in 3 succeeds and the location of the cat is the location of the player:
		describe the cat; 
	
The actual farm path is scenery in The Farm Path. The printed name of the actual farm path is "Path". Understand "Path" or "Farm Path" as the actual farm path. The description is "A muddy and well trodden farm path stretches in an east to westerly direction."

The Farm Path is outdoors. The Farm Path is in the Outdoors Area. Instead of going North in the farm path, say "Thick foliage prevents passage to the North." Instead of going nowhere from the farm path, say "The path extends far into the distance. You have travelled far to get here, you see no reason to leave now." 

The wooden gate is south of the farm path and north of The Barley Field. The wooden gate is a door. The wooden gate is scenery. The description of the wooden gate is "An old self-locking wooden gate leads through to a barley field."

Chapter 2 - The Barley Field

The description of The Barley Field is "[if unvisited]As you enter the barley field, your mind drifts to the fields of battle in the aftermath of Waterloo. The casualties were horrendous, the victory far from glorious. Many of the soldiers who died that day, the 'scum of the earth' as Wellington had described them, had been recruited from villages and hamlets nearby. Wellington had later claimed  that it was 'really wonderful that we should have made these men into the fine fellows they are.' You consider the barrenness of that statement  now that tens of thousands of those fine fellows are dead. Many of those who survived were not the same as they were before the war, having succumbed to war exhaustion or madness, or worse.

The chill wind is making it hard to breathe, and you begin to feel light headed. Further south through the fields you can see the old farm cottage. [otherwise]You are standing in a field of barley. To the north is a wooden gate leading to a farm path. A cottage lies to the south.[end if]". The Barley Field is outdoors. The Barley Field is in the Outdoors Area.

instead of entering the fields of corn in the barley field, try going east.

A scarecrow is in The Barley Field. The scarecrow is fixed in place. The scarecrow is scenery. The description of The Scarecrow is "The scarecrow is wearing a tattered red coat and a pair of old grey trousers. Black rubber boots and a shapeless cloth hat with a wide, crinkly brim complete the outfit.

The scarecrow's head is made from a hessian sack, onto which has been drawn the approximation of a face. You can not tell whether the scarecrow is smiling or frowning, and his eyes stare blankly through you. The scarecrow is soaked through with rain - he has clearly been standing in this field for some time."

The scarecrow is wearing a hat. The description of the hat is "A shapeless cloth hat with a wide, crinkly brim." The scarecrow is wearing a coat. The description of the coat is "A tattered red coat." The scarecrow is wearing trousers. The description of the trousers is "An old pair of muddied grey trousers." The scarecrow is wearing boots. The description of the boots is "A muddy black pair of wellingtons."

After examining the scarecrow for the first time, say "As you stare at the scarecrow, you feel a deep nausea as you come to accept an affinity with him. You consider the folly in his defence of fields that have been abandoned and ravaged by disease. His battlefield is a barren waste, his war over. He has been standing here so long, the crows are no longer afraid of him. Perhaps now the fight is over, they are his only companions."

instead of removing or taking the scarecrow, say "The scarecrow is fastened tightly to the post."

A post is in The Barley Field. The post is a supporter. "An old rotting wooden post is here. [if the scarecrow is on-stage]Propped up against the post, standing to attention, is a lone scarecrow." Understand "Post" and "Rotting Post" as post. The description of the post is "The old wooden post is a brownish green colour and is damp to the touch."

Instead of going nowhere from the Barley Field, enter the corn.

There is a note. 
	
Instead of examining the note: 
	say "There is a message inscribed onto the note in what looks like charcoal. The author has used aggressive straight lines to etch out each letter. The message reads:";
	say paragraph break;
	say "[italic type][bold type]'Your place is in the fields'[roman type]";
	say paragraph break;
	move the strange figure to Front of the Cottage.

Chapter 3 - Front of the Cottage

South of the Barley Field is a room called Front Of The Cottage. The Description of Front Of The Cottage is "[if unvisited]You approach the[otherwise]You stand in[end if] front of a large two storey cottage [if unvisited]that is very familiar to you[end if]. A field of barley lies to the North. A path leads around the side of the cottage to the southwest. The cottage itself is directly south, the entrance blocked by a heavy oak door.[if the scarecrow is off-stage and the location of the note is the barley field and the post is unspooky]
[paragraph break]In the field to the north you can see something nailed to a post.[end if]
[if strange figure is in the location][bold type][paragraph break]You see a strange figure at one of the cottage's upper windows.[roman type][end if]
[if the cat is in the location and the cat is uncomfortable][paragraph break]The small black cat from the farm path is here, washing himself among the barley.[end if]"


Instead of going nowhere from the front of the cottage, enter the corn.

Instead of entering the Cottage:
	if location is Front of the Cottage:
		try going south;
	otherwise if location is Back of the Cottage:
		say "The only entrance to the cottage is through the front door, which is around the other side of the building.";
	otherwise:
		say "You can not enter the cottage from here."
		
The garden path is a backdrop. It is in Front of the Cottage and Back of the Cottage. Front Of The Cottage is outdoors. Front Of The Cottage is in the Outdoors Area. The description of the garden path is "The path winds around the side of the house."

Before following the garden path:
	if location is Front of the Cottage, try going southwest instead;
	otherwise try going northeast.

Instead of going southwest in Front of the cottage, try going southeast.
	
before going southeast in Front of the Cottage, say "You follow garden path to the back of the cottage.";

The Front Door is a door. It is south of Front of The Cottage and north of The Lobby. The description of the front door is "A Heavy Oak Door." The front door is scenery. The front door is locked. The rusty key unlocks the front door. Understand "Oak door" or "Heavy oak door" as the front door. Instead of knocking the front door, say "You knock on the door of the cottage, but nobody answers."

Before opening or pushing or pulling the front door when the front door is locked:
	say "You heave with all of your might but the heavy oak door will not budge. It appears to be locked.";
	stop the action.

After going from back of the cottage when the post is spooky:
	say "As you make your way around the front of the cottage, you survey the area to see if you can identify the cause of the banging. Just as you are about to resign to having imagined the sound, you observe to your horror that the field to the north is now empty. [paragraph break]The scarecrow has left his post![paragraph break] You can vaguely make out that something has been nailed to the post in place of the scarecrow, flapping gently in the breeze.[roman type]";
	pause the game;
	now the post is unspooky;
	continue the action.

There is a strange figure. The strange figure is scenery. "You see a strange figure at the window."

after examining the strange figure:
	say "As your eyes begin to focus more clearly, the figure fades from view. Was it even there in the first place?";
	remove the Strange Figure from play;
	
	
Chapter 4 - Back of the Cottage

Southeast of Front of the Cottage is a room called Back of the Cottage. The description of Back of the Cottage is "[if unvisited]You arrive in an ample-sized clearing of trampled barley which serves as a yard for the cottage. The fields continue off into the distance in all directions.  [otherwise]You are standing at the rear of the cottage.[end if][paragraph break]On the perimeter of the clearing is an old, broken turnwrest plough." It is in the outdoors area.

Instead of going nowhere from the back of the cottage, enter the corn.

A plough is in Back of the Cottage. The plough is a supporter. The plough is scenery. The plough is fixed in place. The description of the plough is "In addition to the rust and general disrepair of the plough, the cumbersome plough also appears to have been damaged - the blades and handles are bent at awkward angles rendering the plough useless." Instead of taking or pushing the plough, say "The plough is too heavy to move." 

There is a rusty key. It is hidden. The description of the key is "An old, rusty key."

after searching or examining the plough when the rusty key is hidden:
	say "Hanging from the plough, you see a rusty key.";
	now the rusty key is visible;
	move the rusty key to the plough.
	
After taking the rusty key for the first time:
	if The Scarecrow is on-stage, say "As you pick up the key, your heart jolts - you hear four loud bangs coming from the front of the cottage, like metal knocking on wood. The sound echoes around the hills and then all is silent again.";
	remove The Scarecrow from play;
	now the post is spooky;
	move the note to the post.

instead of going northeast in Back of the Cottage, try going northwest. 

before going northwest in Back of the Cottage:
	say "You follow the garden path around to the front of the cottage."; 
	continue the action.


Part 3 - The Indoors Area

The Indoors Area is a region.

Chapter 5 - The Lobby

The lobby is in the indoors area. The description of The Lobby is "
[if unvisited]As you enter the cottage through the heavy oak door, you disturb a murder of crows who were sheltering inside. A violent fury of black feathers whip past your face as the crows exit the cottage to join their brothers in the fields. [paragraph break]The lobby itself is bare and largely unfurnished, with wooden floorboards that continue south into a food preparation area, and west into a large living room. A few shelves adorn the wall and a table sits against the western wall. You feel nauseous and short of breath. Surfaces feel cold and damp to the touch. [otherwise]
You are in the lobby. The room is large and mostly empty, save for a few shelves.
The kitchen is to the north, while to the west is the living room.
 [end if]"

The table is scenery in the lobby. "A simple wooden table."

There is a shelf in the lobby. The shelf is a supporter. On the shelf is a clock.

Instead of taking the clock, say "The clock is just fine where it is!"
The description of the clock is "The time reads [time of day in words]."

After going from the lobby:
	end the story saying "End of demo!"

Chapter 6 - The Kitchen

South of the Lobby is a room called The kitchen. It is in the indoors area. The description of the kitchen is "To the north is the lobby."

Chapter 7 - The Living Room

West of the Lobby is a room called The Living room. It is in the indoors area. The description of the living room is "To the east is the lobby."

Chapter 8 - The Upstairs Hallway

Up from the Lobby is a room called The Upstairs Hallway. It is in the indoors area. The description of the upstairs hallway is "Stairs lead down to the lobby. To the north is the bedroom, to the south is the bathroom."

Chapter 9 - The Bedroom

North from the upstairs hallway is a room called The Bedroom. It is in the indoors area. The description of the bedroom is "A door leads south into the upstairs hallway."

Chapter 10 - The Bathroom

South from the upstairs hallway is a room called The Bathroom. It is in the indoors area. The description of the bathroom is "Do bathrooms even exist? Anyway, if they do, the upstairs hallway is to the north."