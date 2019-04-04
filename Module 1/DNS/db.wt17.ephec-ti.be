$ORIGIN wt17.ephec-ti.be.
$TTL    3600
@       IN      SOA     ns1.wt17.ephec-ti.be. admin.wt17.ephec-ti.be. (
                        2019031         ; Serial
                           3600         ; Refresh
                            600         ; Retry
                          86400         ; Expire
                           600 )       ; Negative Cache TTL

@	IN	NS	ns1
	IN	A	51.77.245.39
wt17.ephec-ti.be.	IN	NS	ns1.wt17.ephec-ti.be.


ns1.wt17.ephec-ti.be.	IN	A	51.77.245.39

web	IN	A	51.77.245.39
mail	IN	A	51.77.245.38
VoIP	IN	A	51.77.245.40

b2b	IN	CNAME	web
www	IN	CNAME	web
