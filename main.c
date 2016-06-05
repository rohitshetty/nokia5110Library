#define F_CPU 12000000UL
#include<avr/io.h>
#include<util/delay.h>
#include<avr/pgmspace.h>
#include "screen.h"


void main(){
	int i;
	screen_init(); 
	render_sentence_xy("Hello there \0",15,2);
	_delay_ms(1000);

	while(1){
		for(i=32;i<126;i++){
			screen_clear();
			set_cursor_bank(42,2);
			render_char(i);
			_delay_ms(500);
		}
	}

}


