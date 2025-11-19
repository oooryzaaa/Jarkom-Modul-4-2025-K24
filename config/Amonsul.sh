enable
configure terminal

hostname Amonsul

=== KONFIGURASI INTERFACE ===

interface Serial0/0/0
 description Link-ke-Minastir-(A7)
 ip address 192.223.15.209 255.255.255.252
 clock rate 64000  
 no shutdown

interface Serial0/0/1
 description Link-ke-Eregion-(A23)
 ip address 192.223.15.233 255.255.255.252
 clock rate 64000
 no shutdown

interface Serial0/1/0
 description Link-ke-Fornost-(A22)
 ip address 192.223.15.229 255.255.255.252
 clock rate 64000
 no shutdown

! (Tambahkan interface ke Cloud-PT jika ada)
! interface FastEthernet0/0
!  ip address [IP_Cloud] [Mask_Cloud]
!  no shutdown


 === STATIC ROUTING ===

--- 1. Rute via MINASTIR (Next Hop: 192.223.15.210) ---
(Semua tujuan A1 - A6)
ip route 192.223.15.0 255.255.255.192 192.223.15.210     ! A1 (Erendis)
ip route 192.223.15.184 255.255.255.248 192.223.15.210  ! A2 (Throne)
ip route 192.223.15.192 255.255.255.248 192.223.15.210  ! A3 (Link Sw0)
ip route 192.223.15.200 255.255.255.252 192.223.15.210  ! A4 (Link Min-Amr)
ip route 192.223.4.0 255.255.252.0 192.223.15.210        ! A5 (Beacon)
ip route 192.223.15.204 255.255.255.252 192.223.15.210  ! A6 (Link Min-Ano)

! --- 2. Rute via EREGION (Next Hop: 192.223.15.234) ---
! (Semua tujuan A8 s/d A17)
ip route 192.223.10.0 255.255.254.0 192.223.15.234      ! A8 (Balrog)
ip route 192.223.8.0 255.255.254.0 192.223.15.234       ! A9 (Melkor)
ip route 192.223.0.0 255.255.252.0 192.223.15.234       ! A10 (Arthedain)
ip route 192.223.15.160 255.255.255.240 192.223.15.234 ! A11 (IronCrown)
ip route 192.223.14.128 255.255.255.128 192.223.15.234 ! A12 (Palantir)
ip route 192.223.15.212 255.255.255.252 192.223.15.234 ! A13 (Link Mor-Era)
ip route 192.223.15.216 255.255.255.252 192.223.15.234 ! A14 (Link Num-Mor)
ip route 192.223.15.220 255.255.255.252 192.223.15.234 ! A15 (Link Num-Gud)
ip route 192.223.15.224 255.255.255.252 192.223.15.234 ! A16 (Link Ere-Num)
ip route 192.223.14.0 255.255.255.128 192.223.15.234    ! A17 (Mirkwood)

! --- 3. Rute via FORNOST (Next Hop: 192.223.15.230) ---
! (Semua tujuan A18 s/d A21)
ip route 192.223.15.64 255.255.255.192 192.223.15.230    ! A18 (Imrahil)
ip route 192.223.15.128 255.255.255.224 192.223.15.230 ! A19 (Doriath)
ip route 192.223.12.0 255.255.254.0 192.223.15.230      ! A20 (Shadow)
ip route 192.223.15.176 255.255.255.248 192.223.15.230 ! A21 (Link Sw3)

end
write memory