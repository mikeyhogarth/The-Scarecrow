"The Scarecrow" by Mikey Hogarth
The story genre is "Horror". The release number is 1. The story headline is "A short Napoleonic agricultural chiller". The story creation year is 2013.

Release along with an interpreter.
use no scoring.

[Extensions]
Include Basic Screen Effects by Emily Short.

[Beginning]
When play begins:
     say "Welcome to 'The Scarecrow'. If you have not experienced interactive fiction before, type 'Help' at the prompt to get you started.";
	pause the game;	
     say "[paragraph break]Everything is supposed to be very quiet after a massacre, and it always is, except for the birds. And what do the birds say? All there is to say about a massacre, things like 'Poo-tee-weet'.	
	-- Kurt Vonnegut";
	pause the game;
	say "[paragraph break]In the winter of 1815, after countless millions had perished, the Napoleonic Wars came to an end. The little corporal Napoleon Bonaparte, emperor of France for the last decade, was exiled to the volcanic island of St Helena where he would see out the last six years of his life. 

The end of the Napoleonic wars saw the start of a great agricultural depression in the United Kingdom that would last for a quarter of a century. Many farms succumbed to abandonment and disrepair as both landlords and tenants fell into bankruptcy. 

It is in the wake of this ruin, far from the bloody fields of Waterloo and Rocquencourt, that you find yourself standing on a long farm road in Suffolk, surrounded by patchwork fields of oat, barley and wheat. The crops around you reek of disease and neglect, and a dull lifelessness hangs in the air like the fog of war. All is silent, save for the cries of carrion crow circling above. 

Five hundred miles away, a young author called Mary Shelley has just completed her first novel, 'The Modern Prometheus'..." ; 
	pause the game;
	say "[paragraph break]The weather is overcast and a gentle rain is falling. The wind is chill, and the crows are legion.[paragraph break]"
 

Part 1 - Environment Setup

Section 1 - Initial setup

When play begins: 
    now right hand status line is "[time of day]"; 
    now left hand status line is "[location]";
    now the time of day is 3:00 PM.

Section 2 - the environment

A room is either indoors or outdoors. A room is usually indoors.

A thing can be hidden or visible.
An thing can be scarecrowed or unscarecrowed. A thing is usually unscarecrowed.
An thing can be dormoused or undormoused. A thing is usually undormoused.
A thing can be spooky or unspooky. A thing is usually unspooky.
A thing can be dusty or undusty. A thing is usually undusty.
A thing can be identified or unidentified. A thing is usually unidentified.
An animal can be comfortable or uncomfortable. An animal is usually uncomfortable.
An animal has a room called last location.

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. Understand "stairs" or "stair" or "staircase" as a staircase. Understand "upstairs" or "downstairs" as a staircase. 

Instead of climbing a staircase:
	try entering the noun.

Understand the commands "ascend" and "descend" as climb. Understand "go down [staircase]" as climbing. Understand "go up [staircase]" as climbing.

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

Understand "Wipe [something]" and "Clean [something]" and "Dust [something]" and "Wash [something]" and "Clear [something]" as rubbing.
Understand "Pet [something]" and "Stroke [something]" and "Scratch [something]" and "Tickle [something]" and "Praise [something]" and "Poke [something]" as touching.
Understand "Kick [something]" and "Ram [something]" and "Punch [something]" and "Bash [something]" and "Throw [something]" as attacking.
Understand "Look [direction]" as facing. facing is an action applying to one visible thing.
Understand "Talk to [anything]" as a mistake ("What do you want to say?")

Carry out facing:
	say "You look around. Nearby: [if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] and [end if][if a door is visible][the list of visible doors][end if]"

Instead of facing up when the player is in the outdoors area, try examining the sky.

Meowing is an action applying to one visible thing. Understand "Meow at [something]" and "Meow to [something]" as meowing.  Instead of meowing, say "You meow at [the noun]."

Requesting help is an action out of world.
Report requesting help: say "Commands in interactive fiction are issued at the command prompt. You can go in any direction (e.g. 'go north') and you issue commands in natural English (e.g. 'take key' or 'examine the tree'). You can re-print a room description by typing 'look'. Most common commands also have shortcuts, e.g. 'n' will take you north, 'x' will examine and 'l' will look around. [paragraph break]The intention with [italic type]The Scarecrow[Roman type] is not to trick you - just try exploring and take in the world. Have fun!"
Understand "Help" or "About" as requesting help. 

Section 4 - Atmosphere

Every turn when a random chance of 1 in 6 succeeds and the location of the player is outdoors:
	say "[one of]You hear the harsh 'caw' of a crow.[or]You feel a cool breeze.[cycling]"

[Letter fragments]
letters found is a number that varies.

When play begins, let letters found be 0.

A letter is a kind of thing. letters are proper-named.

