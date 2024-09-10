/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/

VAR time = 0 // 0 Morning, 1 Noon, 2 Night
VAR has_key = false
VAR boat_repaired = false
-> seashore

== seashore ==
You are sitting on the beach. The sun is shining down on you. It's currently { advance_time() }.


* [Wait]
    ~ advance_time()
    -> seashore
* [Explore further down the beach]
    -> beach2
* [Pick up shells]
    -> shells
* [Swim in the sea]
    -> swim
* [Build a sandcastle]
    -> sandcastle
* [Search for crabs]
    -> crabs

== beach2 ==
This is further down the beach. You see a small cave nearby and a boat washed ashore.

* [Move back up the beach]
    -> seashore
* [Investigate the cave]
    -> cave
* [Examine the boat]
    -> boat
* [Search for treasure]
~ has_key = true
    -> treasure


== shells ==
You pick up some beautiful shells and put them in your bag.
-> beach2

== swim ==
You enjoy a refreshing swim in the sea. The water feels cool and invigorating.
-> seashore

== sandcastle ==
You build an impressive sandcastle with turrets and moats. It looks majestic.
-> seashore

== crabs ==
You spot some crabs scuttling around. You carefully observe them.
* [Find a crab]
    -> crab
-> seashore

== crab ==
You find a particularly large crab. It seems to be guarding something.

* [Approach the crab]
    -> crab_approach
* [Leave it alone]
    -> seashore

== crab_approach ==
You approach the crab cautiously. It reveals a small key buried in the sand.
~ has_key = true
* [Take the key]
    -> seashore
* [Leave the key]
    -> seashore

== cave ==
You enter the cave. It's dark inside, but you find a small chest.

* [Open the chest]
    -> chest
* [Leave the cave]
    -> beach2

== chest ==
You open the chest and find a mysterious old map inside. It seems to show a hidden treasure on this beach.

* [Examine the map]
    -> examine_map
* [Leave the cave]
    -> beach2

== examine_map ==
The map shows a spot further down the beach where the treasure might be buried. It looks like you need to dig there.
-> beach2

== treasure ==
You dig at the marked spot and find a small treasure chest filled with coins and jewels!

* [Take the treasure]
    -> seashore
* [Leave the treasure]
    -> beach2

== boat ==
You examine the boat. It looks like it might be seaworthy if repaired.

* [Inspect the boat further]
    -> boat_repair
* [Leave the boat]
    -> beach2

== boat_repair ==
You find some tools and materials in the boat. You might be able to repair it.

* [Repair the boat]
    -> boat_ready
* [Leave the boat]
    -> beach2

== boat_ready ==
The boat is now repaired and ready to sail. You can now venture out to explore the sea.
~ boat_repaired = true
-> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time