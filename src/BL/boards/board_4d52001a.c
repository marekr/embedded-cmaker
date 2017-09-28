/*
 * board_mbitrusb_init.c
 *
 * Created: 2/13/2015 9:30:18 PM
 *  Author: Marek
 */
#include <asf.h>
#include <board.h>
#include <conf_board.h>

#if defined(__GNUC__)
void board_init(void) WEAK __attribute__((alias("system_board_init")));
#elif defined(__ICCARM__)
void board_init(void);
#  pragma weak board_init=system_board_init
#endif

void system_board_init(void)
{
	struct port_config pin_conf;
	port_get_config_defaults(&pin_conf);
	
	/* LEDs */
	pin_conf.direction = PORT_PIN_DIR_OUTPUT;
	
	port_pin_set_config(LED0_RED_PIN, &pin_conf);
	port_pin_set_output_level(LED0_RED_PIN, LED_INACTIVE);
	port_pin_set_config(LED0_GREEN_PIN, &pin_conf);
	port_pin_set_output_level(LED0_GREEN_PIN, LED_INACTIVE);

	/* Setup the interrupt input pins */
	port_get_config_defaults(&pin_conf);
	pin_conf.input_pull = PORT_PIN_PULL_UP;
	pin_conf.direction  = PORT_PIN_DIR_INPUT;
	port_pin_set_config(PUSHBUTTON_PIN, &pin_conf);
}