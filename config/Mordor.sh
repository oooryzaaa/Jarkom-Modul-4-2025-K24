enable
configure terminal

hostname Mordor

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Numenor-(A14)
 ip address 192.223.15.218 255.255.255.252
 no shutdown

interface Serial0/0/1
 description Link-ke-Erain-(A13)
 ip address 192.223.15.213 255.255.255.252
 clock rate 64000
 no shutdown

! === STATIC ROUTING ===
! 1. Rute ke Cabang Erain (A8, A9) via Next Hop .15.214
ip route 192.223.10.0 255.255.254.0 192.223.15.214
ip route 192.223.8.0 255.255.254.0 192.223.15.214

! 2. DEFAULT ROUTE (Lempar sisanya ke Numenor via Next Hop .15.217)
ip route 0.0.0.0 0.0.0.0 192.223.15.217

end
write memory