# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2

# 1 "./pic18f4520.h" 1
# 2 "main.c" 2

# 1 "./config.h" 1
# 38 "./config.h"
#pragma config OSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config DEBUG = OFF
#pragma config WDTPS = 1
# 3 "main.c" 2

# 1 "./delay.h" 1



void atraso_ms(int t);
# 4 "main.c" 2

# 1 "./lcd.h" 1
# 14 "./lcd.h"
void lcd_init(void);
void lcd_cmd(unsigned char val);
void lcd_dat(unsigned char val);
void lcd_finish(void);
void lcd_str(const char* str);
# 5 "main.c" 2

# 1 "./led.h" 1



void configuraLed(void);
void ligarLedVet(char num);
void desligarLedVet(char num);
void inverteLed(char num);
# 6 "main.c" 2

# 1 "./teclado.h" 1







    unsigned char tc_tecla(unsigned int timeout);
# 7 "main.c" 2

# 1 "./rtc.h" 1
# 23 "./rtc.h"
# 1 "./pic18f4520.h" 1
# 24 "./rtc.h" 2



    void ht1380write(unsigned char addr, unsigned char data);
    unsigned char ht1380read(unsigned char addr);

    unsigned char rtcGetSeconds(void);
    unsigned char rtcGetMinutes(void);
    unsigned char rtcGetHours(void);
    unsigned char rtcGetDate(void);
    unsigned char rtcGetMonth(void);
    unsigned char rtcGetYear(void);
    unsigned char rtcGetDay(void);



    void rtcPutSeconds(unsigned char seconds);
    void rtcPutMinutes(unsigned char minutes);
    void rtcPutHours(unsigned char hours);
    void rtcPutDate(unsigned char date);
    void rtcPutMonth(unsigned char month);
    void rtcPutDay(unsigned char day);
    void rtcPutYear(unsigned char year);

    void rtcSetDateTime(void);

    void rtcInit();
# 8 "main.c" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 9 "main.c" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\time.h" 1 3
# 33 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\time.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 76 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long time_t;
# 293 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef void * timer_t;




typedef int clockid_t;




typedef long clock_t;
# 313 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
struct timespec { time_t tv_sec; long tv_nsec; };





typedef int pid_t;
# 411 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 33 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\time.h" 2 3







struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long __tm_gmtoff;
 const char *__tm_zone;
};

clock_t clock (void);
time_t time (time_t *);
double difftime (time_t, time_t);
time_t mktime (struct tm *);
size_t strftime (char *restrict, size_t, const char *restrict, const struct tm *restrict);
struct tm *gmtime (const time_t *);
struct tm *localtime (const time_t *);
char *asctime (const struct tm *);
char *ctime (const time_t *);
int timespec_get(struct timespec *, int);
# 73 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\time.h" 3
size_t strftime_l (char * restrict, size_t, const char * restrict, const struct tm * restrict, locale_t);

struct tm *gmtime_r (const time_t *restrict, struct tm *restrict);
struct tm *localtime_r (const time_t *restrict, struct tm *restrict);
char *asctime_r (const struct tm *restrict, char *restrict);
char *ctime_r (const time_t *, char *);

void tzset (void);

struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 102 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\time.h" 3
int nanosleep (const struct timespec *, struct timespec *);
int clock_getres (clockid_t, struct timespec *);
int clock_gettime (clockid_t, struct timespec *);
int clock_settime (clockid_t, const struct timespec *);
int clock_nanosleep (clockid_t, int, const struct timespec *, struct timespec *);
int clock_getcpuclockid (pid_t, clockid_t *);

struct sigevent;
int timer_create (clockid_t, struct sigevent *restrict, timer_t *restrict);
int timer_delete (timer_t);
int timer_settime (timer_t, int, const struct itimerspec *restrict, struct itimerspec *restrict);
int timer_gettime (timer_t, struct itimerspec *);
int timer_getoverrun (timer_t);

extern char *tzname[2];





char *strptime (const char *restrict, const char *restrict, struct tm *restrict);
extern int daylight;
extern long timezone;
extern int getdate_err;
struct tm *getdate (const char *);
# 10 "main.c" 2


