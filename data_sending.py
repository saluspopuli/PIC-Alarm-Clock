import serial

# Configure the serial port
ser = serial.Serial('COM1', 9600)  # Replace 'COM1' with the appropriate COM port and '9600' with the baud rate

string = "3E B4 32 G"

# Send the string character by character
for char in string:
    # Wait for 'A' before sending the next character
    while ser.read() != b'A':
        pass
    
    # Send the character
    ser.write(char.encode())

# Close the serial port
ser.close()

# Close the serial port
ser.close()