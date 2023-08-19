#include "ultrasonic.h"
#include "lcd.h"
#include "common_macros.h"





int main(int argc, char **argv) {
	uint16 distance=0;

	Ultrasonic_init();
	LCD_init();
	LCD_displayString("Distance =    cm");

while(1){
	distance=Ultrasonic_readDistance();

	/*to make sure to delete in unwanted digit
	 * example :	100==>99
	 * without it 	100==>990  */
	if(distance<10){
	LCD_moveCursor(0, 11);
	LCD_intgerToString(distance);
	LCD_displayString("  ");
	}
	else if(distance<100){
		LCD_moveCursor(0, 11);
		LCD_intgerToString(distance);
		LCD_displayString(" ");
		}
	else{
		LCD_moveCursor(0, 11);
		LCD_intgerToString(distance);
	}

}
}
