enable
configure terminal

hostname Morgoth

=== KONFIGURASI INTERFACE ===

interface FastEthernet0/0
 description LAN-Erendis-Elrond-(A1)
 ip address 192.223.15.1 255.255.255.192  (Erendis)
 no shutdown

interface FastEthernet0/1
 description Link-ke-Sw0-(A3)
 ip address 192.223.15.194 255.255.255.248 ! (IP dari range A3)
 no shutdown

=== STATIC ROUTING ===

1. DEFAULT ROUTE (ke Amroth)
ip route 0.0.0.0 0.0.0.0 192.223.15.193

end
write memory