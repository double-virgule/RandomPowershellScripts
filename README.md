## Script Descriptions

### GetNetNeighbor_ToCSV.ps1
I wrote this script as a way to get all net neighbors of a PC and write to CSV. We needed this for...some reason. 

#### Example Output 
```
computername   : PC1
externalip     : <ip address> 

GNNIPAddress1  : <ip address> 
GNNMAC1        : <mac address>
GNNIPAddress2  : <ip address> 
GNNMAC2        : <mac address>
GNNIPAddress3  : <ip address> 
GNNMAC3        : <mac address>
```

### AsciiBarGraphFunction.ps1
This may be the dumbest thing I've ever written, but I had some output that I wanted a visual indicator of how many of each comparatively we were seeing. So I made a bar graph that could show up in the console. You can pipe any group-object output to it and it'll make an ASCII bar graph. 

#### Example Output
```
<Item 1>                        : * 
<Item 2 with longer name>       : *
<Item 3>                        : ***
<Item 4>                        : ******
<Item 5>                        : ******
<Item 6>                        : ********
<Item 7>                        : *********
<Item 8>                        : **********
<Item 9>                        : ********************
```
