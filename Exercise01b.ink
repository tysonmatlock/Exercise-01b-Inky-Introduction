/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices / *
 - Knot structure / ==
 - Recurring choices / +
 - Conditionals in descriptions /
 - Conditionals in choices /
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth == 
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} There are tunnels that extend to the east and west. There is a glimmer of light at the end of the west tunnel.
+ [Take the east tunnel.] -> east_tunnel
+ [Take the west tunnel.] -> west_tunnel
* [Pick up the torch.] -> torch_pickup 

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go back.] -> cave_mouth
-> END

== west_tunnel == 
You are in the west tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light torch] -> west_tunnel_lit
+ [Go back.] -> cave_mouth
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Continue] -> cave_mouth
-> END

== east_tunnel_lit == 
You arrive at the end of the tunnel where it splits in two directions. On the right, you can hear the sounds of a waterfall. On the left, you hear nothing.
+ [Go right.] -> east_tunnel_right
+ [Go left.] -> east_tunnel_left
-> END 

== west_tunnel_lit == 
You arrive at the end of tunnel and find a dead end. {not key_pickup:There is an old key lying on the ground.}
+ [Go back] -> cave_mouth_2
+ [Take a closer look] -> key_pickup
-> END

== west_tunnel_lit_2 ==
You arrive at the end of the tunnel and find a dead end.
+ [Turn around and go back] -> cave_mouth_2
* {key_pickup} [Put the key in your pocket and continue back the way you came.] -> cave_mouth_2


== key_pickup ==
What's this thing for?
* [Continue] -> west_tunnel_lit_2
-> END

== cave_mouth_2 ==
You arrive back to the entrance of the cave.
+ [Take the east tunnel.] -> east_tunnel_lit

== east_tunnel_right == 
The tunnel expands into a giant cavern, waterfalls on both sides of you, with a sketchy rope bridge stretching to the other side.
+ [Cross the bridge] -> final_room
+ [Go back] -> east_tunnel_lit


== east_tunnel_left == 
The tunnel starts getting smaller and smaller, and eventually becomes to small for you to explore.
+ [Turn around and go back.] -> east_tunnel_lit_2

== final_room ==
You enter a small room covered in paintings. There is two chests beside one another. An inscription on the wall tells you that the key can only open one chest. Which one will you choose?
+ [The left chest] -> left_chest
+ [The right chest] -> right_chest
-> END

== east_tunnel_lit_2 ==
You are back where you started.
+ [Continue down the other direction.] -> east_tunnel_right

== left_chest ==
Wrong one. Your journey was for nothing. Right is always right.
-> END

== right_chest ==
Excellent choice. The world is now yours.
-> END