Instead of examining a letter (called the current letter):
	say "You begin reading the letter:[paragraph break]";
	continue the action.

The first letter is a letter. Understand "Page" or "Page one" or "Page 1" or "Page one of letter" or "Page 1 of letter" as the first letter. The printed name of the first letter is "page one of a letter". The description of the first letter is "[fixed letter spacing]General Hospital, Antwerp, 24th June 1815. After a long silence, I embrace the opportunity of informing you respecting my present situation. On the 15th, about 12 o'clock at night, we turned out and at two in the morning marched from the city of Brussels to meet the enemy, who were advancing in great force on that city. About three o'clock in the afternoon of the 16th, we came up with them. Our whole force did not exceed 12,000 men, who were fatigued with a long march of upwards of 20 miles and encumbered with knapsacks and other luggage. The day was uncommonly warm, and no water was to be had on the road; however, we were brought up in order of battle. The French being strongly posted in a thick wood, to the number of 40,000 men including cavalry and lancers, gave us very little time to look around us ere the fight commenced on both sides, in an awful and destructive manner, they having every advantage of us, both as to position and numbers, particularly in cavalry, as the British dragoons had not yet come up.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 1 of 4."

The second letter is a letter. Understand "Page" or "Page two" or "Page 2" or "Page two of letter"  or "Page 2 of letter" as the second letter. The printed name of the second letter is "page two of a letter". The description of the second letter is "[fixed letter spacing]The French cavalry charged the British line of infantry three different times, and did much execution until we were obliged to form squares of battalions in order to turn them. This was executed in a most gallant manner, and many hundreds never returned. Still they sent up French forces and as often we beat them them back. The battle lasted until it was quite dark, when the enemy began to give way. Our poor fellows who were left alive followed them as long as they could see, when night put an end to the fatigues of a well fought day. Thousands on both sides lay killed and wounded on the field of battle and, as the greater part of the action lay in corn fields along a vast track of country, many hundreds must have died for want of assistance through the night, who were not able of themselves to crawl away.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 2 of 4."

The third letter is a letter. Understand "Page" or "Page three" or "Page 3" or "Page three of letter" or "Page 3 of letter" as the third letter. The printed name of the third letter is "page three of a letter". The description of the third letter is "[fixed letter spacing]I was wounded by a musket ball, which passed through my right arm and breast, and lodged in my back, from whence it was extracted by a surgeon in the hospital of this place. Captain M. Is most severely wounded, having taken several shots through his body, and the regiment in general are mostly cut off. We have heard since we came here that our fine brigade which entered the field on that eventful day, consisting of the 3d batt. Royal Scots, 42d, 44th and 92d regiments, are now formed into one battalion not exceeding in whole 400 men. Lord Wellington retired in the night to wait for reinforcements, and next day our cavalry and the rest of the army arrived. The Prussians came on the other side, and I am happy to understand the enemy got a most complete drubbing, losing cannon, baggage  and a great number of prisoners. They retreated towards Valenciennes and other garrisons on their own frontiers, the allied troops pursuing them.[variable letter spacing][paragraph break]A scrawl at the bottom of the letter indicates that this is part 3 of 4."

The fourth letter is a letter. Understand "Page" or "Page four" or "Page 4" or "Page four of letter" or "Page 4 of letter" as the fourth letter. The printed name of the fourth letter is "page four of a letter". The description of the fourth letter is "[fixed letter spacing]Thus I have given you as full an account of affairs, principally what I witnessed on the 16th, as I could; that relating to the 18th being from report. Nothing can exceed the kindness and attention of the inhabitants of this city to our wounded men : the hospital is constantly filled with ladies and gentlemen who, although speaking a different language, personally administer to our wants with the kindest attention, distributing clean shirts, bread, wine, coffee, tea, milk and fruit of all sorts with every requisite for our comfort and accommodation.[paragraph break]Faithfully yours,[paragraph break]XXXXXXXX[variable letter spacing][paragraph break](The name signed at the foot of the letter is illegible)."

after examining the foliage for the first time:
	say "Something in the nearby undergrowth catches your eye - it appears to be a letter.";
	place a letter in the players room.

after examining the gnarled tree for the first time:
	say "Tucked into a large knot in the bark of the tree you see a folded piece of paper - it appears to be a letter.";
	place a letter in the players room.	

after examining the fields of corn for the first time:
	say "In amongst the crop here you see a folded piece of paper. It appears to be a letter.";
	place a letter in the players room.
	
after examining the fire pit for the first time:
	say "In amongst the ashes, you find a folded piece of paper. It appears to be a letter.";
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
The Sky is a backdrop. "Dull, grey clouds hang overhead." The Sky is in the Outdoors Area. Understand "Weather" and "mist" as the sky.

