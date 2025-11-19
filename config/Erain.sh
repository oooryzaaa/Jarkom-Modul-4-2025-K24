enable
configure terminal

hostname Erain

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Mordor-(A13)
 ip address 192.223.15.214 255.255.255.252
 no shutdown

interface FastEthernet0/0
 description LAN-Balrog-(A8)
 ip address 192.223.10.1 255.255.254.0
 no shutdown

interface FastEthernet0/1
 description LAN-Melkor-(A9)
 ip address 192.223.8.1 255.255.254.0
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Mordor via Next Hop .15.213)
ip route 0.0.0.0 0.0.0.0 192.223.15.213

end
write memory