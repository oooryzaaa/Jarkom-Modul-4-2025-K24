enable
configure terminal

hostname Fornost

! === INTERFACES ===
interface Serial0/0/0
 description Link-ke-Amonsul-(A22)
 ip address 192.223.15.230 255.255.255.252
 no shutdown

interface FastEthernet0/0
 description Link-ke-Switch-3-(A21)
 ip address 192.223.15.177 255.255.255.248
 no shutdown

! === STATIC ROUTING ===
! 1. Rute ke Cabang Valmar (A18, A19) via Next Hop .15.178
ip route 192.223.15.64 255.255.255.192 192.223.15.178
ip route 192.223.15.128 255.255.255.224 192.223.15.178

! 2. Rute ke Cabang Valinor (A20) via Next Hop .15.179
ip route 192.223.12.0 255.255.254.0 192.223.15.179

! 3. DEFAULT ROUTE (Lempar sisanya ke Amonsul via Next Hop .15.229)
ip route 0.0.0.0 0.0.0.0 192.223.15.229

end
write memory