The Crows are a backdrop. "You estimate around a hundred crows are circling around the cottage or scavenging among the fields like vultures. Their tattered plumage is a glossy jet black, with a purple and green sheen occasionally visible in the dim sunlight. Many of the crows look thin and malnourished, almost skeletal." The crows are in the outdoors area. Understand "Crow" and "Birds" as The Crows.

The foliage is a backdrop. "Deep green foliage serves as a natural barrier separating the distant fields fields." The foliage is in the outdoors area. Understand "Undergrowth" as the foliage.

The fields of corn is a backdrop. It is in The Outdoors Area. The printed name of the fields of corn is "Corn". Understand "Barley" or "Oats" or "Corn" or "Cornfield" or "Wheat" or "Wheatfield" or "Fields" or "Field" or "Patchwork" or "Hills" or "Vista" as the fields of corn. The description is "Acres of diseased barley, wheat and oat stretch over the horizon. Your eyes hurt as you stare into the distance, and the landscape seems to throb giving you a sudden headache. The fields are wild and unkempt."

The Cottage Exterior is a backdrop. It is in The Outdoors Area. The printed name of the cottage exterior is "Cottage". Understand "Cottage" or "Window" or "House" or "Chimney" or "Windows" as the cottage exterior. The description is "The large two-storey cottage reddish-beige in colour and has a thatched roof. A heavy and weather-worn oak door at the front of the cottage serves as the entrance."

To enter the corn:
	say "The fields of dead barley seem to go on forever and there would be little point in entering them. [exit list][paragraph break]";

instead of entering the corn:
	enter the corn.

Chapter 1 - The Farm Path

There is a room called The Farm Path. "[if unvisited]You are standing on a muddy farm path. A wooden gate to the south leads into a large barley field. Similar fields lead off into the distance, separated from one another by deep green foliage.
[paragraph break]A low mist hangs in the air. Your journey here has been long and tiring. Beyond the field to the south you can see the silhouette of a thatched cottage, a place you had once called home. In spite of your aching feet, the cottage does not feel like an inviting respite.
[otherwise]A wooden gate to the south leads to a field of barley.[end if]
[if the cat is in the location and the cat is uncomfortable][paragraph break]You see a small black cat sheltering under some nearby foliage.[end if]" 

The cat is an animal in the farm path. The printed name of the cat is "the cat". the cat is proper-named. Understand "George" or "Kitty" or "Pussy" or "Tail" or "Fang" as the cat. The cat is scenery. The description of the cat is "A lean black cat, whose large green eyes convey both curiosity and caution in equal measures." 

The cat is wearing a silver collar. The description of the collar is "A small medallion attached to the collar bears the engraving of a crown, beneath which is written the name 'George'." After examining the collar: now the printed name of the cat is "George". instead of examining the collar when the cat is uncomfortable, say "The cat edges away before you can get close enough. Evidently he is still a little wary of you."

Instead of touching the cat, say "[printed name of cat in sentence case][one of] purrs loudly.[or] rubs his face against your leg.[or] rolls over and stretches.[or] leans into your hand and closes his eyes in pleasure.[cycling]"

Instead of touching or attacking or taking the cat when the location of the cat is the farm path and the cat is uncomfortable:
 	say "As you approach the cat, it flees into the undergrowth."; 
	move the cat to the front of the cottage;
	change the description of the cat to "A small black cat with wide, green eyes. The cat is wearing a silver collar."

To make the cat comfortable:
	say "He seems more comfortable around you now.";	
	now the cat is comfortable;
	now the cat is not scenery.

Instead of touching the cat when the location of the cat is not the farm path and the cat is uncomfortable:
	say "You kneel down and hold your arm out towards the cat, who responds by rubbing his face against your hand and purring loudly. [no line break]"; 
	make the cat comfortable.
	
Instead of meowing the cat when the location of the cat is not the farm path and the cat is uncomfortable:
	say "You abandon your sensibilities for a moment, stare the cat straight in the eyes, and meow. To your surprise, he meows back. ";
	make the cat comfortable.

Instead of asking the cat about anything, talk to the cat.
Instead of telling the cat about anything, talk to the cat.	
Instead of answering the cat that anything, talk to the cat.

To talk to the cat:
	say "The cat looks confused."
	
To move the cat:
	if the cat is in a room (called the current space):
		now the last location of the cat is the current space;
		let next space be a random room which is adjacent to the current space; 
		let the way be the best route from the location of the cat to the next space;
		if the cat is visible, say "[printed name of cat in sentence case] heads [way] to [the printed name of the next space in lower case]."; 
		move the cat tidily to next space; 
		if the cat is visible, say "[printed name of the cat in sentence case] arrives from the [opposite of way]."

