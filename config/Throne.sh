enable
configure terminal

hostname Throne

! === INTERFACES ===
interface FastEthernet0/0
 description Link-ke-Switch-0-(A3)
 ip address 192.223.15.195 255.255.255.248
 no shutdown

interface FastEthernet0/1
 description LAN-Erebor-(A2)
 ip address 192.223.15.185 255.255.255.248
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Amroth via Next Hop .15.193)
ip route 0.0.0.0 0.0.0.0 192.223.15.193

end
write memory