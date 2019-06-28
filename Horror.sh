#!/bin/bash

#This is the script for The Horror, A Text-based Adventure game with a simple premise, get as far as possible & reach the end


#These are the locations of the player at each point, each act adds to the Array to move through the array
# Go North
ACT_north()
{
  Room=$(($Room - 1))
}

# Go South
ACT_south()
{
  Room=$(($Room + 1))
}
# Go East
ACT_east()
{
  Room=$(($Room + 1))
}
# Go West
ACT_west()
{
  Room=$(($Room + 2))
}

# Go West,Rest
ACT_door()
{
  Room=$(($Room + 1))
}

# Through Door, foyer of mansion, head upstairs to the left
ACT_left()
{
  Room=$(($Room + 1))
}

#Right Stairs but die
ACT_right()
{
  Room=$(($Room + 2))
}

#Go to movie, you fall through the movie
ACT_forward()
{
  Room=$(($Room + 2))
}

#Go to projector room, ripped to shreads
ACT_room()
{
  Room=$(($Room + 3))
}

#Run away and survive
ACT_run()
{
  LOC=$(($LOC - 1))
}

#Stare at the great other
ACT_stare()
{
  Room=$(($Room + 3))
}
#After Kneeling
ACT_kneel()
{
  Room=$(($Room + 1))
}

#Give up
ACT_surrender()
{
  Room=$(($Room + 1))
}

ACT_slap()
{
  Room=$(($Room + 2))
}

ACT_ladder()
{
  Room=$(($Room + 1))
}

ACT_gateway()
{
  Room=$(($Room + 2))
}


ACT_Door()
{
  Room=$(($Room - 10))
}


ACT_lock()
{
  Room=$(($Room + 1))
}


ACT_break()
{
  Room=$(($Room + 2))
}



