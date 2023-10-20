# SITE_C

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| SITE_C | l3leaf | C-LEAF1 | 172.100.100.129/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF2 | 172.100.100.130/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF3 | 172.100.100.131/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF4 | 172.100.100.132/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF5 | 172.100.100.133/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF6 | 172.100.100.134/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF7 | 172.100.100.135/24 | vEOS-LAB | Provisioned | - |
| SITE_C | l3leaf | C-LEAF8 | 172.100.100.136/24 | vEOS-LAB | Provisioned | - |
| SITE_C | spine | C-SPINE1 | 172.100.100.127/24 | vEOS-LAB | Provisioned | - |
| SITE_C | spine | C-SPINE2 | 172.100.100.128/24 | vEOS-LAB | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | C-LEAF1 | Ethernet1 | spine | C-SPINE1 | Ethernet1 |
| l3leaf | C-LEAF1 | Ethernet2 | spine | C-SPINE2 | Ethernet1 |
| l3leaf | C-LEAF1 | Ethernet5 | mlag_peer | C-LEAF2 | Ethernet5 |
| l3leaf | C-LEAF1 | Ethernet6 | mlag_peer | C-LEAF2 | Ethernet6 |
| l3leaf | C-LEAF2 | Ethernet1 | spine | C-SPINE1 | Ethernet2 |
| l3leaf | C-LEAF2 | Ethernet2 | spine | C-SPINE2 | Ethernet2 |
| l3leaf | C-LEAF3 | Ethernet1 | spine | C-SPINE1 | Ethernet3 |
| l3leaf | C-LEAF3 | Ethernet2 | spine | C-SPINE2 | Ethernet3 |
| l3leaf | C-LEAF3 | Ethernet5 | mlag_peer | C-LEAF4 | Ethernet5 |
| l3leaf | C-LEAF3 | Ethernet6 | mlag_peer | C-LEAF4 | Ethernet6 |
| l3leaf | C-LEAF4 | Ethernet1 | spine | C-SPINE1 | Ethernet4 |
| l3leaf | C-LEAF4 | Ethernet2 | spine | C-SPINE2 | Ethernet4 |
| l3leaf | C-LEAF5 | Ethernet1 | spine | C-SPINE1 | Ethernet5 |
| l3leaf | C-LEAF5 | Ethernet2 | spine | C-SPINE2 | Ethernet5 |
| l3leaf | C-LEAF5 | Ethernet5 | mlag_peer | C-LEAF6 | Ethernet5 |
| l3leaf | C-LEAF5 | Ethernet6 | mlag_peer | C-LEAF6 | Ethernet6 |
| l3leaf | C-LEAF6 | Ethernet1 | spine | C-SPINE1 | Ethernet6 |
| l3leaf | C-LEAF6 | Ethernet2 | spine | C-SPINE2 | Ethernet6 |
| l3leaf | C-LEAF7 | Ethernet1 | spine | C-SPINE1 | Ethernet7 |
| l3leaf | C-LEAF7 | Ethernet2 | spine | C-SPINE2 | Ethernet7 |
| l3leaf | C-LEAF7 | Ethernet5 | mlag_peer | C-LEAF8 | Ethernet5 |
| l3leaf | C-LEAF7 | Ethernet6 | mlag_peer | C-LEAF8 | Ethernet6 |
| l3leaf | C-LEAF8 | Ethernet1 | spine | C-SPINE1 | Ethernet8 |
| l3leaf | C-LEAF8 | Ethernet2 | spine | C-SPINE2 | Ethernet8 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 192.168.0.0/24 | 256 | 32 | 12.5 % |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| C-LEAF1 | Ethernet1 | 192.168.0.1/31 | C-SPINE1 | Ethernet1 | 192.168.0.0/31 |
| C-LEAF1 | Ethernet2 | 192.168.0.3/31 | C-SPINE2 | Ethernet1 | 192.168.0.2/31 |
| C-LEAF2 | Ethernet1 | 192.168.0.5/31 | C-SPINE1 | Ethernet2 | 192.168.0.4/31 |
| C-LEAF2 | Ethernet2 | 192.168.0.7/31 | C-SPINE2 | Ethernet2 | 192.168.0.6/31 |
| C-LEAF3 | Ethernet1 | 192.168.0.9/31 | C-SPINE1 | Ethernet3 | 192.168.0.8/31 |
| C-LEAF3 | Ethernet2 | 192.168.0.11/31 | C-SPINE2 | Ethernet3 | 192.168.0.10/31 |
| C-LEAF4 | Ethernet1 | 192.168.0.13/31 | C-SPINE1 | Ethernet4 | 192.168.0.12/31 |
| C-LEAF4 | Ethernet2 | 192.168.0.15/31 | C-SPINE2 | Ethernet4 | 192.168.0.14/31 |
| C-LEAF5 | Ethernet1 | 192.168.0.17/31 | C-SPINE1 | Ethernet5 | 192.168.0.16/31 |
| C-LEAF5 | Ethernet2 | 192.168.0.19/31 | C-SPINE2 | Ethernet5 | 192.168.0.18/31 |
| C-LEAF6 | Ethernet1 | 192.168.0.21/31 | C-SPINE1 | Ethernet6 | 192.168.0.20/31 |
| C-LEAF6 | Ethernet2 | 192.168.0.23/31 | C-SPINE2 | Ethernet6 | 192.168.0.22/31 |
| C-LEAF7 | Ethernet1 | 192.168.0.25/31 | C-SPINE1 | Ethernet7 | 192.168.0.24/31 |
| C-LEAF7 | Ethernet2 | 192.168.0.27/31 | C-SPINE2 | Ethernet7 | 192.168.0.26/31 |
| C-LEAF8 | Ethernet1 | 192.168.0.29/31 | C-SPINE1 | Ethernet8 | 192.168.0.28/31 |
| C-LEAF8 | Ethernet2 | 192.168.0.31/31 | C-SPINE2 | Ethernet8 | 192.168.0.30/31 |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.0.0.0/24 | 256 | 10 | 3.91 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| SITE_C | C-LEAF1 | 10.0.0.31/32 |
| SITE_C | C-LEAF2 | 10.0.0.32/32 |
| SITE_C | C-LEAF3 | 10.0.0.33/32 |
| SITE_C | C-LEAF4 | 10.0.0.34/32 |
| SITE_C | C-LEAF5 | 10.0.0.35/32 |
| SITE_C | C-LEAF6 | 10.0.0.36/32 |
| SITE_C | C-LEAF7 | 10.0.0.37/32 |
| SITE_C | C-LEAF8 | 10.0.0.38/32 |
| SITE_C | C-SPINE1 | 10.0.0.131/32 |
| SITE_C | C-SPINE2 | 10.0.0.132/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 10.3.3.0/24 | 256 | 8 | 3.13 % |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| SITE_C | C-LEAF1 | 10.3.3.31/32 |
| SITE_C | C-LEAF2 | 10.3.3.31/32 |
| SITE_C | C-LEAF3 | 10.3.3.33/32 |
| SITE_C | C-LEAF4 | 10.3.3.33/32 |
| SITE_C | C-LEAF5 | 10.3.3.35/32 |
| SITE_C | C-LEAF6 | 10.3.3.35/32 |
| SITE_C | C-LEAF7 | 10.3.3.37/32 |
| SITE_C | C-LEAF8 | 10.3.3.37/32 |
