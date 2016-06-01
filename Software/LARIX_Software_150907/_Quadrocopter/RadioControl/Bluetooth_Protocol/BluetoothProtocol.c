/*
 * Serial_Cmd.c
 *
 *  Created on: 30.01.2015
 *      Author: SteurerE
 */
#include "BluetoothProtocol.h"

//Helper to get Float values out of integer-bytes//
union
{
	int i;
	float f;
} u;

status_t maintainBluetoothInputBuffer(
		uint8_t input_buffer[BLUETOOTH_INPUT_BUFFER],
		ControlValue *control_value, DataPacket* packet)
{

	static int packet_counter = 0;
	static int packets_to_be_received = 0;

	control_value->header = 0;
	control_value->speed = 0;
	control_value->z_rotate = 0.0;
	control_value->x_pitch = 0.0;
	control_value->y_roll = 0.0;
	control_value->checksum = 0;

	uint32_t checksum;

	checksum = input_buffer[0];
	checksum ^= ((input_buffer[1] << 8 | input_buffer[2]) & 0xFFFF);

	for (int i = 3; i < (PACKET_SIZE - PACKET_CHECKSUM) - 1; i += 4)
	{

		checksum ^= (input_buffer[i] << 24 | input_buffer[i + 1] << 16
				| input_buffer[i + 2] << 8 | input_buffer[i + 3]);

	}

	control_value->checksum = input_buffer[15] << 24 | input_buffer[16] << 16
			| input_buffer[17] << 8 | input_buffer[18];

	if (control_value->checksum == checksum)
	{

		if (input_buffer[0])
			{ //Got a valid Data-Package

			if (packets_to_be_received == 0)
			{

				packets_to_be_received = input_buffer[0];

			}

			int current_val = packet_counter;

			for (; packet_counter < (current_val + DATA_SIZE);
					packet_counter++)
			{

				packet->cmd[packet_counter] = input_buffer[packet_counter
						- current_val + PACKET_HEADER];

			}

			if ((input_buffer[0]
					<= (PACKET_SIZE - PACKET_HEADER - PACKET_CHECKSUM)))
			{ //all cmd-bytes are within this data-package

				packet->character_count = packets_to_be_received;
				packet_counter = 0;
				packets_to_be_received = 0;

				//Cleanup Buffer//
				memset(input_buffer, 0x00, sizeof(input_buffer));
				return RECEIVED_DATA_PACKET; //Got a complete and valid Data-Package

			} else {

				//Cleanup Buffer//
				memset(input_buffer, 0x00, sizeof(input_buffer));
				return RECEIVED_DATA_PACKET_N_C; //must do another read operation

			}

		} else
		{

			control_value->header = input_buffer[0];
			control_value->speed = (input_buffer[1] << 8 | input_buffer[2]);
			u.i = ((input_buffer[3] << 24 | input_buffer[4] << 16
					| input_buffer[5] << 8 | input_buffer[6]));
			control_value->z_rotate = u.f;
			u.i = (input_buffer[7] << 24 | input_buffer[8] << 16
					| input_buffer[9] << 8 | input_buffer[10]);
			control_value->x_pitch = u.f;
			u.i = (input_buffer[11] << 24 | input_buffer[12] << 16
					| input_buffer[13] << 8 | input_buffer[14]);
			control_value->y_roll = u.f;

			//Cleanup Buffer//
			memset(input_buffer, 0x00, sizeof(input_buffer));
			return RECEIVED_CONTROL_PACKET; //Got a valid Control-Package

		}

	} else {

			packet_counter = 0; //if it happens between data-packages...
			//Cleanup Buffer//
			memset(input_buffer, 0x00, sizeof(input_buffer));
			return CHECKSUM_ERROR; //Wrong checksum

	}

	memset(input_buffer, 0x00, sizeof(input_buffer));
	return UNDEFINED_ERROR; //Error by default

}