int valores7seg[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
unsigned char numeros[10] = {'0', '1', '2', '3', '4', '5','6', '7', '8', '9'};
unsigned char seqCorreta[7];
unsigned char seqTeclada[7];
unsigned int cont[5] = {800, 650, 400, 200, 150};
unsigned contD = 1000;
unsigned int delay = 5000;
unsigned int pontuacao = 0;
unsigned char pontuacaoLed[6] = {0, 1, 3, 7, 15, 31};
int i, k;

void loading(){
    lcd_cmd(0x01);
    lcd_cmd(0x80);
    lcd_str("   CARREGANDO ");
    lcd_cmd(0xC0);
    for(int i; i < 16; i++){
        lcd_dat(255);
        atraso_ms(500);
    }
    lcd_cmd(0x01);
}

void conta(){
    while(contD > 0){

    (*(volatile __near unsigned char*)0xF92) = 0x00;
    (*(volatile __near unsigned char*)0xF95) = 0x00;

    (*(volatile __near unsigned char*)0xF83) = valores7seg[(contD/10)%10];
    (((*(volatile __near unsigned char*)0xF80)) |= (1<<5));
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
    for(k = 0; k<delay; k++);

    (*(volatile __near unsigned char*)0xF83) = valores7seg[(contD/100)%10];
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
    (((*(volatile __near unsigned char*)0xF80)) |= (1<<4));
    for(k = 0; k<delay; k++);

    contD--;
    }

    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<5));
    (((*(volatile __near unsigned char*)0xF80)) &= ~(1<<4));
}

void mostraPontuacao(){
  configuraLed();
  for(int i = 0; i < 5; i++){
    desligarLedVet(255);
    atraso_ms(1000);
    ligarLedVet(pontuacaoLed[pontuacao]);
    atraso_ms(1000);
  }
}


void main(){
    rtcInit();

    for(;;){
    unsigned int nivel = 1;
    unsigned int numNivel = 5;
    int contaCerto = 0;
    unsigned char i;
    unsigned char tmp;

    (*(volatile __near unsigned char*)0xFC1) = 0x06;
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xF96) = 0x00;
    (*(volatile __near unsigned char*)0xF93) = 0xF8;

    lcd_init();
    srand((int)rtcGetSeconds());
    loading();

    lcd_cmd(0x80);
    lcd_str("   BEM VINDO! ");
    lcd_dat(194);
    lcd_cmd(0xC0);
    lcd_dat(126);
    lcd_str("PRESSIONE RB3");
    while ((((*(volatile __near unsigned char*)0xF81)) & (1<<3)));
    lcd_cmd(0x01);

    for(int k = 0; k < 5; k++){

    lcd_cmd(0x80);
    lcd_dat(126);
    lcd_str("   MEMORIZE! ");
    lcd_cmd(0xC0);

    for(char i = 0; i < numNivel; i++){
        int aux = rand()%9;
        lcd_dat(numeros[aux]);
        seqCorreta[i] = numeros[aux];
        lcd_str(" ");
    }

    conta();
    lcd_cmd(0x01);
    lcd_cmd(0x80);
    lcd_str("INSIRA OS");
    lcd_cmd(0xC0);
    lcd_str("NUMEROS");
    lcd_dat(126);
    lcd_str(" ");
    for(int i = 0; i < numNivel; i++){
        (*(volatile __near unsigned char*)0xF95) = 0x0F;
        tmp = tc_tecla(0) + 0x30;
        (*(volatile __near unsigned char*)0xF95) = 0x00;
        lcd_dat(tmp);
        seqTeclada[i] = tmp;
    }
    atraso_ms(2000);

    for(int j = 0; j < numNivel; j++){
        if(seqTeclada[j] == seqCorreta[j]){
            contaCerto++;
        }
    }
    if(contaCerto == numNivel){
        pontuacao++;
        lcd_init();
        lcd_cmd(0x01);
        lcd_cmd(0x80);
        lcd_str("  CORRETO! :) ");
        lcd_cmd(0xC0);
        lcd_dat(126);
        lcd_str("PRESSIONE RB3");
        mostraPontuacao();
        while ((((*(volatile __near unsigned char*)0xF81)) & (1<<3)));
        lcd_cmd(0x01);
    }
    else{
        lcd_init();
        lcd_cmd(0x01);
        lcd_cmd(0x80);
        lcd_str(" INCORRETO! :(");
        lcd_cmd(0xC0);
        lcd_dat(126);
        lcd_str("PRESSIONE RB3");
        while ((((*(volatile __near unsigned char*)0xF81)) & (1<<3)));
        lcd_cmd(0x01);
    }

    contD = cont[k];
    contaCerto = 0;

    nivel++;
        if(nivel == 3 || nivel == 5){
            numNivel++;
        }
        if(nivel == 6){
            lcd_cmd(0x01);
            lcd_cmd(0x80);
            lcd_str("    OBRIGADO");
            lcd_cmd(0xC0);
            lcd_str("   POR JOGAR!");
        }
    }
        mostraPontuacao();
        contD = 1000;
        pontuacao = 0;
        while ((((*(volatile __near unsigned char*)0xF81)) & (1<<3)));
    }
}