To describe the cat:
	if the cat is comfortable and the cat is in the Outdoors Area:
		say "[printed name of cat in sentence case] [one of]meows[or]begins purring loudly[or]begins scratching in the undergrowth[or]starts washing himself absent-mindedly[or]yawns[or]crouches down and attempts to sneak up on a nearby crow, but it flies away moments before he pounces[at random].";
	otherwise if the cat is comfortable and the cat is in the Indoors Area:
		say "[printed name of cat in sentence case] [one of]meows[or]sits in silence, staring at you[or]begins purring loudly[or]dabs at a piece of straw[or]stares at the wall as if distracted by something, but there is nothing there[or]yawns[at random].";				
	otherwise:
		say "[printed name of cat in sentence case] [one of]tilts his head to one side[or]wags his tail violently from side to side[or]blinks slowly with one eye and stares at you[cycling].".
		
Every turn:
	if a random chance of 1 in 3 succeeds and the cat is comfortable:
		move the cat;
	otherwise if a random chance of 1 in 3 succeeds and the location of the cat is the location of the player:
		describe the cat; 
	
The actual farm path is scenery in The Farm Path. The printed name of the actual farm path is "Path". Understand "Path" or "Farm Path" as the actual farm path. The description is "A muddy and well trodden farm path stretches east to west."

The Farm Path is outdoors. The Farm Path is in the Outdoors Area. Instead of going North in the farm path, say "Thick foliage prevents passage to the North." Instead of going nowhere from the farm path, say "The path extends far into the distance. You have travelled far to get here, you see no reason to leave now." 

The wooden gate is south of the farm path and north of The Barley Field. The wooden gate is a door. The wooden gate is scenery. The description of the wooden gate is "An old self-locking wooden gate."

Chapter 2 - The Barley Field

The description of The Barley Field is "[if unvisited]As you survey this rural wasteland, your mind drifts to the fields of battle in the aftermath of Waterloo. The casualties were horrendous, the victory far from glorious. Many of the soldiers who died that day, the 'scum of the earth' as Wellington had described them, had been recruited from villages and hamlets nearby. Wellington had later reflected that it was 'really wonderful that we should have made these men into the fine fellows they are.' You consider the barrenness of that statement now that tens of thousands of those fine fellows are dead. Many of those who survived were not the same as they were before the war, having succumbed to war exhaustion, madness, or worse.

The stench of death is here, exemplified by the disease-ravaged crops left to abandonment in the surrounding fields. The chill wind makes it hard to breathe, and you begin to feel light headed. Further south through the fields you can see the old farm cottage. [otherwise]You are standing in a field of barley. To the north is a wooden gate leading to a farm path. A cottage lies to the south.[end if]". The Barley Field is outdoors. The Barley Field is in the Outdoors Area.

instead of entering the fields of corn in the barley field, try going east.

A scarecrow is in The Barley Field. The scarecrow is fixed in place. The scarecrow is scenery. The description of The Scarecrow is "The scarecrow is wearing a tattered red coat and a pair of old grey trousers. Black rubber boots and a shapeless cloth hat with a wide, crinkly brim complete the outfit.

The scarecrow's head is made from a hessian sack, onto which has been drawn the approximation of a face. You can not tell whether the scarecrow is smiling or frowning, and his eyes stare blankly through you. The scarecrow is soaked through with rain - he has clearly been standing in this field for some time."

The scarecrow is wearing a hat. The description of the hat is "A shapeless cloth hat with a wide, crinkly brim." The scarecrow is wearing a coat. The description of the coat is "A tattered red coat." The scarecrow is wearing trousers. The description of the trousers is "An old pair of muddied grey trousers." The scarecrow is wearing boots. The description of the boots is "A muddy black pair of wellingtons."

After examining the scarecrow for the first time, say "Looking at the scarecrow, you consider the folly in his defence of abandoned fields. His battlefield is a barren wasteland, his war over. He has been standing here so long, the crows are no longer afraid of him. Perhaps now the fight is over, they are his only companions."

Instead of asking the scarecrow about anything, talk to the scarecrow.
Instead of telling the scarecrow about anything, talk to the scarecrow.	
Instead of answering the scarecrow that anything, talk to the scarecrow.

To talk to the scarecrow:
	say "You begin to converse with the scarecrow for a few moments, but eventually snap to the realisation that you are talking to yourself."
	

instead of removing or taking the scarecrow, say "The scarecrow is fastened tightly to the post."

A post is in The Barley Field. The post is a supporter. "An old rotting wooden post is here. [if the scarecrow is on-stage]Propped up against the post, standing to attention, is a lone scarecrow." Understand "Post" and "Rotting Post" as post. The description of the post is "The old wooden post is a brownish green colour and is damp to the touch. Scratches at the foot of the post indicate that an animal has sharpened its claws here."

Instead of going nowhere from the Barley Field, enter the corn.

There is a note. 
	
Instead of examining the note: 
	say "There is a message written on the note in what looks like charcoal. The author has used aggressive straight lines to etch out each letter. The message reads:";
	say paragraph break;
	say "[italic type][bold type]'Your place is in the fields'[roman type]";
	say paragraph break;
	move the strange figure to Front of the Cottage.

