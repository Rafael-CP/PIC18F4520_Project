#define BitSet(arg,bit) ((arg) |= (1<<bit))
#define BitClr(arg,bit) ((arg) &= ~(1<<bit)) 
#define BitFlp(arg,bit) ((arg) ^= (1<<bit)) 
#define BitTst(arg,bit) ((arg) & (1<<bit)) 

#define PORTD	(*(volatile __near unsigned char*)0xF83)
#define TRISD	(*(volatile __near unsigned char*)0xF95)    

void configuraLed(void){
    TRISD = 0x00;
    PORTD = 0xFF;
}

void ligarLedVet(char num){
    PORTD = num;
}

void inverteLed(char num){
    PORTD ^= (1 << num);
}

void desligarLedVet(char num){
    PORTD = ~num;
}
