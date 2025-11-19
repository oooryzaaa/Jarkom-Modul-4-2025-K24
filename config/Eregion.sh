enable
configure terminal

hostname Eregion

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Amonsul-(A23)
 ip address 192.223.15.234 255.255.255.252
 no shutdown

interface Serial0/0/1
 description Link-ke-Numenor-(A16)
 ip address 192.223.15.225 255.255.255.252
 clock rate 64000
 no shutdown

interface FastEthernet0/0
 description LAN-Mirkwood-(A17)
 ip address 192.223.14.1 255.255.255.128
 no shutdown

! === STATIC ROUTING ===
! 1. Rute ke Cabang Numenor (A8-A15) via Next Hop .15.226
ip route 192.223.10.0 255.255.254.0 192.223.15.226
ip route 192.223.8.0 255.255.254.0 192.223.15.226
ip route 192.223.0.0 255.255.252.0 192.223.15.226
ip route 192.223.15.160 255.255.255.240 192.223.15.226
ip route 192.223.14.128 255.255.255.128 192.223.15.226
ip route 192.223.15.212 255.255.255.252 192.223.15.226
ip route 192.223.15.216 255.255.255.252 192.223.15.226
ip route 192.223.15.220 255.255.255.252 192.223.15.226

! 2. DEFAULT ROUTE (Lempar sisanya ke Amonsul via Next Hop .15.233)
ip route 0.0.0.0 0.0.0.0 192.223.15.233

end
write memory