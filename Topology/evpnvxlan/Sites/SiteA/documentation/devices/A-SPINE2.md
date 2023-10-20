# A-SPINE2

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [IP Name Servers](#ip-name-servers)
  - [Clock Settings](#clock-settings)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authorization](#aaa-authorization)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
  - [Route-maps](#route-maps)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 172.100.100.102/24 | - |

##### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 172.100.100.102/24
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
| 8.8.8.8 | MGMT | - |
| 8.8.4.4 | MGMT | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf MGMT 8.8.4.4
ip name-server vrf MGMT 8.8.8.8
```

### Clock Settings

#### Clock Timezone Settings

Clock Timezone is set to **EST**.

#### Clock Configuration

```eos
!
clock timezone EST
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |

#### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| cvpadmin | 15 | network-admin | False | - |

#### Local Users Device Configuration

```eos
!
username cvpadmin privilege 15 role network-admin secret sha512 <removed>
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

## Spanning Tree

### Spanning Tree Summary

STP mode: **none**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
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

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |

*Inherited from Port-Channel Interface

##### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_A-LEAF1_Ethernet2 | routed | - | 192.168.0.2/31 | default | 1500 | False | - | - |
| Ethernet2 | P2P_LINK_TO_A-LEAF2_Ethernet2 | routed | - | 192.168.0.10/31 | default | 1500 | False | - | - |
| Ethernet3 | P2P_LINK_TO_A-LEAF3_Ethernet2 | routed | - | 192.168.0.18/31 | default | 1500 | False | - | - |
| Ethernet4 | P2P_LINK_TO_A-LEAF4_Ethernet2 | routed | - | 192.168.0.26/31 | default | 1500 | False | - | - |
| Ethernet5 | P2P_LINK_TO_A-LEAF5_Ethernet2 | routed | - | 192.168.0.34/31 | default | 1500 | False | - | - |
| Ethernet6 | P2P_LINK_TO_A-LEAF6_Ethernet2 | routed | - | 192.168.0.42/31 | default | 1500 | False | - | - |
| Ethernet7 | P2P_LINK_TO_A-LEAF7_Ethernet2 | routed | - | 192.168.0.50/31 | default | 1500 | False | - | - |
| Ethernet8 | P2P_LINK_TO_A-LEAF8_Ethernet2 | routed | - | 192.168.0.58/31 | default | 1500 | False | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_A-LEAF1_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.2/31
!
interface Ethernet2
   description P2P_LINK_TO_A-LEAF2_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.10/31
!
interface Ethernet3
   description P2P_LINK_TO_A-LEAF3_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.18/31
!
interface Ethernet4
   description P2P_LINK_TO_A-LEAF4_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.26/31
!
interface Ethernet5
   description P2P_LINK_TO_A-LEAF5_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.34/31
!
interface Ethernet6
   description P2P_LINK_TO_A-LEAF6_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.42/31
!
interface Ethernet7
   description P2P_LINK_TO_A-LEAF7_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.50/31
!
interface Ethernet8
   description P2P_LINK_TO_A-LEAF8_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.58/31
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 10.0.0.112/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |


#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 10.0.0.112/32
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | True |
| MGMT | False |

#### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| MGMT | false |

### Router BGP

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65100 | 10.0.0.112 |

| BGP Tuning |
| ---------- |
| graceful-restart restart-time 300 |
| graceful-restart |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

#### Router BGP Peer Groups

##### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Next-hop unchanged | True |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

##### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Send community | all |
| Maximum routes | 12000 |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- |
| 10.0.0.11 | 65112 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.12 | 65112 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.13 | 65134 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.14 | 65134 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.15 | 65156 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.16 | 65156 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.17 | 65178 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.18 | 65178 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 192.168.0.3 | 65112 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.11 | 65112 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.19 | 65134 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.27 | 65134 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.35 | 65156 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.43 | 65156 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.51 | 65178 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 192.168.0.59 | 65178 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |

#### Router BGP EVPN Address Family

##### EVPN Peer Groups

| Peer Group | Activate | Encapsulation |
| ---------- | -------- | ------------- |
| EVPN-OVERLAY-PEERS | True | default |

#### Router BGP Device Configuration

```eos
!
router bgp 65100
   router-id 10.0.0.112
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   no bgp default ipv4-unicast
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS next-hop-unchanged
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 3
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 10.0.0.11 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.11 remote-as 65112
   neighbor 10.0.0.11 description A-LEAF1
   neighbor 10.0.0.12 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.12 remote-as 65112
   neighbor 10.0.0.12 description A-LEAF2
   neighbor 10.0.0.13 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.13 remote-as 65134
   neighbor 10.0.0.13 description A-LEAF3
   neighbor 10.0.0.14 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.14 remote-as 65134
   neighbor 10.0.0.14 description A-LEAF4
   neighbor 10.0.0.15 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.15 remote-as 65156
   neighbor 10.0.0.15 description A-LEAF5
   neighbor 10.0.0.16 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.16 remote-as 65156
   neighbor 10.0.0.16 description A-LEAF6
   neighbor 10.0.0.17 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.17 remote-as 65178
   neighbor 10.0.0.17 description A-LEAF7
   neighbor 10.0.0.18 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.18 remote-as 65178
   neighbor 10.0.0.18 description A-LEAF8
   neighbor 192.168.0.3 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.3 remote-as 65112
   neighbor 192.168.0.3 description A-LEAF1_Ethernet2
   neighbor 192.168.0.11 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.11 remote-as 65112
   neighbor 192.168.0.11 description A-LEAF2_Ethernet2
   neighbor 192.168.0.19 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.19 remote-as 65134
   neighbor 192.168.0.19 description A-LEAF3_Ethernet2
   neighbor 192.168.0.27 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.27 remote-as 65134
   neighbor 192.168.0.27 description A-LEAF4_Ethernet2
   neighbor 192.168.0.35 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.35 remote-as 65156
   neighbor 192.168.0.35 description A-LEAF5_Ethernet2
   neighbor 192.168.0.43 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.43 remote-as 65156
   neighbor 192.168.0.43 description A-LEAF6_Ethernet2
   neighbor 192.168.0.51 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.51 remote-as 65178
   neighbor 192.168.0.51 description A-LEAF7_Ethernet2
   neighbor 192.168.0.59 peer group IPv4-UNDERLAY-PEERS
   neighbor 192.168.0.59 remote-as 65178
   neighbor 192.168.0.59 description A-LEAF8_Ethernet2
   redistribute connected route-map RM-CONN-2-BGP
   !
   address-family evpn
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
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

## Filters

### Prefix-lists

#### Prefix-lists Summary

##### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 10.0.0.0/24 eq 32 |

#### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 10.0.0.0/24 eq 32
```

### Route-maps

#### Route-maps Summary

##### RM-CONN-2-BGP

| Sequence | Type | Match | Set | Sub-Route-Map | Continue |
| -------- | ---- | ----- | --- | ------------- | -------- |
| 10 | permit | ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY | - | - | - |

#### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```
