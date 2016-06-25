#include <math.h>
#include <sys/time.h>
#include <string.h>
#include <unistd.h>



#define uint32 unsigned int
#define uint32_t unsigned int
#define uint16_t unsigned short
#define int16_t signed short
#define uint8 unsigned char
#define uint8_t unsigned char
#define int8_t char
#define bool int
#define FALSE 0
#define TRUE 1


int ESC_UART_RX_NVIC_Handle=0;
#define PWMSP001_HandleType int
int PWMSP001_Handle0=0;
int PWMSP001_Handle1=1;
int PWMSP001_Handle2=2;
int PWMSP001_Handle3=3;
int PWMSP001_Handle4=4;
int PWMSP001_Handle5=5;
int PWMSP001_Handle6=6;
int PWMSP001_Handle7=7;
int PWMSP001_Handle8=8;

int ESC_PWM_Handle0=0;
int ESC_PWM_Handle1=1;
int ESC_PWM_Handle2=2;
int ESC_PWM_Handle3=3;

#define UART001_HandleType int
int UART001_Handle1=1;

int USBD_VCOM_CDCInterface=0;

int DAVEApp_SUCCESS=0;

#define INPUT           0x00
#define INPUT_PD        0x01
#define INPUT_PU        0x02
#define INPUT_PPS       0x03
#define INPUT_INV       0x04
#define INPUT_INV_PD    0x05
#define INPUT_INV_PU    0x06
#define INPUT_INV_PPS   0x07
#define OUTPUT_PP_GP    0x10
#define OUTPUT_PP_AF1   0x11
#define OUTPUT_PP_AF2   0x12
#define OUTPUT_PP_AF3   0x13
#define OUTPUT_PP_AF4   0x14
#define OUTPUT_OD_GP    0x18
#define OUTPUT_OD_AF1   0x19
#define OUTPUT_OD_AF2   0x1A
#define OUTPUT_OD_AF3   0x1B
#define OUTPUT_OD_AF4   0X1C
#define WEAK            0x7
#define MEDIUM          0x4
#define STRONG          0x2
#define VERYSTRONG      0x0

#define TOGGLE_P0_9 toggle(0,9)
#define TOGGLE_P3_0 toggle(3,0)
#define TOGGLE_P3_1 toggle(3,1)
#define TOGGLE_P3_2 toggle(3,2)
#define SET_P0_2 set(0,2)
#define SET_P0_3 set(0,3)
#define SET_P2_0 set(2,0)
#define SET_P2_7 set(2,7)

void GetAngles(float* angles, float* yoffset)
{
  printf("Simulating angles\n");
  angles[0]=0;
}


void toggle(int port, int value)
{
  printf("Toggling port %d to value %d\n",port,value);
}

void set(int port, int value)
{
  printf("Setting port %d to value %d\n",port,value);
}

void PWMSP001_SetDutyCycle(PWMSP001_HandleType* port, int value)
{
  printf("Setting PWM %d to value %d\n",*port,value);
}
void PWMSP001_Start(PWMSP001_HandleType* port)
{
  printf("Starting PWM %d\n",*port);
}
void PWMSP001_Stop(PWMSP001_HandleType* port)
{
  printf("Stopping PWM %d\n",*port);
}


void __NOP()
{
}

int UART001_WriteDataBytes (const UART001_HandleType* Handle, const uint8_t* DataPtr, uint32_t Count)
{
  int i=0;
  printf("Sending data bytes to port %d: ",*Handle);
  for(i=0;i<Count;i++) printf("%c",DataPtr[i]);
  printf("\n");
  return Count;
}

void WatchRC_Init()
{
}

#define delay usleep

void GetRCData(float* power, float* yaw_dot, float* pitch, float* roll)
{
  *power=1.0;
  *yaw_dot=2.0;
  *pitch=3.0;
  *roll=4.0;
  printf("Simulating RC Data: %f,%f,%f,%f\n",*power,*yaw_dot,*pitch,*roll);
}

int DAVE_Init()
{
  return(0);
}

SensorError setupDPS310()
{
  return(0);
}

int USBD_VCOM_BytesReceived()
{
  return 1;
}

char USBD_VCOM_ReceiveByte()
{
  printf("Simulating a received character\n");
  return 'A';
}


void GetMagData(float* pt)
{
  *pt=0.0;
  printf("Simulating Magnetic: %f\n",*pt);
}

void cont(int id1,int id2,int mode,int strength)
{
  printf("Controlling %d-%d with mode %d to strength %d\n",id1,id2,mode,strength);
}


#include "_Quadrocopter/Attitude_Control/AttitudeController.c"

#define Control_P0_9(Mode, DriveStrength) cont(0,9,Mode,DriveStrength)
#define Control_P0_0(Mode, DriveStrength) cont(0,0,Mode,DriveStrength)
#define Control_P0_1(Mode, DriveStrength) cont(0,1,Mode,DriveStrength)
#define Control_P0_2(Mode, DriveStrength) cont(0,2,Mode,DriveStrength)
#define Control_P0_3(Mode, DriveStrength) cont(0,3,Mode,DriveStrength)
#define Control_P1_0(Mode, DriveStrength) cont(1,0,Mode,DriveStrength)
#define Control_P1_1(Mode, DriveStrength) cont(1,1,Mode,DriveStrength)
#define Control_P1_2(Mode, DriveStrength) cont(1,2,Mode,DriveStrength)
#define Control_P2_0(Mode, DriveStrength) cont(2,0,Mode,DriveStrength)
#define Control_P2_1(Mode, DriveStrength) cont(2,1,Mode,DriveStrength)
#define Control_P2_2(Mode, DriveStrength) cont(2,2,Mode,DriveStrength)
#define Control_P2_7(Mode, DriveStrength) cont(2,7,Mode,DriveStrength)
#define Control_P3_0(Mode, DriveStrength) cont(3,0,Mode,DriveStrength)
#define Control_P3_1(Mode, DriveStrength) cont(3,1,Mode,DriveStrength)
#define Control_P3_2(Mode, DriveStrength) cont(3,2,Mode,DriveStrength)

uint16_t GetSensorCount()
{
  return(1);
}

int USBD_VCOM_Init()
{
  return(0);
}
void updateValues(uint32_t *press,uint32_t *temp)
{
  *press=1023.0;
  *temp=23.0;
  printf("Simulating pressure %d temperature %d\n",*press,*temp);
}
int USBD_VCOM_SendString(const char *USB_Tx_Buffer)
{
  printf("Sending over VCOM: %s\n",USB_Tx_Buffer);
  return(strlen(USB_Tx_Buffer));
}
void MPU9150_Setup()
{
}
void NVIC002_DisableIRQ(int* a)
{
}

uint8_t GetRCCount()
{
  return 0;
}
void CDC_Device_USBTask(int*name)
{
}
uint16_t DPS310_INT_counter = 0;


long millis()
{
  struct timeval tv;
  struct timezone tz;
  gettimeofday(&tv,&tz);
  return(tv.tv_sec*1000+tv.tv_usec/1000);
}
