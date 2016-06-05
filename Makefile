MCU = atmega16
OBJECTS =main.out spi.out screen.out pwm.out
OBJDIR = executables
VPATH = ./executables
all: upload.hex

upload.hex: upload.out
	avr-objcopy -j .text -j .data -O ihex upload.out upload.hex

%.out: %.c
	avr-gcc -mmcu=atmega16 -c -Os $< -o $@
	ar r update.a $@
	rm -f $@

upload.out: $(OBJECTS)
	avr-gcc -mmcu=atmega16 -Os -o upload.out $(OBJECTS)

flash: upload.hex
	sudo avrdude -c usbasp -p m16 -P USBasp -U flash:w:upload.hex

clean:
	rm -f *.out *.hex