Instead of examining the cottage when the strange figure is on-stage, try examining the strange figure.

Chapter 3 - Front of the Cottage

South of the Barley Field is a room called Front Of The Cottage. The Description of Front Of The Cottage is "[if unvisited]You approach the[otherwise]You stand in[end if] front of a large two storey cottage [if unvisited]that is very familiar to you[end if]. A field of barley lies to the north. A path leads around the side of the cottage to the southwest. The cottage itself is directly south, the entrance blocked by a heavy oak door.[if unvisited]The crows continue to circle and caw all around, landing on the various protrusions around the cottage. [paragraph break]You feel suddenly very sad, as if there is something at work in your soul which you do not understand.[end if][if the scarecrow is off-stage and the location of the note is the barley field and the post is unspooky]
[paragraph break]In the field to the north you can see something nailed to a post.[end if]
[if the scarecrow is spooky][paragraph break]You can make out a wiry black figure resting against the post to the north.[end if][if the cat is in the location and the cat is uncomfortable][paragraph break]The small black cat from the farm path is here, washing himself among the barley.[end if]"

after printing the locale description of front of the cottage when the strange figure is on-stage, say "[bold type]You see a strange figure at one of the cottage's upper windows.[roman type][paragraph break]"	

after printing the locale description of front of the cottage when the player is scarecrowed, say "The sound of the crows is much louder now.[paragraph break]You can make out the figure to the north in more detail now. It is clearly humanoid in appearance, wiry and gaunt. You can't quite tell yet, but there is something not quite right about the figure's bulbous head."

Instead of going nowhere from the front of the cottage, enter the corn.

Instead of entering the Cottage:
	if location is Front of the Cottage:
		try going south;
	otherwise if location is Back of the Cottage:
		say "The only entrance to the cottage is through the front door, which is around the other side of the building.";
	otherwise:
		say "You can not enter the cottage from here."
		
The garden path is a backdrop. It is in Front of the Cottage and Back of the Cottage. Front Of The Cottage is outdoors. Front Of The Cottage is in the Outdoors Area. The description of the garden path is "The path winds around the side of the house."

Instead of going north in Back of the cottage, say "The only entrance to the cottage is around the other side."

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
	clear the screen;
	say "As you make your way around the front of the cottage, you survey the area to see if you can identify the cause of the banging. Just as you are about to resign to having imagined the sound, you observe to your horror that the field to the north is now empty. [paragraph break]The scarecrow has left his post![paragraph break]You can vaguely make out that something has been nailed to the post in place of the scarecrow, flapping gently in the breeze.[roman type]";
	pause the game;
	now the post is unspooky;
	continue the action.

There is a strange figure. The strange figure is scenery. "You see a strange figure at the window."

after examining the strange figure:
	say "As your eyes begin to focus more clearly, the figure fades from view. Was it even there in the first place?";
	remove the Strange Figure from play;
	
Chapter 4 - Back of the Cottage

Southeast of Front of the Cottage is a room called Back of the Cottage. The description of Back of the Cottage is "[if unvisited]You arrive in an ample-sized clearing of trampled barley which serves as a yard for the cottage.[paragraph break]You feel a slight twinge in your knee and wince in pain as you correct yourself. In that instant your thoughts turn to musket fire and the mayhem of battle, and to the sharp and sudden trauma below your right femur. [paragraph break]And to falling. And to the wet earth.[paragraph break]You take a moment to gather your composure. You close your eyes and begin repeating to yourself 'You are home. You are alive. ' Eventually you open your eyes and breathe in the cold country air.[otherwise]You are standing at the rear of the cottage.[end if][paragraph break]On the perimeter of the clearing is an old, broken plough. You can also see an ancient gnarled tree here." It is in the outdoors area.

Instead of going nowhere from the back of the cottage, enter the corn.

A plough is in Back of the Cottage. The plough is a supporter. The plough is scenery. The plough is fixed in place. The description of the plough is "In addition to the rust and general disrepair of the plough, it also appears to have been damaged - the blades and handles are bent at awkward angles rendering the plough useless. It is as though somebody has purposefully impaired the plough from usage." Instead of taking or pushing the plough, say "Between the splinters and twisted rusty metal, the plough is too unwieldy to move."

A gnarled tree is in the Back of the Cottage. The gnarled tree is scenery. The gnarled tree is fixed in place. The description of the gnarled tree is "An old, gnarled tree. The tree is bereft of leaves and extends around twenty feet into the air with menacing, claw-like branches. The tree appears to have lost several branches, and is scarred with what you presume to be lightning damage."

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

[Region wide backdrops]
The cobwebs are a backdrop. "Light, wispy cobwebs seem to cover every surface." The cobwebs is in the Indoors Area. Understand "Cobwebs" or "webs" as the cobwebs.

