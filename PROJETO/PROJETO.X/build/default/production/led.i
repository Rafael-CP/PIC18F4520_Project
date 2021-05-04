# 1 "led.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "led.c" 2








void configuraLed(void){
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xF83) = 0xFF;
}

void ligarLedVet(char num){
    (*(volatile __near unsigned char*)0xF83) = num;
}

void inverteLed(char num){
    (*(volatile __near unsigned char*)0xF83) ^= (1 << num);
}

void desligarLedVet(char num){
    (*(volatile __near unsigned char*)0xF83) = ~num;
}
