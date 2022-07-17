#include "pico/stdlib.h"
#include <stdbool.h>

const unsigned int LED_PIN = 25;

int main() {

    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    while (true) {
        gpio_put(LED_PIN, true);
        sleep_ms(1000);
        gpio_put(LED_PIN, false);
        sleep_ms(1000);

    }
}
