enable
configure terminal

hostname Gudur

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Numenor-(A15)
 ip address 192.223.15.222 255.255.255.252
 no shutdown

interface FastEthernet0/0
 description LAN-IronCrown-(A11)
 ip address 192.223.15.161 255.255.255.240
 no shutdown

interface FastEthernet0/1
 description LAN-Palantir-(A12)
 ip address 192.223.14.129 255.255.255.128
 no shutdown

! === STATIC ROUTING ===
! DEFAULT ROUTE (Lempar semua ke Numenor via Next Hop .15.221)
ip route 0.0.0.0 0.0.0.0 192.223.15.221

end
write memory