The walls are a backdrop. "The walls are dull and grey." The walls are in the Indoors Area. Understand "Wall" as the walls.


The straw is a backdrop. "Straw covers the floorboards of the cottage." The straw is in the Indoors Area. 

The dust is a backdrop. "Dust hangs in the air and covers every surface, making it hard to breathe." The dust is in the Indoors Area.

Chapter 5 - The Lobby

The lobby is in the indoors area. The description of The Lobby is "[if unvisited]As you enter the cottage through the heavy oak door, you disturb a number of crows who were sheltering inside. A violent fury of black feathers whip past your face as the crows exit the cottage to join their brothers in the fields. [paragraph break]The lobby itself is bare and largely unfurnished, straw is scattered liberally across the floorboards, which continue south into a food preparation area, and west into a large living room. The room is empty save for a few shelves. [paragraph break] You feel nauseous and short of breath. Surfaces feel cold and damp to the touch.[otherwise]You are in the lobby. The room is large and mostly empty, save for a few shelves. A kitchen is to the south, while to the west is a large living room.[end if][paragraph break]On one of the shelves you see an old clock.[paragraph break]An old rickety staircase leads upstairs."

after printing the locale description of the lobby when the player is scarecrowed, say "Through the door to the north you can see the barley fields, and the distant outline of the strange figure against the post."

There is a shelf in the lobby. The shelf is a supporter. The shelf is scenery. On the shelf is a clock. The clock is scenery. Understand "Old Clock" as the clock. Understand "Shelves" as the shelf.

Instead of taking the clock, say "The clock is just fine where it is!"
The description of the clock is "The time reads [time of day in words]."

There is a black feather. The black feather is proper-named. The printed name of the black feather is "a black feather". Understand "Feather" or "Quill" as the black feather.

 

instead of examining the black feather for the first time:
	say "Upon closer inspection you realise that the shaft is hollow and the end is sharpened to a point. The feather is in fact a quill pen.";
	now the black feather is identified;
	now the description of the black feather is "A black quill used for writing.";	
	now the printed name of the black feather is "a black quill".


after going to the lobby:
	now the strange figure is off-stage;
	continue the action.
	
after going to the upstairs hallway:
	if the black feather is off-stage:	
		now the cat is carrying the black feather;
		continue the action;
	otherwise:
		continue the action.

Every turn: 
	if the cat is comfortable and the cat is carrying the feather and the location of the cat is not the location of the player:    		
        		let the way be the best route from the location of the cat to the location of the player, using doors;
        		try the cat going the way;    		 
	otherwise if the cat is comfortable and the cat is carrying the feather and the location of the cat is the location of the player:    
        		say "[printed name of cat in sentence case] appears to be carrying a black feather in his mouth. He deposits the feather on the ground in front of you and stares up at you, seeking some kind of praise.";
		move the black feather to the location.


Chapter 6 - The Kitchen

South of the Lobby is a room called The Kitchen. It is in the indoors area. The description of the kitchen is "[if unvisited]You enter a food preparation area[otherwise]You are in the food preparation area[end if] towards the rear of the cottage. An iron-bake oven is here hung on a trammel over a fire pit. There is an old oak table in the centre of the room, and a cupboard against the far wall.[paragraph break]To the north is the lobby.[if unvisited][paragraph break]You hear a strange shuffling from upstairs."

The old oak table is scenery in the kitchen. The description of the old oak table is "An old oak table of sturdy build, the table is coated in a thin layer of dust."

The cupboard is scenery in the kitchen. The cupboard is a container. The cupboard is openable. The cupboard is closed. The cupboard is fixed in place. The description of the cupboard is "Whilst at some point the cupboard may have once been used to store various spices and root vegetables, it is presently bare save for a few cobwebs." 

instead of examining the cupboard when the cupboard is closed, say "The dusty wooden cupboard is currently closed."

The fire pit is scenery in the kitchen. "A small stone fire pit. There is no fuel in the pit at the moment, just cold, ashy remnants. You pick up a handful of the ash and let it fall through your clenched fist. It is very cold to the touch." Understand "firepit" as the fire pit.

The trammel is scenery in the kitchen. "A metal trammel supporting a cast-iron Dutch oven."

The oven is scenery in the kitchen. "A thick-walled cast iron cooking pot. The surface of the pot is ashy and burnt-looking. The pot is empty."


Chapter 7 - The Living Room

West of the Lobby is a room called The Living room. It is in the indoors area. The description of the living room is "[if unvisited]The living room, as with the rest of the cottage, is very sparsely furnished and ridden with dust and cobwebs. As you enter, your eye is caught by a crow at the window. The crow lets out a blood curdling screech and flies out of view.[otherwise]You are standing in the living room to the west of the cottage.[end if]"

The old desk is in the living room. The old desk is a supporter. The old desk is fixed in place. The description of the old desk is "The desk is long and coated in dust. Set into the rear of the desk is an inkwell."

