# nokia5110Library
Atmega16/32 library for nokia 5110 screen

This is a library for nokia 5110 monochromatic screen. This screen uses SPI interface. 
pin mapping is as follows 

```SCREEN PORT  => PORTB ```

```RESET PIN    => PB1```

```DATA/~CMD    => PB0```

```CHIP SELECT  => PB4```

```MOSI(OR DIN) => PB5```

```SCK          => PB7 ```

To use the library include ```screen.h``` and use ```screen_init()``` . 

For more details check main.c 

```make all``` creates the hex


```make flash``` uploads the hex into the uc

Currently only text interface is working. 

TODO: Graphical library
