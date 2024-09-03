/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
--> home

== home ==
You wake up on your 18th brithday and head to the naval register to join the war vs Japan 
+ [Head to your car] -> car
* {not key_pickup}[Search the room] -> key_pickup
* {key_pickup} [Search the room again] -> kept_searching

== key_pickup ==
You searched your room and found your keys
* [Keep searching] -> kept_searching
+ [Head to your car] -> car

== kept_searching ==
You found your pilot licence
* [Head to your car] -> car

== car ==
{not key_pickup: You left your keys in your house}
{key_pickup: Time to head to the naval register}
+ [Go back] -> home
* {key_pickup} [Head to the naval register]
-> ship_choice

== ship_choice ==
You are at the naval register and the person in charge of assigning you to a ship asks you for your choice between three ships
+ [Pick the escort carrier] -> CVE_intro
+ [Pick the destoryer] -> DD_intro
+ [Pick the destoryer escort] -> DDE_intro

== CVE_intro ==
A CVE is a mass produced carrier meant to help deal with enemy subs with the use of planes armed with depth charges or provide some air support for landing troops. 
* [Sign on as aircraft maintenance technician] -> CVE_crew
* {kept_searching}[Sign on as a pilot] -> CVE_pilot
+ [Pick a different ship] -> ship_choice

== CVE_pilot ==
You join the squadron on USS St. Lo
-> END

== CVE_crew ==
You join the crew of USS St.Lo
-> END

== DD_intro ==
A destoryer is capable of damaging any ship with its torpedoes and is armed with depth charges to fight enemy subs and its main guns are duel purpose to fight aircraft and lighter ships.  
+ [Sign on as a gunner] -> DD_gunner
+ [Pick a different ship] -> ship_choice

== DD_gunner ==
You join the crew of USS Johnston
-> END

== DDE_intro ==
A destoryer escort is also known as a tincan with its main purpose is to protect other ships from subs using depth charges.
+ [sign on as an AA gunner] -> DDE_AA
+ [Pick a different ship] -> ship_choice

== DDE_AA ==
You join the crew of USS Samuel B. Roberts
-> END


