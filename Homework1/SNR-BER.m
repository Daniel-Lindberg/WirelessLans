clear;
clf;

distances = 1:100;

#20 mbps converted to bps
bits_per_second = 2000000;
#Tx - PL
signal_power = (-101 - (40 + 20 * log(distances)));

boltman_constant = 0.0000000000000000000000138;

#Is the temperature in kelvin
temperature = 300.15;

#energy per bit
eb = signal_power/(bits_per_second);

#noise = KTB
no = boltman_constant * temperature * bits_per_second;

#converted value to dBm
no = -110.8175

SNR = eb/no;
plot(distances,SNR)
title("DISTANCE VS SNR")
figure



#SNR = ((-101 - (40 + 20*log(distances)))/(-110.8175));
BER = 0.5 * erfc(sqrt(SNR));

plot(BER, SNR)
title("BER VS SNR")



#hold on;
#h = legend ("SNR", "BER")
#legend (h, "location", "northeastoutside")
