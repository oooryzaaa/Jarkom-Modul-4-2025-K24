enable
configure terminal

hostname Amroth

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Minastir-(A4)
 ip address 192.223.15.202 255.255.255.252
 no shutdown

interface FastEthernet0/0
 description Link-ke-Switch-0-(A3)
 ip address 192.223.15.193 255.255.255.248
 no shutdown

! === STATIC ROUTING ===
! 1. Rute ke Cabang Morgoth (A1) via Next Hop .15.194
ip route 192.223.15.0 255.255.255.192 192.223.15.194

! 2. Rute ke Cabang Throne (A2) via Next Hop .15.195
ip route 192.223.15.184 255.255.255.248 192.223.15.195

! 3. DEFAULT ROUTE (Lempar sisanya ke Minastir via Next Hop .15.201)
ip route 0.0.0.0 0.0.0.0 192.223.15.201

end
write memory