# A-LEAF3

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [IP Name Servers](#ip-name-servers)
  - [Clock Settings](#clock-settings)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authorization](#aaa-authorization)
- [DHCP Relay](#dhcp-relay)
  - [DHCP Relay Summary](#dhcp-relay-summary)
  - [DHCP Relay Configuration](#dhcp-relay-configuration)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [MLAG](#mlag)
  - [MLAG Summary](#mlag-summary)
  - [MLAG Device Configuration](#mlag-device-configuration)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [MAC Address Table](#mac-address-table)
  - [MAC Address Table Summary](#mac-address-table-summary)
  - [MAC Address Table Device Configuration](#mac-address-table-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [ARP](#arp)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [PIM Sparse Mode](#pim-sparse-mode)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
  - [Route-maps](#route-maps)
  - [IP Extended Community RegExp Lists](#ip-extended-community-regexp-lists)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [EOS CLI](#eos-cli)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | default | 172.100.100.107/24 | - |

##### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | default | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   ip address 172.100.100.107/24
```

### DNS Domain

#### DNS domain: lab.lab

#### DNS Domain Device Configuration

```eos
dns domain lab.lab
!
```

### IP Name Servers

#### IP Name Servers Summary

| Name Server | VRF | Priority |
| ----------- | --- | -------- |
| 8.8.8.8 | default | - |
| 8.8.4.4 | default | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf default 8.8.4.4
ip name-server vrf default 8.8.8.8
```

### Clock Settings

#### Clock Timezone Settings

Clock Timezone is set to **EST**.

#### Clock Configuration

```eos
!
clock timezone EST
```

### NTP

#### NTP Summary

##### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 0.north-america.pool.ntp.org | default | True | - | - | - | - | - | - | - |
| 1.north-america.pool.ntp.org | default | - | - | - | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp server 0.north-america.pool.ntp.org prefer
ntp server 1.north-america.pool.ntp.org
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| default | - | - |

#### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf default
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| arista | 15 | network-admin | False | - |
| cvpadmin | 15 | network-admin | False | - |
| ec2-user | - | - | False | /bin/bash |
| service | - | - | False | /bin/bash |

#### Local Users Device Configuration

```eos
!
username arista privilege 15 role network-admin secret sha512 <removed>
username cvpadmin privilege 15 role network-admin secret sha512 <removed>
username ec2-user shell /bin/bash nopassword
username ec2-user ssh-key ssh-rsa ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDxTxvxMJkL/JFZ8dHFkeHb4r+E8JQ7ScqU/TRO1cBhQd98sZMuazglCSQNzOriRs9AdwZ2HdCz741HTIH7uIU7wRBfCyCHThy/FS66vvP42rMyV+/v2VuU0u6eylZg2fERjHKHpu0HYFZvlR/dxa1uNBGDGXvfXmAwBLlrV1aNXgmiejoCYpupGLu20OWQac2tYUwiVS7vNSCMEvHCTUQ/HITEn5xXhxyP/xVYIX4rXwKQdPogWc2pdJMvNt75VvIdunEthf5ZotPBq923Hvn474199W+Wp0AEPyh/JidRQSRM/X5VA1Yhj8umt8APg6RW1hvco6JwMEM6MUZN0dyvm18S35FRlsFtpypY2s8DFrIgEMf8uQxBz98wDt3aAiHiVK7zxOOrRgvibJuZYy1ZRNlOiMwGyl8ZHhSJO5HHXWVTi1YOwf0Nu/WB37KJbdc50lj0iCygPIP+X4UfIoyb+KHx4PNAC/G/+D/gxfs848QMhp2aZHvixzkGYtx0KfE= root@buildkitsandbox
username service shell /bin/bash secret sha512 <removed>
```

### AAA Authorization

#### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

#### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
!
```

## DHCP Relay

### DHCP Relay Summary

- DHCP Relay is disabled for tunnelled requests

### DHCP Relay Configuration

```eos
!
dhcp relay
   tunnel requests disabled
```

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 172.100.100.5:9910 | - | token,/tmp/token | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=172.100.100.5:9910 -cvauth=token,/tmp/token -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## MLAG

### MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| A-LEAF34 | Vlan4094 | 169.254.0.1 | Port-Channel1000 |

Dual primary detection is enabled. The detection delay is 5 seconds.

### MLAG Device Configuration

```eos
!
mlag configuration
   domain-id A-LEAF34
   local-interface Vlan4094
   peer-address 169.254.0.1
   peer-address heartbeat 172.100.100.108
   peer-link Port-Channel1000
   dual-primary detection delay 5 action errdisable all-interfaces
   reload-delay mlag 300
   reload-delay non-mlag 330
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **mstp**

#### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 0 |

#### Global Spanning-Tree Settings

- Spanning Tree disabled for VLANs: **4093-4094**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4093-4094
spanning-tree mst 0 priority 0
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 10 | Blue | - |
| 30 | Orange | - |
| 50 | Yellow | - |
| 3001 | MLAG_iBGP_PROD | LEAF_PEER_L3 |
| 3002 | MLAG_iBGP_DEV | LEAF_PEER_L3 |
| 4093 | LEAF_PEER_L3 | LEAF_PEER_L3 |
| 4094 | MLAG_PEER | MLAG |

### VLANs Device Configuration

```eos
!
vlan 10
   name Blue
!
vlan 30
   name Orange
!
vlan 50
   name Yellow
!
vlan 3001
   name MLAG_iBGP_PROD
   trunk group LEAF_PEER_L3
!
vlan 3002
   name MLAG_iBGP_DEV
   trunk group LEAF_PEER_L3
!
vlan 4093
   name LEAF_PEER_L3
   trunk group LEAF_PEER_L3
!
vlan 4094
   name MLAG_PEER
   trunk group MLAG
```

## MAC Address Table

### MAC Address Table Summary

- MAC address table entry maximum age: 1800 seconds

### MAC Address Table Device Configuration

```eos
!
mac address-table aging-time 1800
```

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet5 | MLAG_PEER_A-LEAF4_Ethernet5 | *trunk | *- | *- | *['LEAF_PEER_L3', 'MLAG'] | 1000 |
| Ethernet6 | MLAG_PEER_A-LEAF4_Ethernet6 | *trunk | *- | *- | *['LEAF_PEER_L3', 'MLAG'] | 1000 |
| Ethernet7 |  HostC_NIC1 | access | 50 | - | - | - |
| Ethernet8 | HostD_NIC1 | *access | *10 | *- | *- | 8 |

*Inherited from Port-Channel Interface

##### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_A-SPINE1_Ethernet3 | routed | - | 192.168.0.17/31 | default | 1500 | False | - | - |
| Ethernet2 | P2P_LINK_TO_A-SPINE2_Ethernet3 | routed | - | 192.168.0.19/31 | default | 1500 | False | - | - |
| Ethernet3 | P2P_LINK_TO_A-SPINE3_Ethernet3 | routed | - | 192.168.0.21/31 | default | 1500 | False | - | - |
| Ethernet4 | P2P_LINK_TO_A-SPINE4_Ethernet3 | routed | - | 192.168.0.23/31 | default | 1500 | False | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_A-SPINE1_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.17/31
   pim ipv4 sparse-mode
!
interface Ethernet2
   description P2P_LINK_TO_A-SPINE2_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.19/31
   pim ipv4 sparse-mode
!
interface Ethernet3
   description P2P_LINK_TO_A-SPINE3_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.21/31
   pim ipv4 sparse-mode
!
interface Ethernet4
   description P2P_LINK_TO_A-SPINE4_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.23/31
   pim ipv4 sparse-mode
!
interface Ethernet5
   description MLAG_PEER_A-LEAF4_Ethernet5
   no shutdown
   channel-group 1000 mode active
!
interface Ethernet6
   description MLAG_PEER_A-LEAF4_Ethernet6
   no shutdown
   channel-group 1000 mode active
!
interface Ethernet7
   description HostC_NIC1
   no shutdown
   switchport access vlan 50
   switchport mode access
   switchport
   spanning-tree portfast
!
interface Ethernet8
   description HostD_NIC1
   no shutdown
   channel-group 8 mode active
```

### Port-Channel Interfaces

#### Port-Channel Interfaces Summary

##### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel8 | HostD | switched | access | 10 | - | - | - | - | 8 | - |
| Port-Channel1000 | MLAG_PEER_A-LEAF4_Po1000 | switched | trunk | - | - | ['LEAF_PEER_L3', 'MLAG'] | - | - | - | - |

#### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel8
   description HostD
   no shutdown
   switchport
   switchport access vlan 10
   mlag 8
   spanning-tree portfast
!
interface Port-Channel1000
   description MLAG_PEER_A-LEAF4_Po1000
   no shutdown
   switchport
   switchport mode trunk
   switchport trunk group LEAF_PEER_L3
   switchport trunk group MLAG
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 10.0.0.13/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 10.1.1.13/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |


#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 10.0.0.13/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 10.1.1.13/32
```

### VLAN Interfaces

#### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan10 | Blue | PROD | - | False |
| Vlan30 | Orange | PROD | - | False |
| Vlan50 | Yellow | DEV | - | False |
| Vlan3001 | MLAG_PEER_L3_iBGP: vrf PROD | PROD | 1500 | False |
| Vlan3002 | MLAG_PEER_L3_iBGP: vrf DEV | DEV | 1500 | False |
| Vlan4093 | MLAG_PEER_L3_PEERING | default | 1500 | False |
| Vlan4094 | MLAG_PEER | default | 1500 | False |

##### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan10 |  PROD  |  -  |  10.10.10.1/24  |  -  |  -  |  -  |  -  |
| Vlan30 |  PROD  |  -  |  10.30.30.1/24  |  -  |  -  |  -  |  -  |
| Vlan50 |  DEV  |  -  |  10.50.50.1/24  |  -  |  -  |  -  |  -  |
| Vlan3001 |  PROD  |  192.0.0.0/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan3002 |  DEV  |  192.0.0.0/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4093 |  default  |  192.0.0.0/31  |  -  |  -  |  -  |  -  |  -  |
| Vlan4094 |  default  |  169.254.0.0/31  |  -  |  -  |  -  |  -  |  -  |

#### VLAN Interfaces Device Configuration

```eos
!
interface Vlan10
   description Blue
   no shutdown
   vrf PROD
   ip address virtual 10.10.10.1/24
!
interface Vlan30
   description Orange
   no shutdown
   vrf PROD
   ip address virtual 10.30.30.1/24
!
interface Vlan50
   description Yellow
   no shutdown
   vrf DEV
   ip address virtual 10.50.50.1/24
!
interface Vlan3001
   description MLAG_PEER_L3_iBGP: vrf PROD
   no shutdown
   mtu 1500
   vrf PROD
   ip address 192.0.0.0/31
!
interface Vlan3002
   description MLAG_PEER_L3_iBGP: vrf DEV
   no shutdown
   mtu 1500
   vrf DEV
   ip address 192.0.0.0/31
!
interface Vlan4093
   description MLAG_PEER_L3_PEERING
   no shutdown
   mtu 1500
   ip address 192.0.0.0/31
   pim ipv4 sparse-mode
!
interface Vlan4094
   description MLAG_PEER
   no shutdown
   mtu 1500
   no autostate
   ip address 169.254.0.0/31
```

### VXLAN Interface

#### VXLAN Interface Summary

| Setting | Value |
| ------- | ----- |
| Source Interface | Loopback0 |
| MLAG Source Interface | Loopback1 |
| UDP port | 4789 |
| EVPN MLAG Shared Router MAC | mlag-system-id |

##### VLAN to VNI, Flood List and Multicast Group Mappings

| VLAN | VNI | Flood List | Multicast Group |
| ---- | --- | ---------- | --------------- |
| 10 | 10010 | - | - |
| 30 | 10030 | - | - |
| 50 | 10050 | - | - |

##### VRF to VNI and Multicast Group Mappings

| VRF | VNI | Multicast Group |
| ---- | --- | --------------- |
| DEV | 50002 | - |
| PROD | 50001 | - |

#### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   description A-LEAF3_VTEP
   vxlan source-interface Loopback0
   vxlan virtual-router encapsulation mac-address mlag-system-id
   vxlan udp-port 4789
   vxlan vlan 10 vni 10010
   vxlan vlan 30 vni 10030
   vxlan vlan 50 vni 10050
   vxlan vrf DEV vni 50002
   vxlan vrf PROD vni 50001
   vxlan mlag source-interface Loopback1
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### Virtual Router MAC Address

#### Virtual Router MAC Address Summary

##### Virtual Router MAC Address: 00:1c:73:00:00:01

#### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:00:01
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | True |
| DEV | True |
| PROD | True |

#### IP Routing Device Configuration

```eos
!
ip routing
ip routing vrf DEV
ip routing vrf PROD
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| default | false |
| DEV | false |
| PROD | false |

### ARP

Global ARP timeout: 1500

### Router BGP

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65134 | 10.0.0.13 |

| BGP Tuning |
| ---------- |
| graceful-restart restart-time 300 |
| graceful-restart |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

#### Router BGP Peer Groups

##### LOCAL-EVPN-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

##### LOCAL-IPV4-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Send community | all |
| Maximum routes | 12000 |

##### MLAG-IPV4-PEER

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Remote AS | 65134 |
| Next-hop self | True |
| Send community | all |
| Maximum routes | 12000 |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- |
| 10.0.0.111 | 65100 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.112 | 65100 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.113 | 65100 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.114 | 65100 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 192.0.0.1 | Inherited from peer group MLAG-IPV4-PEER | default | - | Inherited from peer group MLAG-IPV4-PEER | Inherited from peer group MLAG-IPV4-PEER | - | - | - | - | - |
| 192.168.0.16 | 65100 | default | - | Inherited from peer group LOCAL-IPV4-PEERS | Inherited from peer group LOCAL-IPV4-PEERS | - | - | - | - | - |
| 192.168.0.18 | 65100 | default | - | Inherited from peer group LOCAL-IPV4-PEERS | Inherited from peer group LOCAL-IPV4-PEERS | - | - | - | - | - |
| 192.168.0.20 | 65100 | default | - | Inherited from peer group LOCAL-IPV4-PEERS | Inherited from peer group LOCAL-IPV4-PEERS | - | - | - | - | - |
| 192.168.0.22 | 65100 | default | - | Inherited from peer group LOCAL-IPV4-PEERS | Inherited from peer group LOCAL-IPV4-PEERS | - | - | - | - | - |
| 192.0.0.1 | Inherited from peer group MLAG-IPV4-PEER | DEV | - | Inherited from peer group MLAG-IPV4-PEER | Inherited from peer group MLAG-IPV4-PEER | - | - | - | - | - |
| 192.0.0.1 | Inherited from peer group MLAG-IPV4-PEER | PROD | - | Inherited from peer group MLAG-IPV4-PEER | Inherited from peer group MLAG-IPV4-PEER | - | - | - | - | - |

#### Router BGP EVPN Address Family

- VPN import pruning is __enabled__

##### EVPN Peer Groups

| Peer Group | Activate | Encapsulation |
| ---------- | -------- | ------------- |
| LOCAL-EVPN-PEERS | True | default |

#### Router BGP VLANs

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 10 | 10.0.0.13:10010 | 10010:10010 | - | - | learned |
| 30 | 10.0.0.13:10030 | 10030:10030 | - | - | learned |
| 50 | 10.0.0.13:10050 | 10050:10050 | - | - | learned |

#### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| DEV | 10.0.0.13:50002 | connected |
| PROD | 10.0.0.13:50001 | connected |

#### Router BGP Device Configuration

```eos
!
router bgp 65134
   router-id 10.0.0.13
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   no bgp default ipv4-unicast
   neighbor LOCAL-EVPN-PEERS peer group
   neighbor LOCAL-EVPN-PEERS update-source Loopback0
   neighbor LOCAL-EVPN-PEERS bfd
   neighbor LOCAL-EVPN-PEERS ebgp-multihop 3
   neighbor LOCAL-EVPN-PEERS send-community
   neighbor LOCAL-EVPN-PEERS maximum-routes 0
   neighbor LOCAL-IPV4-PEERS peer group
   neighbor LOCAL-IPV4-PEERS send-community
   neighbor LOCAL-IPV4-PEERS maximum-routes 12000
   neighbor MLAG-IPV4-PEER peer group
   neighbor MLAG-IPV4-PEER remote-as 65134
   neighbor MLAG-IPV4-PEER next-hop-self
   neighbor MLAG-IPV4-PEER description A-LEAF4
   neighbor MLAG-IPV4-PEER send-community
   neighbor MLAG-IPV4-PEER maximum-routes 12000
   neighbor MLAG-IPV4-PEER route-map RM-MLAG-PEER-OUT out
   neighbor 10.0.0.111 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.111 remote-as 65100
   neighbor 10.0.0.111 description A-SPINE1
   neighbor 10.0.0.112 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.112 remote-as 65100
   neighbor 10.0.0.112 description A-SPINE2
   neighbor 10.0.0.113 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.113 remote-as 65100
   neighbor 10.0.0.113 description A-SPINE3
   neighbor 10.0.0.114 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.114 remote-as 65100
   neighbor 10.0.0.114 description A-SPINE4
   neighbor 192.0.0.1 peer group MLAG-IPV4-PEER
   neighbor 192.0.0.1 description A-LEAF4
   neighbor 192.168.0.16 peer group LOCAL-IPV4-PEERS
   neighbor 192.168.0.16 remote-as 65100
   neighbor 192.168.0.16 description A-SPINE1_Ethernet3
   neighbor 192.168.0.18 peer group LOCAL-IPV4-PEERS
   neighbor 192.168.0.18 remote-as 65100
   neighbor 192.168.0.18 description A-SPINE2_Ethernet3
   neighbor 192.168.0.20 peer group LOCAL-IPV4-PEERS
   neighbor 192.168.0.20 remote-as 65100
   neighbor 192.168.0.20 description A-SPINE3_Ethernet3
   neighbor 192.168.0.22 peer group LOCAL-IPV4-PEERS
   neighbor 192.168.0.22 remote-as 65100
   neighbor 192.168.0.22 description A-SPINE4_Ethernet3
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan 10
      rd 10.0.0.13:10010
      route-target both 10010:10010
      redistribute learned
   !
   vlan 30
      rd 10.0.0.13:10030
      route-target both 10030:10030
      redistribute learned
   !
   vlan 50
      rd 10.0.0.13:10050
      route-target both 10050:10050
      redistribute learned
   !
   address-family evpn
      neighbor LOCAL-EVPN-PEERS activate
      route import match-failure action discard
   !
   address-family ipv4
      no neighbor LOCAL-EVPN-PEERS activate
      neighbor LOCAL-IPV4-PEERS activate
      neighbor MLAG-IPV4-PEER activate
   !
   vrf DEV
      rd 10.0.0.13:50002
      route-target import evpn 50002:50002
      route-target export evpn 50002:50002
      router-id 10.0.0.13
      neighbor 192.0.0.1 peer group MLAG-IPV4-PEER
      redistribute connected
   !
   vrf PROD
      rd 10.0.0.13:50001
      route-target import evpn 50001:50001
      route-target export evpn 50001:50001
      router-id 10.0.0.13
      neighbor 192.0.0.1 peer group MLAG-IPV4-PEER
      redistribute connected
```

## BFD

### Router BFD

#### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

#### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

## Multicast

### IP IGMP Snooping

#### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

#### IP IGMP Snooping Device Configuration

```eos
```

### Router Multicast

#### IP Router Multicast Summary

- Routing for IPv4 multicast is enabled.
- Software forwarding by the Software Forwarding Engine (SFE)

#### Router Multicast Device Configuration

```eos
!
router multicast
   ipv4
      routing
      software-forwarding sfe
```


### PIM Sparse Mode

#### PIM Sparse Mode enabled interfaces

| Interface Name | VRF Name | IP Version | DR Priority | Local Interface |
| -------------- | -------- | ---------- | ----------- | --------------- |
| Ethernet1 | - | IPv4 | - | - |
| Ethernet2 | - | IPv4 | - | - |
| Ethernet3 | - | IPv4 | - | - |
| Ethernet4 | - | IPv4 | - | - |
| Vlan4093 | - | IPv4 | - | - |

## Filters

### Prefix-lists

#### Prefix-lists Summary

##### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 10.0.0.0/24 eq 32 |
| 20 | permit 10.1.1.0/24 eq 32 |

#### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 10.0.0.0/24 eq 32
   seq 20 permit 10.1.1.0/24 eq 32
```

### Route-maps

#### Route-maps Summary

##### RM-CONN-2-BGP

| Sequence | Type | Match | Set | Sub-Route-Map | Continue |
| -------- | ---- | ----- | --- | ------------- | -------- |
| 10 | permit | ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY | - | - | - |

##### RM-MLAG-PEER-OUT

| Sequence | Type | Match | Set | Sub-Route-Map | Continue |
| -------- | ---- | ----- | --- | ------------- | -------- |
| 10 | deny | extcommunity evpn-imported | - | - | - |
| 20 | permit | - | origin incomplete | - | - |

#### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
!
route-map RM-MLAG-PEER-OUT deny 10
   match extcommunity evpn-imported
!
route-map RM-MLAG-PEER-OUT permit 20
   set origin incomplete
```

### IP Extended Community RegExp Lists

#### IP Extended Community RegExp Lists Summary

| List Name | Type | Regular Expression |
| --------- | ---- | ------------------ |
| evpn-imported | permit | RT.* |

#### IP Extended Community RegExp Lists configuration

```eos
!
ip extcommunity-list regexp evpn-imported permit RT.*
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| DEV | enabled |
| PROD | enabled |

### VRF Instances Device Configuration

```eos
!
vrf instance DEV
!
vrf instance PROD
```

## EOS CLI

```eos
!
agent KernelFib environment KERNELFIB_PROGRAM_ALL_ECMP='true'

```