#Loc_TXT/LOC_ACT is the text created for the Game and the Act for each location/Room, Each act adds to the Array which is how the game progressess/Degressess depending on the choice that is made
Room_TXT[0]="You touch the door and have visions of what is to come, The Great Other is here & you are its play thing, you have a heart attack & die"
Room_ACTS[0]=""
Room_TXT[1]="You are adventuring in a cave for no particular reason \nYou find yourself lost in the cave with only four directions you can take\nYou can head north through an ominus door, or south to head further into the cave with an obvious trap in the way. You can travel East with only darkness infront of you. You can travel West where a dim light seems to be pulsing in the dark"
Room_ACTS[1]="north,south,east,west"
Room_TXT[2]="Stumbling around in the dark cave trying to avoid obvious traps, you trip and & fall down a hole & break your neck on the way down\nWoops"
Room_ACTS[2]=""
Room_TXT[3]="You Travel West towards the bright light that gets smaller the further you walk \nyou are so entranced in the bright light that when you snap out of it you realise it you stop & find yourself in the same crossroad with only the ominus door in front of you\nMaybe you shouldn't go that way"
Room_ACTS[3]="door"
Room_TXT[4]="You head through to the door & see an red glow start to leek through the small opening as you open the door \n you feel dread as you pull the door open & step through only to have a bright light flash and blind you \n when you are finally able to see again you find yourself in the foyer of a decrepid mansion \nThe walls crumbling & molding, the ceiling has holes where you can see only darkness\nYou look around & find two sets of stairs with every other entrance blocked by piles of ruble\n Do you take the stairs on the left or the right"
Room_ACTS[4]="left,right"
Room_TXT[5]="As soon as you reach the top of the stairs both stairways collapse, you head through the door & find that it is the entrance of a in home movie theater\n The movie being projected on the wall at the far end of the room doesnt look like anything you've seen before\n You can head towards the movie or go right towards what looks like the entrance to the projector room"
Room_ACTS[5]="forward,room"
Room_TXT[6]="Halfway up the stairs you fall & die, it was 50/50 eitherway 'Thats stupid' you think as you fall into the darkness & die to something horrible in the dark"
Room_ACTS[6]=""
Room_TXT[7]="You go towards the movie projection, you dont notice that most of the seats in the room are suddenly full with silhouettes of people with a dark red glow where their eyes are & a toothy grin filled with razor sharp teeth\nYou are so focused on the projection showing something you cant queite understand, as you walk up to the projection the space around you shifts & you are pulled into the projection.\nYou find yourself in a void at the bottom of a large throne of ancient rock, you lift your head and you stare at the being sitting on that throne..."
Room_ACTS[7]="stare"
Room_TXT[8]="You head to the projector room, you notice silhouettes of people start to fill the seats around you, you panic and sprint to the projector door\nYou rip the door open & see a fish-like person manning the projector, you blink & then you are tackled & ripped to shreads by the mob of silhouettes"
Room_ACTS[8]=""
Room_TXT[9]=""
Room_ACTS[9]=""
Room_TXT[10]="You stare at the great other, The name appears in your mind, did you honestly think you could win against a lovecrafitan horror\nYou should kneel and maybe your suffering will end"
Room_ACTS[10]="kneel"
Room_TXT[11]="Your vision fails you and you are given the chance to surrender"
Room_ACTS[11]="surrender"
Room_TXT[12]="Are you sure you wish to surrender, this is merely the begining of your suffering"
Room_ACTS[12]="surrender,slap"
Room_TXT[13]="You wake up from your nightmare\nGood job"
Room_ACTS[13]=""
Room_TXT[14]="You slap yourself & stand up to start moving forward through this nightmare, the crossroad cave is different when you look around, you see that the walls are made of flesh & seems to be pulsing\nYou see a fleshy gateway down a long hallway, A ladder made of the same flesh, you also see the same door as before"
Room_ACTS[14]="gateway,ladder,Door"
Room_TXT[15]="You head up the ladder, and are beheaded by some monster waiting for you"
Room_ACTS[15]=""
Room_TXT[16]="You head down the long hallway, every step feeling more & more discusing as the floor is squishy, parts of the ceiling ooze onto you & the large cate way is made out of bones\nOnce you reach the gateway you see through the cracks in the bone gateway to see what can only be described as Eden\nYou see the only way to unlock this gate is to reach inside the lock that is conveniantly the perfect size for your arm\nOr you could try breaking through the cracks"
Room_ACTS[16]="lock,break"
Room_TXT[17]="You stick your arm in the lock & it is torn to pieces, you die from bloodloss & shock, What did you expect by putting your arm in an arm sized lock on a bone gateway in a hallway made of flesh"
Room_ACTS[17]=""
Room_TXT[18]="You spend days beating your fists at the cracks in the gate, you break your hands so you use your feet, on the first kick after what feels like an eternity you manage your way through and crawl through the opening you've made/nYou are so happy you've made through whatever insanity that was and you look around at this eden, the lush green fields & trees is such a sight you fall to your knees and look up at the sky in releif\nOnly to see 'The Great Other' & Other Monsterus faces taring at you from the sky\n'This is the End Plaything'"
Room_ACTS[18]=""

#Main Loop with Room Starting at 1
Room=1
while [ true ]; do
  echo -e "${Room_TXT[$Room]}"
  echo ""
  #Defining the Legal Acts
  LEGAL_ACTS=$(echo "${Room_ACTS[$Room]}" | sed 's|,|\n|g')
  if [ -z "$LEGAL_ACTS" ]; then
    break
  fi
  #Read the avaible actions from the location and get the user to input one of hte legal acts
  echo "Hint - Available actions:"
  while read -r Room_ACT; do
    echo -e "\t${Room_ACT}  ${ACT[$Room_ACT]}"
  done < <(echo "${LEGAL_ACTS}")
  echo -n "What do you want to do? "
  read ACT_INPUT
  #If the Input From user is not one of the given Legal Act
  if [ -z "$(echo "$LEGAL_ACTS" | grep "^${ACT_INPUT}$")" ]; then
    echo "That is not a valid action, The Great Other Damands Correct Input From Users"
    continue
  fi
  ACT_${ACT_INPUT}
done
