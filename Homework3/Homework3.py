from scapy.all import *
from StringIO import StringIO
import matplotlib.pyplot as plt 

from random import randint
from math import ceil

packets = PcapReader("Output.pcap")
#packets = pyshark-legacy.FileCapture("Homework3.cap")
 
# Don't use these filter
filters = {
	"Beacon": 			"wlan.fc.type_subtype == 8",
}

subtype_dict = {
	"ACKs":					29,
	"Beacon" : 				8,
	"Block ACKs" : 			24,
	"RTS":					27,
	"CTS":					28,
	"Probe Request":		4,
	"Probe Response":		5,
	"Authentications":		11,
	"Deauthentications":	12,
	"Actions":				13,
	"Disassociations":		10,
	"Data":					32,
	"QOS Data":				40,
	"Null":					36
}

result_dict = {}
for pkt_type in subtype_dict.keys():
	result_dict[pkt_type]=0

pkt_times = []

packets = rdpcap('sample.pcap')


for pkt in packets:
	pkt_times.append(pkt.time)
	try:
		if pkt.type == 0:
			for sub_key in subtype_dict.keys():
				if pkt.subtype == subtype_dict[sub_key]:
					result_dict[sub_key] += 1
	except:
		continue 

plt.bar(list(result_dict.keys()), result_dict.values(), color='b')
plt.ylabel('Frames captured')
plt.show()

rates = {}
for i in range(1,len(pkt_times)):
	capture = StringIO()
	save_stdout=sys.stdout
	sys.stdout = capture
	packets[i].show()
	sys.stdout = save_stdout
	for sub_line in capture.getvalue().split("\n"):
		if " Rate " in sub_line:
			hertz = sub_line.split("=")[1]
			hertz = hertz.replace(" ", "")
			hertz = int(hertz)
			if hertz not in rates.keys():
				rates[hertz] = 1
			else:
				rates[hertz] += 1

ordered_values = []
key_list = rates.keys()
key_list.sort()
for i in range(0,len(key_list)):
	num_string = "{0:0=3d}".format(key_list[i])
	key_list[i] = str(num_string)
for key in key_list:
	ordered_values.append(rates[int(key)])
plt.bar(key_list, ordered_values, color='b')
plt.xlabel('Data Rate')
plt.ylabel('Frequency')
plt.show()
