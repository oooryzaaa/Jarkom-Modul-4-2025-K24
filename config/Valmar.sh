enable
configure terminal

hostname Valmar

! === INTERFACES ===
interface FastEthernet0/0
 description Link-ke-Switch-3-(A21)
 ip address 192.223.15.178 255.255.255.248
 no shutdown

interface FastEthernet0/1
 description LAN-Imrahil-(A18)
 ip address 192.223.15.65 255.255.255.192
 no shutdown

interface FastEthernet1/0
 description LAN-Doriath-(A19)
 ip address 192.223.15.129 255.255.255.224
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Fornost via Next Hop .15.177)
ip route 0.0.0.0 0.0.0.0 192.223.15.177

end
write memory