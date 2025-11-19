enable
configure terminal

hostname Valinor

! === INTERFACES ===
interface FastEthernet0/0
 description Link-ke-Switch-3-(A21)
 ip address 192.223.15.179 255.255.255.248
 no shutdown

interface FastEthernet0/1
 description LAN-Shadow-(A20)
 ip address 192.223.12.1 255.255.254.0
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Fornost via Next Hop .15.177)
ip route 0.0.0.0 0.0.0.0 192.223.15.177

end
write memory