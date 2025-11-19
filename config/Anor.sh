enable
configure terminal

hostname Anor

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Minastir-(A6)
 ip address 192.223.15.206 255.255.255.252
 no shutdown

interface FastEthernet0/0
 description LAN-Beacon-(A5)
 ip address 192.223.4.1 255.255.252.0
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Minastir via Next Hop .15.205)
ip route 0.0.0.0 0.0.0.0 192.223.15.205

end
write memory