# B-SPINE1

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
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
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
- [EOS CLI](#eos-cli)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | default | 172.100.100.114/24 | - |

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
   ip address 172.100.100.114/24
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
| Ethernet1 | P2P_LINK_TO_B-LEAF1_Ethernet1 | routed | - | 9.9.9.0/31 | default | 1500 | False | - | - |
| Ethernet2 | P2P_LINK_TO_B-LEAF2_Ethernet1 | routed | - | 9.9.9.8/31 | default | 1500 | False | - | - |
| Ethernet3 | P2P_LINK_TO_B-LEAF3_Ethernet1 | routed | - | 9.9.9.16/31 | default | 1500 | False | - | - |
| Ethernet4 | P2P_LINK_TO_B-LEAF4_Ethernet1 | routed | - | 9.9.9.24/31 | default | 1500 | False | - | - |
| Ethernet5 | P2P_LINK_TO_B-LEAF5_Ethernet1 | routed | - | 9.9.9.32/31 | default | 1500 | False | - | - |
| Ethernet6 | P2P_LINK_TO_B-LEAF6_Ethernet1 | routed | - | 9.9.9.40/31 | default | 1500 | False | - | - |
| Ethernet7 | P2P_LINK_TO_B-LEAF7_Ethernet1 | routed | - | 9.9.9.48/31 | default | 1500 | False | - | - |
| Ethernet8 | P2P_LINK_TO_B-LEAF8_Ethernet1 | routed | - | 9.9.9.56/31 | default | 1500 | False | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_B-LEAF1_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.0/31
!
interface Ethernet2
   description P2P_LINK_TO_B-LEAF2_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.8/31
!
interface Ethernet3
   description P2P_LINK_TO_B-LEAF3_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.16/31
!
interface Ethernet4
   description P2P_LINK_TO_B-LEAF4_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.24/31
!
interface Ethernet5
   description P2P_LINK_TO_B-LEAF5_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.32/31
!
interface Ethernet6
   description P2P_LINK_TO_B-LEAF6_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.40/31
!
interface Ethernet7
   description P2P_LINK_TO_B-LEAF7_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.48/31
!
interface Ethernet8
   description P2P_LINK_TO_B-LEAF8_Ethernet1
   no shutdown
   mtu 1500
   no switchport
   ip address 9.9.9.56/31
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 10.0.0.121/32 |

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
   ip address 10.0.0.121/32
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

#### IP Routing Device Configuration

```eos
!
ip routing
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| default | false |

### Router BGP

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65200 | 10.0.0.121 |

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
| 9.9.9.1 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.9 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.17 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.25 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.33 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.41 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.49 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 9.9.9.57 | 65200 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - | - | - |
| 10.0.0.21 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.22 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.23 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.24 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.25 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.26 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.27 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |
| 10.0.0.28 | 65200 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - | - | - |

#### Router BGP EVPN Address Family

##### EVPN Peer Groups

| Peer Group | Activate | Encapsulation |
| ---------- | -------- | ------------- |
| EVPN-OVERLAY-PEERS | True | default |

#### Router BGP Device Configuration

```eos
!
router bgp 65200
   router-id 10.0.0.121
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
   neighbor 9.9.9.1 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.1 remote-as 65200
   neighbor 9.9.9.1 description B-LEAF1_Ethernet1
   neighbor 9.9.9.9 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.9 remote-as 65200
   neighbor 9.9.9.9 description B-LEAF2_Ethernet1
   neighbor 9.9.9.17 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.17 remote-as 65200
   neighbor 9.9.9.17 description B-LEAF3_Ethernet1
   neighbor 9.9.9.25 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.25 remote-as 65200
   neighbor 9.9.9.25 description B-LEAF4_Ethernet1
   neighbor 9.9.9.33 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.33 remote-as 65200
   neighbor 9.9.9.33 description B-LEAF5_Ethernet1
   neighbor 9.9.9.41 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.41 remote-as 65200
   neighbor 9.9.9.41 description B-LEAF6_Ethernet1
   neighbor 9.9.9.49 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.49 remote-as 65200
   neighbor 9.9.9.49 description B-LEAF7_Ethernet1
   neighbor 9.9.9.57 peer group IPv4-UNDERLAY-PEERS
   neighbor 9.9.9.57 remote-as 65200
   neighbor 9.9.9.57 description B-LEAF8_Ethernet1
   neighbor 10.0.0.21 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.21 remote-as 65200
   neighbor 10.0.0.21 description B-LEAF1
   neighbor 10.0.0.22 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.22 remote-as 65200
   neighbor 10.0.0.22 description B-LEAF2
   neighbor 10.0.0.23 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.23 remote-as 65200
   neighbor 10.0.0.23 description B-LEAF3
   neighbor 10.0.0.24 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.24 remote-as 65200
   neighbor 10.0.0.24 description B-LEAF4
   neighbor 10.0.0.25 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.25 remote-as 65200
   neighbor 10.0.0.25 description B-LEAF5
   neighbor 10.0.0.26 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.26 remote-as 65200
   neighbor 10.0.0.26 description B-LEAF6
   neighbor 10.0.0.27 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.27 remote-as 65200
   neighbor 10.0.0.27 description B-LEAF7
   neighbor 10.0.0.28 peer group EVPN-OVERLAY-PEERS
   neighbor 10.0.0.28 remote-as 65200
   neighbor 10.0.0.28 description B-LEAF8
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

### VRF Instances Device Configuration

```eos
```

## EOS CLI

```eos
!
agent KernelFib environment KERNELFIB_PROGRAM_ALL_ECMP='true'

```
