# SITE_B

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [ISIS CLNS interfaces](#isis-clns-interfaces)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| SITE_B | l3leaf | B-LEAF1 | 172.100.100.118/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF2 | 172.100.100.119/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF3 | 172.100.100.120/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF4 | 172.100.100.121/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF5 | 172.100.100.122/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF6 | 172.100.100.123/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF7 | 172.100.100.124/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l3leaf | B-LEAF8 | 172.100.100.125/24 | vEOS-LAB | Provisioned | - |
| SITE_B | spine | B-SPINE1 | 172.100.100.114/24 | vEOS-LAB | Provisioned | - |
| SITE_B | spine | B-SPINE2 | 172.100.100.115/24 | vEOS-LAB | Provisioned | - |
| SITE_B | spine | B-SPINE3 | 172.100.100.116/24 | vEOS-LAB | Provisioned | - |
| SITE_B | spine | B-SPINE4 | 172.100.100.117/24 | vEOS-LAB | Provisioned | - |
| SITE_B | l2leaf | B-SW1 | 172.100.100.139/24 | vEOS-LAB | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | B-LEAF1 | Ethernet1 | spine | B-SPINE1 | Ethernet1 |
| l3leaf | B-LEAF1 | Ethernet2 | spine | B-SPINE2 | Ethernet1 |
| l3leaf | B-LEAF1 | Ethernet3 | spine | B-SPINE3 | Ethernet1 |
| l3leaf | B-LEAF1 | Ethernet4 | spine | B-SPINE4 | Ethernet1 |
| l3leaf | B-LEAF1 | Ethernet7 | l2leaf | B-SW1 | Ethernet1 |
| l3leaf | B-LEAF2 | Ethernet1 | spine | B-SPINE1 | Ethernet2 |
| l3leaf | B-LEAF2 | Ethernet2 | spine | B-SPINE2 | Ethernet2 |
| l3leaf | B-LEAF2 | Ethernet3 | spine | B-SPINE3 | Ethernet2 |
| l3leaf | B-LEAF2 | Ethernet4 | spine | B-SPINE4 | Ethernet2 |
| l3leaf | B-LEAF2 | Ethernet7 | l2leaf | B-SW1 | Ethernet2 |
| l3leaf | B-LEAF3 | Ethernet1 | spine | B-SPINE1 | Ethernet3 |
| l3leaf | B-LEAF3 | Ethernet2 | spine | B-SPINE2 | Ethernet3 |
| l3leaf | B-LEAF3 | Ethernet3 | spine | B-SPINE3 | Ethernet3 |
| l3leaf | B-LEAF3 | Ethernet4 | spine | B-SPINE4 | Ethernet3 |
| l3leaf | B-LEAF4 | Ethernet1 | spine | B-SPINE1 | Ethernet4 |
| l3leaf | B-LEAF4 | Ethernet2 | spine | B-SPINE2 | Ethernet4 |
| l3leaf | B-LEAF4 | Ethernet3 | spine | B-SPINE3 | Ethernet4 |
| l3leaf | B-LEAF4 | Ethernet4 | spine | B-SPINE4 | Ethernet4 |
| l3leaf | B-LEAF5 | Ethernet1 | spine | B-SPINE1 | Ethernet5 |
| l3leaf | B-LEAF5 | Ethernet2 | spine | B-SPINE2 | Ethernet5 |
| l3leaf | B-LEAF5 | Ethernet3 | spine | B-SPINE3 | Ethernet5 |
| l3leaf | B-LEAF5 | Ethernet4 | spine | B-SPINE4 | Ethernet5 |
| l3leaf | B-LEAF6 | Ethernet1 | spine | B-SPINE1 | Ethernet6 |
| l3leaf | B-LEAF6 | Ethernet2 | spine | B-SPINE2 | Ethernet6 |
| l3leaf | B-LEAF6 | Ethernet3 | spine | B-SPINE3 | Ethernet6 |
| l3leaf | B-LEAF6 | Ethernet4 | spine | B-SPINE4 | Ethernet6 |
| l3leaf | B-LEAF7 | Ethernet1 | spine | B-SPINE1 | Ethernet7 |
| l3leaf | B-LEAF7 | Ethernet2 | spine | B-SPINE2 | Ethernet7 |
| l3leaf | B-LEAF7 | Ethernet3 | spine | B-SPINE3 | Ethernet7 |
| l3leaf | B-LEAF7 | Ethernet4 | spine | B-SPINE4 | Ethernet7 |
| l3leaf | B-LEAF8 | Ethernet1 | spine | B-SPINE1 | Ethernet8 |
| l3leaf | B-LEAF8 | Ethernet2 | spine | B-SPINE2 | Ethernet8 |
| l3leaf | B-LEAF8 | Ethernet3 | spine | B-SPINE3 | Ethernet8 |
| l3leaf | B-LEAF8 | Ethernet4 | spine | B-SPINE4 | Ethernet8 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| B-LEAF1 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet1 | unnumbered loopback0 |
| B-LEAF1 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet1 | unnumbered loopback0 |
| B-LEAF1 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet1 | unnumbered loopback0 |
| B-LEAF1 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet1 | unnumbered loopback0 |
| B-LEAF2 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet2 | unnumbered loopback0 |
| B-LEAF2 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet2 | unnumbered loopback0 |
| B-LEAF2 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet2 | unnumbered loopback0 |
| B-LEAF2 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet2 | unnumbered loopback0 |
| B-LEAF3 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet3 | unnumbered loopback0 |
| B-LEAF3 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet3 | unnumbered loopback0 |
| B-LEAF3 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet3 | unnumbered loopback0 |
| B-LEAF3 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet3 | unnumbered loopback0 |
| B-LEAF4 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet4 | unnumbered loopback0 |
| B-LEAF4 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet4 | unnumbered loopback0 |
| B-LEAF4 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet4 | unnumbered loopback0 |
| B-LEAF4 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet4 | unnumbered loopback0 |
| B-LEAF5 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet5 | unnumbered loopback0 |
| B-LEAF5 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet5 | unnumbered loopback0 |
| B-LEAF5 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet5 | unnumbered loopback0 |
| B-LEAF5 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet5 | unnumbered loopback0 |
| B-LEAF6 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet6 | unnumbered loopback0 |
| B-LEAF6 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet6 | unnumbered loopback0 |
| B-LEAF6 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet6 | unnumbered loopback0 |
| B-LEAF6 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet6 | unnumbered loopback0 |
| B-LEAF7 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet7 | unnumbered loopback0 |
| B-LEAF7 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet7 | unnumbered loopback0 |
| B-LEAF7 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet7 | unnumbered loopback0 |
| B-LEAF7 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet7 | unnumbered loopback0 |
| B-LEAF8 | Ethernet1 | unnumbered loopback0 | B-SPINE1 | Ethernet8 | unnumbered loopback0 |
| B-LEAF8 | Ethernet2 | unnumbered loopback0 | B-SPINE2 | Ethernet8 | unnumbered loopback0 |
| B-LEAF8 | Ethernet3 | unnumbered loopback0 | B-SPINE3 | Ethernet8 | unnumbered loopback0 |
| B-LEAF8 | Ethernet4 | unnumbered loopback0 | B-SPINE4 | Ethernet8 | unnumbered loopback0 |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.0.0.0/24 | 256 | 12 | 4.69 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| SITE_B | B-LEAF1 | 10.0.0.21/32 |
| SITE_B | B-LEAF2 | 10.0.0.22/32 |
| SITE_B | B-LEAF3 | 10.0.0.23/32 |
| SITE_B | B-LEAF4 | 10.0.0.24/32 |
| SITE_B | B-LEAF5 | 10.0.0.25/32 |
| SITE_B | B-LEAF6 | 10.0.0.26/32 |
| SITE_B | B-LEAF7 | 10.0.0.27/32 |
| SITE_B | B-LEAF8 | 10.0.0.28/32 |
| SITE_B | B-SPINE1 | 10.0.0.121/32 |
| SITE_B | B-SPINE2 | 10.0.0.122/32 |
| SITE_B | B-SPINE3 | 10.0.0.123/32 |
| SITE_B | B-SPINE4 | 10.0.0.124/32 |

### ISIS CLNS interfaces

| POD | Node | CLNS Address |
| --- | ---- | ------------ |
| SITE_B | B-LEAF1 | 49.1111.0000.0001.0001.00 |
| SITE_B | B-LEAF2 | 49.1111.0000.0001.0002.00 |
| SITE_B | B-LEAF3 | 49.1111.0000.0001.0003.00 |
| SITE_B | B-LEAF4 | 49.1111.0000.0001.0004.00 |
| SITE_B | B-LEAF5 | 49.1111.0000.0001.0005.00 |
| SITE_B | B-LEAF6 | 49.1111.0000.0001.0006.00 |
| SITE_B | B-LEAF7 | 49.1111.0000.0001.0007.00 |
| SITE_B | B-LEAF8 | 49.1111.0000.0001.0008.00 |
| SITE_B | B-SPINE1 | 49.1111.0000.0000.0001.00 |
| SITE_B | B-SPINE2 | 49.1111.0000.0000.0002.00 |
| SITE_B | B-SPINE3 | 49.1111.0000.0000.0003.00 |
| SITE_B | B-SPINE4 | 49.1111.0000.0000.0004.00 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 10.2.2.0/24 | 256 | 8 | 3.13 % |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| SITE_B | B-LEAF1 | 10.2.2.21/32 |
| SITE_B | B-LEAF2 | 10.2.2.22/32 |
| SITE_B | B-LEAF3 | 10.2.2.23/32 |
| SITE_B | B-LEAF4 | 10.2.2.24/32 |
| SITE_B | B-LEAF5 | 10.2.2.25/32 |
| SITE_B | B-LEAF6 | 10.2.2.26/32 |
| SITE_B | B-LEAF7 | 10.2.2.27/32 |
| SITE_B | B-LEAF8 | 10.2.2.28/32 |
