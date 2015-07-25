*corbitt'sHouse|The Haunting
[eval exp="f.VisitCH=1"]
[if exp="f.TCoCFall==1"]
[eval exp="f.HP=9"]
[else]
[eval exp="f.HP=10"]
[endif]
[eval exp="f.rate=25"]
[eval exp="f.daggerTimes=5"]
[eval exp="f.rateC=25"]
[eval exp="f.CTimes=5"]


@cm
@cl
@backlay
@fadeinbgm storage=PhantomfromSpace time=5000
[image storage=house page=back layer=base]
[trans method=crossfade time=1500]
@wt
@val
    The brick bungalow is overshadowed by taller, newer
@r
office buildings on either side. The house fronts the street.
@r
In the rear are overgrown plantings and a half-collapsed
@r
arbor. Access to the rear exists on either side of the
@r
residence.
@r
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"][l][r]
*moveOutside
@p
@backlay
[image storage=house page=back layer=base]
[trans method=crossfade time=1500]
@wt
Next...[r]
[link target=*exterior]Look around the exterior[endlink][r]
[link target=*ExamineWindows]Examine the ground floor windows[endlink][r]
[link target=*groundFloor]Go inside[endlink][r]
[link storage=script.ks target=*move]Leave[endlink][r]
[s]

*exterior
@p
    Studying the house, you are impressed by the way the
@r
house seems to withdraw into the shadows casted by
@r
flanking buildings, and how the blank curtained windows
@r
hide all understanding of what lies within.
[if exp="f.HSBook==1"]
 Although you can
@r
not find any reason for it, you sense something ominous
@r
lurking within the house.
[endif]
@jump target=*moveOutside

*ExamineWindows
@p
    Upon examination, you find that all the ground floor
@r
windows have been nailed shut from the inside.
@jump target=*moveOutside

*groundFloor
@p
    The front door is secured with a single lock. After
@r
unlocking the door, you notice four additional bolts on the
@r
inside of the door. All the bolts seem to have been added
@r
within the last year or two.
*GFloor
@p
@backlay
[image storage=GCorridor page=back layer=base]
[trans method=crossfade time=1500]
@wt
Where do you want to go?[r]
[link target=*Room1]Room 1[endlink][r]
[link target=*Room2]Room 2[endlink][r]
[link target=*Room3]Room 3[endlink][r]
[link target=*Room4]Room 4[endlink][r]
[link target=*Room5]Room 5[endlink][r]
[link target=*Room6]Room 6[endlink][r]
[link target=*upperFloor]Upper Floor[endlink][r]
[link target=*Basement]Basement[endlink][r]
[link target=*moveOutside]Leave[endlink][r]
[s]