The inkwell is scenery in the living room. "A small inkwell is set into the desk."

The piece of paper is on the old desk. The description of the piece of paper is "You lean over the desk to read the message:[paragraph break][fixed letter spacing]He hides away during the maelstrom, emerging only when he knows the landscape to be free from hazard. He wanders the fields, surveying the aftermath to amuse his curiosity. He greets the soldier as a friend, even though the two are strangers. The people still warm to him, though he claws at their humility only to stroke his wretched ego.[paragraph break]He offers meagre trifles, but he is not to be trusted. Damn him, he who is named _________________________. [variable letter spacing][paragraph break]At the foot of the paper is a dotted line, indicating that a word is missing." 

after examining the piece of paper for the second time:
	continue the action;
	say "It looks like you need to fill in the name."

Instead of taking the piece of paper, say "It is stuck to the table with some kind of adhesive, you could not remove it without destroying it in the process."

Writing is an action applying to one topic and one visible thing. Understand "Write [text] on [something]" and "Write [text] onto [something]" and "Write [text]" as writing.

Understand "Write [text]" as a mistake ("You should try writing something ON something...")

before writing some text:
	if the player is not carrying the black feather or the black feather is unidentified:
		say "You do not have anything to write with.";
		stop the action;	
	
after writing some text:	
	if the player is not in the living room:
		say "Graffiti is such a vulgar art.";
	otherwise:
		say "You dip your quill into the inkwell and write '[the topic understood]' onto the piece of paper, but after a few seconds the lettering slowly fades away."
		
after writing "George" when the player is in the living room:
	now the ominous door is unlocked;		
	say "As you finish writing, you hear a 'click' from upstairs, as if a door were being unlocked."

The wooden staircase is a staircase. It is above The Lobby and below The Upstairs Hallway. It is scenery. The description is "The staircase is old and rickety."	

Chapter 8 - The Upstairs Hallway

The Upstairs Hallway is in the indoors area. The description of the upstairs hallway is "[if unvisited]You climb the creaky staircase and emerge in a small hallway. There are no windows up here, but the dim light from downstairs reveals an ominous looking door to the north. Light also emanates from the edges of the door, as if the door leads directly out into the open air. You can just about see that something is etched onto the door.[paragraph break]As the creaking of the floorboards subsides, you realise that you can hear a slow, deep breathing. It appears to be coming from the other side of the door to the north.[otherwise]You are standing in the upstairs hallway of the cottage. The only exits are back downstairs and north towards a room at the front of the cottage.[end if]"

after printing the locale description of the upstairs hallway when the player is dormoused:
	say "As you stumble into the hallway, you feel an itch at the back of your soft sack-like head. Before you can react, a small dormouse drops past your eyes and makes a small thud on the floor, before scurrying off downstairs.";
	now the player is undormoused;
	continue the action.

The Ominous Door is a door. It is north from the upstairs hallway and south from The Bedroom. The ominous door is locked. The description of the ominous door is "A dusty timber door. Someone has etched the outline of a cat into the centre. The gap at the bottom of the door looks wide enough to see under." The ominous door is scenery. Understand "ominous door" or "timber door" or "dusty door" as the ominous door. 

Understand "Crack" or "Gap" as the ominous door.

Instead of knocking the ominous door when the ominous door is locked, say "You knock three times on the door, the sound echoes around the cottage and then all is quiet again. You realise that the breathing on the other side appears to have stopped. Your contemplation is suddenly interrupted by three very loud bangs, as if someone on the other side of the door was thumping against the wood with all of their might. The sound causes the whole cottage to vibrate.[paragraph break]After a few moments, the slow breathing resumes. You conclude that the only way you are getting through this door is to figure out how to unlock it. Perhaps you should explore the rest of the cottage for clues?"

Instead of attacking the ominous door, try knocking the ominous door.

Instead of listening to the ominous door when the ominous door is locked, say "You press your ear against the door, and can very clearly hear a deep, slow breathing on the other side. The breathing is very close, as if whoever is on the other side also has their ear against the door. Perhaps you can get their attention somehow?"

Instead of looking under the ominous door when the ominous door is locked, say "You put your head against the floor and peer under the crack at the base of the door. It is bright but you can make out two large shadows very close to the door. Are those feet? You can still hear the breathing, you consider whether listening to the door might help you identify the sound more clearly."

The outline is scenery in the upstairs hallway. "The outline of a cat, scored into the wood. It looks fairly fresh." Understand "cat outline" or "outline of cat" as the outline. 

Before opening or pushing or pulling the front door when the front door is locked:
	say "The door is locked tight. Strangely, there doesn't appear to be a keyhole.";
	stop the action.
		
Chapter 9 - The Bedroom

