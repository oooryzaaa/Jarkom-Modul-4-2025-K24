enable
configure terminal

hostname Numenor

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Eregion-(A16)
 ip address 192.223.15.226 255.255.255.252
 no shutdown

interface Serial0/0/1
 description Link-ke-Mordor-(A14)
 ip address 192.223.15.217 255.255.255.252
 clock rate 64000
 no shutdown

interface Serial0/1/0
 description Link-ke-Gudur-(A15)
 ip address 192.223.15.221 255.255.255.252
 clock rate 64000
 no shutdown

interface FastEthernet0/0
 description LAN-Arthedain-(A10)
 ip address 192.223.0.1 255.255.252.0
 no shutdown

! === STATIC ROUTING ===
! 1. Rute ke Cabang Mordor (A8, A9, A13) via Next Hop .15.218
ip route 192.223.10.0 255.255.254.0 192.223.15.218
ip route 192.223.8.0 255.255.254.0 192.223.15.218
ip route 192.223.15.212 255.255.255.252 192.223.15.218

! 2. Rute ke Cabang Gudur (A11, A12) via Next Hop .15.222
ip route 192.223.15.160 255.255.255.240 192.223.15.222
ip route 192.223.14.128 255.255.255.128 192.223.15.222

! 3. DEFAULT ROUTE (Lempar sisanya ke Eregion via Next Hop .15.225)
ip route 0.0.0.0 0.0.0.0 192.223.15.225

end
write memory