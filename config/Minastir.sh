enable
configure terminal

hostname Minastir
 === KONFIGURASI INTERFACE ===

interface Serial0/0/0
 description Link-ke-Amonsul-(A7)
 ip address 192.223.15.210 255.255.255.252
 no shutdown

interface Serial0/0/1
 description Link-ke-Amroth-(A4)
 ip address 192.223.15.201 255.255.255.252
 clock rate 64000
 no shutdown

interface Serial0/1/0
 description Link-ke-Anor-(A6)
 ip address 192.223.15.205 255.255.255.252
 clock rate 64000
 no shutdown

=== STATIC ROUTING ===

1. Rute ke Cabang AMROTH (A1, A2, A3)
   (Asumsi Next Hop Amroth di link A4 adalah 192.223.15.202)
ip route 192.223.15.0 255.255.255.192 192.223.15.202
ip route 192.223.15.184 255.255.255.248 192.223.15.202
ip route 192.223.15.192 255.255.255.248 192.223.15.202

2. Rute ke Cabang ANOR (A5)
   (Asumsi Next Hop Anor di link A6 adalah 192.223.15.206)
ip route 192.223.4.0 255.255.252.0 192.223.15.206

3. DEFAULT ROUTE (Lempar sisanya ke Amonsul)
    (Asumsi Next Hop Amonsul di link A7 adalah 192.223.15.209)
ip route 0.0.0.0 0.0.0.0 192.223.15.209

end
write memory