The Bedroom is a room. It is in the indoors area. The description of the bedroom is "[if unvisited]You hold your breath as you enter the room, and you find yourself alone.  The room[otherwise]The bedroom[end if] is as sparse and dusty as the rest of the cottage, a ramshackle bed frame is situated against the east wall next to an old dressing table, on which is a dusty mirror. Light pours through a large window on the far wall. The only exit is south to the hallway.[if unvisited][paragraph break]Whoever had occupied this room has clearly vacated - only a set of dusty footprints indicate that anyone was ever here.[end if]"

The bed is scenery in the bedroom. Understand "Bed frame" or "Frame" or "Ramshackle bed frame" as the bed. The description of the bed is "The frame is old and dilapidated. The bed is missing a mattress."

The window is scenery in the bedroom. The description of the window is "[if the player is unscarecrowed]Through the window you can see the barley field, and the pole where the scarecrow once stood.[otherwise]Through the window, you can see the pole where the scarecrow once stood. In his place, you can see a strange silhouette-like figure propped against the post. It is difficult to tell from this distance, but you think that the figure is staring at you. You feel a compulsion to go back downstairs and take a closer look."

The footprints are scenery in the bedroom. "The footprints indicate that whoever was here had been pacing back and forth between the window and the dressing table. A cluster of footprints is also visible just on the inside of the door." 

The dressing table is scenery in the bedroom. "The dressing table is old and worn." The dressing table is a supporter.

The mirror is scenery on the dressing table. The mirror is dusty.

Instead of rubbing the mirror:
	say "You wipe away the dust from the mirror.";
	now the mirror is undusty.

Instead of examining the mirror:
	if the mirror is dusty:
		say "The mirror is mounted on a bronze frame. You can not make out your reflection as the mirror is too dusty. Perhaps if you gave it a clean...";
	otherwise:
		do the big reveal.


to do the big reveal:
	now the note is off-stage;
	now the cat is off-stage;	
	now the scarecrow is spooky;
	now the player is scarecrowed;
	now the player is dormoused;
	say "As you stare into the glass of the mirror, you realise to your horror that visage staring back at you is that of a scarecrow. You jolt backwards only to see the scarecrow jolt identically. You bring your right hand up to your face, and once again your reflection reciprocates. You contemplate in disbelief that you are a mere facsimile of a man, a thing of straw and cloth. You stumble backwards and use the bed frame to support yourself.[paragraph break]As you correct yourself, you notice something out of the window."	


Chapter 10 - the end

Instead of going to the barley field when the player is scarecrowed:
	clear the screen;
	say "As you enter the barley field, you see that a wiry figure now stands in place of the scarecrow. As you approach, you realise that the figure, with its glossy black fur and long, sharp fingernails is  neither cat nor human but some kind of monstrous chimera. The creature's emerald eyes focus on you as you move closer towards it, following you as you draw closer. Around its neck hangs a battered wooden plank, upon which is written the name 'George'.[paragraph break]The cat, as you choose to perceive it, is smiling widely, revealing two yellowing fangs beneath brownish lips. He begins to speak;[paragraph break]'Well done, my fine fellow, well done' he laughs, 'Haha, nothing contributes so much to tranquillise the mind as a steady purpose! It wasn't easy but we bloody well did it didn't we! The enemy was nought but a pounder after all!'[paragraph break]The creature notices your confusion.[paragraph break]'I know, nothing is so painful to the human mind as a great and sudden change, but don't you see lad, it's over!' he spins his head around in almost a complete circle, gesturing to the surrounding landscape 'We won! You don't need to defend this land any more, you can return to your old life! Haha!'[paragraph break]George furrows his brow as he notices that you still don't quite understand what he is implying.[paragraph break]'Look' he continues 'There is little point in you resuming your station here, boy, these fields are no longer in need of defence!'[paragraph break]He is clearly losing his patience at your lack of response. His voice takes on a sudden stern-ness.[paragraph break]'I desire what is good. Therefore, everyone who does not agree with me is a traitor. It is good that you have done this service for your kingdom, but your services are no longer required and therefore it is good that you should return to your old life. Unless, that is, you disagree with me?[paragraph break]And with that, you feel the life drain out of you, and the a soggy hessian sack, coat,  boots, hat and trousers fall to the floor in a crumpled heap, splashing down unceremoniously into a puddle, in a field, in Suffolk.";
	pause the game;
	clear the screen;
	say "Thank you for playing [italic type]The Scarecrow[roman type]. It may be of interest to you that the letters scattered throughout the game are fragments from an actual letter from an un-named soldier to his father in the wake of Waterloo, which was published in the Caledonian Mercury on 3 July 1815.[paragraph break]In addition, the text is littered with quotes from Frankenstein as well as actual historical quotes (or, variations upon said quotes)[paragraph break]Finally, thank you to Laura, Matty P, Bennos, Holly and Gary for helping with the playtesting.";
	pause the game;
	end the story.
	