*Room1
@p
@backlay
[image storage=Room1 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    A storage room, filled with boxes and such junk as rusted
@r
water tanks and old bicycles. At the end of the room is a
@r
cupboard, boarded shut. It looks like it will open with crowbar
@r
or something similar. 
@r
*CRoom1
@lr
[link target=*ExamineRoom1]Examine Room[endlink][r]
[link target=*cupboard]Examine the Cupboard[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom1
[if exp="f.crowbar==1"]
    You look through the boxes and do not find anything
@r
useful.
[else]
[eval exp="tf.ERoom1=intrandom(0,9)"]
[if exp="tf.ERoom1<5"]
@r
    You look through the boxes and do not find 
anything useful, but maybe if you look closer...
[else]
    Looking through the boxes you find a [font color=0xff0000]crowbar
[eval exp="f.crowbar=1"]
[endif]
[endif]
@p
@jump target=*CRoom1

*cupboard
[if exp="f.crowbar==1"]
@p
    Three bound books lie within the cupboard, the diaries of a
@r
certain W.Corbitt, a former inhabitant of the house, as the
@r
address on the flyleaf of volume one testifies.
@lr
@r
[link target=*ReadDiaries]Read the diaries[endlink][r]
[link target=*CRoom1]Leave[endlink][r]
[s]
[else]
@r
    You need a tool to open the cupboard.
@p
@jump target=*CRoom1

*ReadDiaries
@playse storage="FlipPage"
@p
    The entries are in plain English, though sometimes
@r
strangely put. Inside Corbitt writes about his various occult
@r
experiments, including summoning and other magic, and
@r
clearly describes the technique for Summon/Bind
@r
Dimensional Shambler.
@r
@jump target=*CRoom1


*Room2
@p
@backlay
[image storage=Room2 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    A storage room, mostly devoted to broken furniture and
@r
other item which might broken up to burn in a wood stove.
@lr
*CRoom2
@r
[link target=*ExamineRoom2]Examine Room[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom2
@p
    You do not find anything else of note.
@r
@jump target=*CRoom2

*Room3
@p
@backlay
[image storage=Room3 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    The mudroom, where hang overcoats, galoshes, hats and
@r
umbrellas. Several bags of coal for the living room's
@r
free-standing stove are here.
@lr
*CRoom3
@r
@r
[link target=*ExamineRoom3]Examine Room[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom3
@p
[eval exp="tf.ERoom3=intrandom(0,9)"]
[if exp="tf.ERoom3<5"]
    Nothing out of the ordinary, but maybe if you 
look closer...
[else]
    You notice the side door is secured with three bolts and
@r
two locks. It is strange...why is it fitted with so many locks?
[endif]
@jump target=*CRoom3

*Room4
@p
@backlay
[image storage=Room4 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    The living room. It contains conventional furnishings such
@r
as a radio, couch, stuffed chairs, and shelves laden with
@r
gew-gaws.
@lr
*CRoom4
@r
@r
[link target=*ExamineRoom4]Examine Room[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom4
@p
    A closer inspection of the room reveals an unusual
@r
quantity of crosses, images of the Virgin and other Catholic
@r
religious artifacts.
@jump target=*CRoom4


*Room5
@p
@backlay
[image storage=Room5 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    The dining room, complete with a long mahogany table, a
@r
built-in sideboard, and seven chairs. Three places are set,
@r
and unused. Rice soup rots in a tureen.
@lr
*CRoom5
@r
@r
[link target=*ExamineRoom5]Examine Room[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom5
@p
    You do not find anything else of note.
@jump target=*CRoom5


*Room6
@p
@backlay
[image storage=Room6 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    A conventional kitchen, with icebox, wood-fed stove and
@r
oven, and a meager larder. Some of the foodstuffs are
@r
edible yet -- there is canned soup and meat, rice, several
@r
pastas, a few bottles of homemade wine. The produce which
@r
did not spoil has been eaten by rats, judging by the spoor
@r
left behind.
@lr
*CRoom6
@r
@r
[link target=*ExamineRoom6]Examine Room[endlink][r]
[link target=*GFloor]Leave[endlink][r]
[s]

*ExamineRoom6
@p
    You do not find anything else of note.
@jump target=*CRoom6


*upperFloor
@p
@stopse
@stopse buf=1
@backlay
[image storage=UCorridor page=back layer=base]
[trans method=crossfade time=1500]
@wt
Where do you want to go?[r]
[link target=*URoom1]Room 1[endlink][r]
[link target=*URoom2]Room 2[endlink][r]
[link target=*URoom3]Room 3[endlink][r]
[link target=*URoom4]Room 4[endlink][r]
[link target=*GFloor]Ground Floor[endlink][r]
[s]

*URoom1
@p
@backlay
[image storage=URoom1 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    An ordinary bedroom, with a double bed, bookshelf, and
@r
window view, apparently the room of Vittorio and Gabriela.
@r
More crosses are here, and a rosary and breviary rest on a
@r
table beside the bed.	
@lr
*CURoom1
@r
@r
[link target=*ExamineURoom1]Examine Room[endlink][r]
[link target=*upperFloor]Leave[endlink][r]
[s]

*ExamineURoom1
@p
    You do not find anything else of note.
@jump target=*CURoom1


*URoom2
@p
@backlay
[image storage=URoom2 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    Two small beds, toys, dressers, and pictures of aircraft
and cowboys mark this as the children's bedroom.
@lr
*CURoom2
@r
@r
[link target=*ExamineURoom2]Examine Room[endlink][r]
[link target=*upperFloor]Leave[endlink][r]
[s]

*ExamineURoom2
@p
    You do not find anything else of note.
@jump target=*CURoom2

*URoom3
@p
@backlay
[image storage=URoom3 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    Another bedroom. It contains a bed frame, bare bed
@r
springs, and an empty dresser. Though unused, this room
@r
looks like the other two bedrooms. You feel a sinister
@r
presence emanating from the entire room.
@lr
*CURoom3
@r
@r
[link target=*ExamineURoom3]Examine Room[endlink][r]
[link target=*upperFloor]Leave[endlink][r]
[s]

*ExamineURoom3
@p
    A faint, unpleasant smell seems to linger in 
the room.
[if exp="f.HSBook==1"]
@lr
[eval exp="tf.EURoom3=intrandom(0,99)"]
[if exp="tf.EURoom3<f.rate"]
[eval exp="tf.Description=intrandom(0,3)"]
[if exp="tf.Description==0"]
@playse storage="hammer" buf=0 loop=true
@playse storage="noise" buf=1 loop=true
    Loud thumping noises emanate from the entire room and
@r
seem to resonate through the entire house.
[elsif exp="tf.Description==1"]
    [font color=0xff0000]A pool of blood forms on the floor.[font color=0xffffff]
[elsif exp="tf.Description==2"]
    [font color=0xff0000]Blood drips down from the ceiling and walls.[font color=0xffffff]
[else]
@playse storage="thud"
    The bed moves across the room at incredible speed,
@r
emitting a loud 'thud' as it strikes the opposite wall.
[endif]
@r
[eval exp="tf.hear=intrandom(10,90)"]
[if exp="tf.hear<f.rate"]
    You hear a rattling, scratching sound coming from the
@r
windowpane.
@r
[link target=*ChecktheWindow]Check the window[endlink][r]
[link target=*CURoom3]Leave[endlink][r]
[s]
[endif]
[endif]
[eval exp="f.rate=f.rate+5"]
@jump target=*CURoom3
[else]
@jump target=*CURoom3
[endif]

*ChecktheWindow
@p
@playse storage=thud
@playse storage=Collapse
@p
    You approach the window. Suddenly you hear the bed
@r
moving behind you. Before you can react the bed hits you
@r
and you go flying through the window.
@p
@jump storage="endding.ks" target=*DeadEndding


*URoom4
@p
@backlay
[image storage=bathroom page=back layer=base]
[trans method=crossfade time=1500]
@wt
    A bathroom. It contains a sink, bathtub, and a water closet
@r
with an overhead tank. Towels and other possessions are
@r
still here, typical to a family of four. A brackish pool of water
@r
has collected in the bathtub, fed by a dripping faucet which
@r
cannot quite be closed.
@lr
*CURoom4
@r
@r
[link target=*ExamineURoom4]Examine Room[endlink][r]
[link target=*upperFloor]Leave[endlink][r]
[s]

*ExamineURoom4
@p
    You do not find anything else of note.
@jump target=*CURoom4


*Basement
@p
    The door to the basement has a lock and three bolts, able
@r
to open from the upstairs side only. Below is the main
@r
basement storage room. The stairs are in poor repair, and
@r
the electricity to the basement has been turned off.
@lr
[link target=*Stairs]Go down the stairs[endlink][r]
[link target=*GFloor]Ground Floor[endlink][r]
[s]

*Stairs
[eval exp="tf.Stairs=intrandom(0,9)"]
[if exp="tf.Stairs<3"]
@playse storage=Collapse
@p
    As you make your way down the stairs, you accidentally
@r
trip and go tumbling down the stairs.[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"]
@p
[else]
@p
    You make your way down the stairs into the basement.
@p
[endif]
@backlay
@fadeinbgm storage=Animate time=5000
[image storage=BRoom1 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    A smallish room, scattered tools, pipe, lumber, nails,
@r
screws, and so forth. The side walls are of brick. The wall
@r
opposite the stairs is of wood.
@lr
*BFloor
@backlay
[image storage=BRoom1 page=back layer=base]
[trans method=crossfade time=1500]
@wt
@r
[if exp="f.findDagger==1 && f.daggerTimes!=0"]
@p
@playse storage="whiz"
    The dagger shoots out of your hand and floats in mid-air.
@jump target=*DaggerFight
[endif]
@p
Next...[r]
[link target=*ERubbish]Examine a pile of rubbish[endlink][r]
[link target=*EWoodWall]Examine the wall made of wood[endlink][r]
[link target=*BRoom2]Go to Room2 Under the stairs[endlink][r]
[if exp="f.BRoom3==1"]
[r]
[link target=*BRoom3]Go to Room3[endlink][r]
[endif]
[r]
[link target=*GFloor]Back to Ground Floor[endlink][r]
[s]

*ERubbish
@p
[if exp="f.HSBook==1 && f.daggerTimes!=0"]
[eval exp="tf.dagger=intrandom(0,9)"]
[if exp="tf.dagger<5"]
    Looking through a pile of rubbish you discover an old knife
@r
with an ornate hilt whose blade is coated with oddly-thick
@r
rust. This is Corbitt's magic dagger! The rust is actually the
@r
dried blood of his victims.
@lr
@playse storage="whiz"
    The dagger shoots out of your hand and floats in mid-air.
[else]
    You feel that something important is hidden in the room,
@r
but you can not seem to find anything. Maybe if you look
@r
harder...
@lr
@playse storage="whiz"
    A dagger suddenly rises from a pile of rubbish and floats in
@r
mid-air. Before you can react it slashes your hand.
@r
    It is an old knife with an ornate hilt whose blade is coated
@r
with oddly-thick rust. This is Corbitt's magic dagger! The rust
@r
is actually the dried blood of his victims.
[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"][font color=0xffffff]
[endif]
[eval exp="f.daggerTimes=f.daggerTimes-1"]
[eval exp="f.findDagger=1"]
*DaggerFight
@lr
@r
[link target=*Parry]Parry knife with a garbage can lid[endlink][r]
[link target=*Grab]Grab the knife[endlink][r]
[link target=*EWoodWall]Examine the wall made of wood[endlink][r]
[link target=*BRoom2]Go to Room2 Under the stairs[endlink][r]
[link target=*GFloor]Back to Ground Floor[endlink][r]
[s]

[elsif exp="f.daggerTimes==0"]
    The dagger drop down, looks cannot move again.
@p
@jump target=*BFloor
[else]
    You feel that something important is hidden in the room,
@r
but you can not seem to find anything.
@jump target=*BFloor
[endif]

*Parry
@p
[eval exp="tf.parry=intrandom(0,9)"]
[if exp="tf.parry<3"]
@playse storage="whiz"
@playse storage="thud"
    Success! You knock the knife from the air and it falls with a
@r
soft 'clink' to the floor.
@p
[eval exp="f.daggerTimes=f.daggerTimes-1"]
[else]
@playse storage="whiz"
    You fail to stop the knife's attack as it slices your arm.
@r
[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
[eval exp="f.daggerTimes=f.daggerTimes-1"]
[endif]
@jump target=*BFloor

*Grab
@p
[eval exp="tf.grab=intrandom(0,9)"]
[if exp="tf.parry<3"]
@playse storage="whiz"
    Success! You wretch the knife from the air and it lays limp
@r
in your hands.
@p
[eval exp="f.daggerTimes=0"]
[else]
@playse storage="whiz"
    You fail to stop the knife's attack as it slices your hands.
@r
[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
[eval exp="f.daggerTimes=f.daggerTimes-1"]
[endif]
@jump target=*BFloor

*EWoodWall
@p
    The wall is made of closely fitted boards.
@lr
[if exp="f.HSBook==1"]
[if exp="f.daggerTimes!=0"]
[if exp="f.findDagger==1"]
@playse storage="whiz"
    The dagger suddenly rises from a pile of rubbish and floats
@r
in mid-air. Before you can react it slashes your hand.
[else]
@playse storage="whiz"
    A dagger suddenly rises from a pile of rubbish and floats
@r
in mid-air. Before you can react it slashes your hand.
@r
    It is an old knife with an ornate hilt whose blade is coated
@r
with oddly-thick rust. This is Corbitt's magic dagger! The rust
@r
is actually the dried blood of his victims.
[eval exp="f.findDagger=1"]
[endif]
[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"][font color=0xffffff]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
[eval exp="f.daggerTimes=f.daggerTimes-1"]
@lr
[endif]
    The wall looks like they can be removed.
@lr
[link target=*RemoveWall]Remove the boards with crowbar[endlink][r]
[link target=*BFloor]Leave[endlink][r]
[s]
[else]
@jump targrt=*BFloor
[endif]

*RemoveWall
[if exp="f.crowbar==1"]
@p
    After the boards are removed, a crawl space is visible
@r
between two wooden walls.
[eval exp="f.BRoom3=1"]
@jump target=*BRoom3
[else]
@p
    You need a tool.
@r
@jump target=*BFloor


*BRoom2
@p
@backlay
[image storage=BRoom2 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    The room under the stairs, the walls are made of wood. An
@r
empty storage bin, once intended for coal. The door to the
@r
outside coal chute has been nailed shut firmly.
@lr
*CBRoom2
@r
@r
[link target=*ExamineBRoom2]Examine Room[endlink][r]
[link target=*BFloor]Leave[endlink][r]
[s]

*ExamineBRoom2
@p
    You do not find anything else of note.
@jump target=*CBRoom2


*BRoom3
@p
@backlay
[image storage=BRoom3 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    Foul odors emanate from the rats who nest here.
@lr
@r
[link target=*LetRatsEscape]Let the rats escape[endlink][r]
[link target=*KeepMoving]Keep moving forward[endlink][r]
[link target=*BFloor]Leave[endlink][r]
[s]

*LetRatsEscape
@p
    You step aside as the rats escape the crawl space.
@jump target=*Crawlspace

*KeepMoving
@p
    You keep moving forward, but wince a little as 
the rats nip at your feet.[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"][font color=0xffffff]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
@jump target=*Crawlspace

*Crawlspace
@lr
[link target=*ECrawlspace]Examine Crawlspace[endlink][r]
[if exp="f.BRoom4==1"]
[link target=*BRoom4]Enter the room (WARNING: There is no turning back!)[endlink][r]
[endif]
[r]
[link target=*BFloor]Leave[endlink][r]
[s]

*ECrawlspace
@p
[eval exp="tf.CSearch=intrandom(0,9)"]
[if exp="tf.CSearch<5"]
    Carved into the inner wall are irregular words "Chapel of
@r
Contemplation". You break the wall revealing a massive,
@r
hidden room.
[eval exp="f.BRoom4=1"]
@jump target=*Crawlspace
[else]
    Carved into the inner wall are irregular, scratchy words.
@r
Perhaps a closer look will reveal what the words are...
@jump target=*Crawlspace

*BRoom4
@p
@backlay
@fadeinbgm storage=HeroicAge time=5000
[image storage=BRoom4 page=back layer=base]
[trans method=crossfade time=1500]
@wt
    This is Corbitt's hiding place. He lies motionless and
@r
seemingly dead on a pallet in the center of the room. The
@r
floor is earthen and there is a table in the southwest corner
@r
with some curled papers on it.
*CBRoom4
@p
[link target=*EBody]Examine Walter Corbitt's body[endlink][r]
[link target=*ETable]Examine the table[endlink][r]
[link storage="endding.ks" target=*endding]Leave the house and report to Marina[endlink][r]
[s]

*EBody
@p
    Corbitt is drawn, wooden-looking, a wizened figure of
@r
some six feet, skinny and naked, with ghastly flaring,
@r
saucer-like eyes and a nose like a knife blade. There is a
@r
black gem fastened on a chain. From him comes a sharp,
@r
sweet, churning scent, like rotten corn. He does not breath
@r
at all.
@lr
[eval exp="tf.EBRoom4=intrandom(0,99)"]
[if exp="tf.EBRoom4<f.rateC"]
[eval exp="tf.CDescription=intrandom(0,3)"]
[if exp="tf.CDescription==0"]
@playse storage="growl"
    You hear an animal-like growl coming from Corbitt.
[elsif exp="tf.CDescription==1"]
@playse storage="screech"
    A loud screech comes from Corbitt.
[elsif exp="tf.CDescription==2"]
@playse storage="cackle"
    A loud cackle, that reverberates around the room, comes
@r
from Corbitt.
[else]
@playse storage="mumbling"
    You hear a low mumbling coming from Corbitt. Although you cannot understand it, you feel he is mocking you.
[endif]
@r
[eval exp="tf.Corbitt=intrandom(10,99)"]
[if exp="tf.Corbitt<f.rateC"]
    Corbitt's body starts to shake. He suddenly shoots up from
@r
the pallet. His eyes open wide, revealing a set of completely
@r
red eyes. He lunges for you!
@fg layer=0 storage=Corbitt t=0 l=200 time=250
@jump target=*FinalFight
[endif]
[endif]
[eval exp="f.rateC=f.rateC+5"]
@jump target=*CBRoom4


*ETable
@p
    The curled papers crumble to dust when you touch them.
@r
The remaining paper seems to be a horoscope.
@jump target=*CBRoom4


*FinalFight
@p
[eval exp="f.round=6-f.CTimes"]
Round [emb exp="f.round"][r]
[link target=*Attack]Attack[endlink][r]
[link target=*Defend]Defend[endlink][r]
[link target=*RunAway]Run Away[endlink][r]
[link target=*gem]Try to take the black gem[endlink][r]
[s]

*Attack
@p
[eval exp="tf.Attack=intrandom(0,9)"]
[if exp="f.daggerTimes==0 && tf.Attack<5"]
@playse storage="thud"
    You stab Corbitt with his knife!A chunk of his body falls off.
[eval exp="f.CTimes=0"]
[elsif exp="tf.Attack<3"]
@playse storage="thud"
    You manage to stab Corbitt. A chunk of his body falls off!
[eval exp="f.CTimes=0"]
[else]
@playse storage="cackle"
    You try to stab Corbitt, but are stopped by an invisible
@r
force.[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
[eval exp="f.CTimes=f.CTimes-1"]
[endif]
[if exp="f.CTimes==0"]
@jump target=*win
[else]
@jump target=*FinalFight
[endif]

*Defend
@p
[eval exp="tf.Defend=intrandom(0,9)"]
[if exp="tf.Defend<5"]
@playse storage="thud"
    You managed to dodge Corbitt's attack.
[else]
@playse storage="cackle"
    Your defense fails. Corbitt manages to attack you.
[font color=0xff0000] HP-1[font color=0xffffff]
[eval exp="f.HP=f.HP-1"]
@r
Now HP is: [font color=0xff0000][emb exp="f.HP"]
[if exp="f.HP==0"]
@jump storage="endding.ks" target=*DeadEndding
[endif]
[endif]
[eval exp="f.CTimes=f.CTimes-1"]
@jump target=*FinalFight

*RunAway
@p
[eval exp="tf.RunAway=intrandom(0,9)"]
[if exp="tf.RunAway<5"]
@jump storage="endding.ks" target=*NormalEnding
[else]
@playse storage="cackle"
    You try to make a run for it, but Corbitt blocks 
your escape.
@jump target=*FinalFight

*gem
@p
[if exp="f.HP>5"]
    You try to reach for the gem but pull back when a growl
@r
emits from Corbitt's body.
@jump target=*FinalFight
[elsif exp="f.HP<3"]
@playse storage="cackle"
    You try to reach for the gem but a sudden irritation in your
@r
forehead stops you. You feel you mind becoming clouded.
@r
You take the knife in your hand and plunge it down your
@r
throat in an attempt to swallow it.
@p
@jump storage="endding.ks" target=*DeadEndding
[else]
@playse storage="cackle"
    You try to reach for the gem but a sudden irritation in your
@r
forehead stops you. You drop the knife and clutch your head
@r
as the irritation grows. You feel yourself fading...
@p
@jump storage="endding.ks" target=*BadEndding
[endif]


*win
@p
@playse storage="screech"
    You manage to bring the knife down into Corbitt's chest.
@r
He let's out a loud, inhuman scream as he crumbles into ash.
@r
You bend down and retrieve the black gem from Corbitt's
@r
ashes. It dissolves in your hands.
@lr
@jump storage="endding.ks" target=*GoodEndding
