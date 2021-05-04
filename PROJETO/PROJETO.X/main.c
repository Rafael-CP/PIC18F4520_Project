// ATENCAO: USE FREQUENCIA DE 40MHz NO PICSIMLAB
#include "pic18f4520.h"
#include "config.h"
#include "delay.h"
#include "lcd.h"
#include "led.h"
#include "teclado.h"
#include "rtc.h"
#include <stdlib.h>
#include <time.h>

int valores7seg[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F}; 
unsigned char numeros[10] = {'0', '1', '2', '3', '4', '5','6', '7', '8', '9'};
unsigned char seqCorreta[7]; // sequencia que aparece na tela
unsigned char seqTeclada[7]; // sequencia teclada pelo usuario
unsigned int cont[5] = {800, 650, 400, 200, 150}; // tempo de cada round sera reduzido, fazendo com que cada nivel tenha menos tempo para ser cumprido
unsigned contD = 1000;
unsigned int delay = 5000; // delay para display 7 seg
unsigned int pontuacao = 0; // pontuacao do jogador
unsigned char pontuacaoLed[6] = {0, 1, 3, 7, 15, 31};
int i, k;

void loading(){
    lcd_cmd(L_CLR);
    lcd_cmd(L_L1);
    lcd_str("   CARREGANDO ");
    lcd_cmd(L_L2);
    for(int i; i < 16; i++){
        lcd_dat(255);
        atraso_ms(500);
    }
    lcd_cmd(L_CLR);
}

void conta(){
    while(contD > 0){
        
    TRISA = 0x00; //config. a porta A
    TRISD = 0x00; //config. a porta D 
    
    PORTD = valores7seg[(contD/10)%10];          
    BitSet(PORTA, 5); //liga o 1o display 
    BitClr(PORTA, 4); //desliga o 2o display 
    for(k = 0; k<delay; k++);

    PORTD = valores7seg[(contD/100)%10];
    BitClr(PORTA, 5); //desliga o 1o display 
    BitSet(PORTA, 4); //liga/desliga o 2o display 
    for(k = 0; k<delay; k++);
    
    contD--;
    } 
    //limpa display
    BitClr(PORTA, 5); //desliga o 1o display 
    BitClr(PORTA, 4); //desliga o 2o display 
}

void mostraPontuacao(){  
  configuraLed(); 
  for(int i = 0; i < 5; i++){
    desligarLedVet(255); // efeito visual de piscar os leds de ponto
    atraso_ms(1000);
    ligarLedVet(pontuacaoLed[pontuacao]);
    atraso_ms(1000);
  } 
}


void main(){
    rtcInit(); // inicia contagem de tempo no micro controlador
    
    for(;;){  
    unsigned int nivel = 1; // comeca no nivel 1, sendo incrementado com o passar dos niveis
    unsigned int numNivel = 5;  //nivel 1 tera 5 numeros p/ memorizar, nivel 3 e 4 terao 6 e nivel 5 tera 7
    int contaCerto = 0;
    unsigned char i;
    unsigned char tmp;  
    
    ADCON1 = 0x06;
    TRISD = 0x00;
    TRISE = 0x00;
    TRISB = 0xF8;
    
    lcd_init();
    srand((int)rtcGetSeconds()); // seed de numeros aleatorios com base no tempo rtc iniciado
    loading();
    
    lcd_cmd(L_L1);
    lcd_str("   BEM VINDO! ");
    lcd_dat(194);
    lcd_cmd(L_L2);
    lcd_dat(126);
    lcd_str("PRESSIONE RB3");
    while (BitTst(PORTB, 3));
    lcd_cmd(L_CLR);
    
    for(int k = 0; k < 5; k++){   // comeco do jogo
        
    lcd_cmd(L_L1);
    lcd_dat(126);
    lcd_str("   MEMORIZE! ");
    lcd_cmd(L_L2);
    
    for(char i = 0; i < numNivel; i++){
        int aux = rand()%9;
        lcd_dat(numeros[aux]); // imprime numeros
        seqCorreta[i] = numeros[aux]; // armazena a sequencia certa para futura verificacao
        lcd_str(" ");
    }
    
    conta();   
    lcd_cmd(L_CLR);
    lcd_cmd(L_L1);
    lcd_str("INSIRA OS");
    lcd_cmd(L_L2);
    lcd_str("NUMEROS");
    lcd_dat(126); // ->
    lcd_str(" "); // espaco
    for(int i = 0; i < numNivel; i++){ // grava valores teclados
        TRISD = 0x0F;
        tmp = tc_tecla(0) + 0x30;
        TRISD = 0x00;
        lcd_dat(tmp);
        seqTeclada[i] = tmp;
    }
    atraso_ms(2000);
    
    for(int j = 0; j < numNivel; j++){
        if(seqTeclada[j] == seqCorreta[j]){ // compara valores 
            contaCerto++;
        }
    }
    if(contaCerto == numNivel){
        pontuacao++; //jogador ganha um ponto por acertar
        lcd_init();
        lcd_cmd(L_CLR);
        lcd_cmd(L_L1);
        lcd_str("  CORRETO! :) ");
        lcd_cmd(L_L2);
        lcd_dat(126); // ->
        lcd_str("PRESSIONE RB3");
        mostraPontuacao(); 
        while (BitTst(PORTB, 3));
        lcd_cmd(L_CLR);
    }
    else{
        lcd_init();
        lcd_cmd(L_CLR);
        lcd_cmd(L_L1);
        lcd_str(" INCORRETO! :(");
        lcd_cmd(L_L2);
        lcd_dat(126); // ->
        lcd_str("PRESSIONE RB3");
        while (BitTst(PORTB, 3));
        lcd_cmd(L_CLR);
    }

    contD = cont[k];
    contaCerto = 0; // reseta contagem de numeros acertados para prox nivel
    
    nivel++;
        if(nivel == 3 || nivel == 5){
            numNivel++;
        }
        if(nivel == 6){
            lcd_cmd(L_CLR);
            lcd_cmd(L_L1);
            lcd_str("    OBRIGADO");
            lcd_cmd(L_L2);
            lcd_str("   POR JOGAR!"); 
        }
    }
        mostraPontuacao();  
        contD = 1000; // reseta cont para proximo jogo
        pontuacao = 0; // reseta pontuacao para prox jogo
        while (BitTst(PORTB, 3)); 
    }
}
