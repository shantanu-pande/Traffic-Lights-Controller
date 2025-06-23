
# Traffic-Lights-Controller

Digital Hardware Description for four way crossing 

This project is the VHDL implementation of a state machine designed to control the traffic lights at a four-way intersection. The controller ensures smooth and safe traffic flow by managing the traffic light cycles according to the specified rules.

![four-way-intersection-image](https://github.com/shantanu-pande/Traffic-Lights-Controller/blob/main/images/Screenshot_3.png?raw=true)

#### Features

-  Controls four traffic signals at a four-way crossing.
-    The traffic light cycle: Red ⇒ Yellow ⇒ Green ⇒ Yellow ⇒ Red.
-   Transition from Red to Green is always through Yellow.
-    Ensures only one signal is green at a time.
-    Green light duration: 5 seconds.
-    Yellow light duration: 1 second.
-    Operates in a clockwise direction of traffic signals.
-   The hardware resets at all Yellow so the reset is safe and will not cause any confusion.
#### State machine

![state-machine](https://github.com/shantanu-pande/Traffic-Lights-Controller/blob/main/images/Screenshot_2.png?raw=true)

 The output is encoded as follows to get 8-bit output 
- R = 00
- Y = 01
- G = 10

| Current State | Next State | OUTPUT | (BIN) |
| ---   | --- | --- | --- |
| RST   | S0 | YYYY | 01 01 01 01 |
| S0	| S1 | GRRR | 10 00 00 00 |
| S1	| S2 | YYRR | 01 01 00 00 |
| S2	| S3 | RGRR | 00 10 00 00 |
| S3	| S4 | RYYR | 00 01 01 00 |
| S4	| S5 | RRGR | 00 00 10 00 |
| S5	| S6 | RRYY | 00 00 01 01 |
| S6	| S7 | RRRG | 00 00 01 01 |
| S7	| S0 | YRRY | 00 00 00 10 |

#### RTL view

![rtl-view](https://github.com/shantanu-pande/Traffic-Lights-Controller/blob/main/images/Screenshot_1.png?raw=true)

#### Simulation

![rtl-view](https://github.com/shantanu-pande/Traffic-Lights-Controller/blob/main/images/Screenshot_0.png?raw=true)
for simulation decrease the clock frequency as simulation runs on unit nano seconds*
## Authors

- [@shantanu-pande](https://www.github.com/shantanu-pande)

