all: clean
	gcc rangefinder_hcsr04.c -o rangefinder_hcsr04 -Wall
	gcc rangefinder_gp2y.c -o rangefinder_gp2y -lwiringPi -lm -Wall
clean:
	rm -f rangefinder_gp2y
	rm -f rangefinder_hcsr04
