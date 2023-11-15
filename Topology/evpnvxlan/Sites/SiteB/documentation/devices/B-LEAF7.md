# B-LEAF7

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
  - [Link Tracking](#link-tracking)
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
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [ARP](#arp)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
  - [Router Multicast](#router-multicast)
  - [PIM Sparse Mode](#pim-sparse-mode)
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
| Management1 | oob_management | oob | default | 172.100.100.124/24 | - |

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
   ip address 172.100.100.124/24
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

### Link Tracking

#### Link Tracking Groups Summary

| Group Name | Minimum Links | Recovery Delay |
| ---------- | ------------- | -------------- |
| ES-LINKS | - | 300 |

#### Link Tracking Groups Configuration

```eos
!
link tracking group ES-LINKS
   recovery delay 300
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **mstp**

#### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 0 |

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
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
| 20 | Green | - |
| 60 | Red | - |
| 70 | Brown | - |

### VLANs Device Configuration

```eos
!
vlan 10
   name Blue
!
vlan 20
   name Green
!
vlan 60
   name Red
!
vlan 70
   name Brown
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

*Inherited from Port-Channel Interface

##### Link Tracking Groups

| Interface | Group Name | Direction |
| --------- | ---------- | --------- |
| Ethernet1 | ES-LINKS | upstream |
| Ethernet2 | ES-LINKS | upstream |
| Ethernet3 | ES-LINKS | upstream |
| Ethernet4 | ES-LINKS | upstream |

##### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_B-SPINE1_Ethernet7 | routed | - | unnumbered loopback0 | default | 1500 | False | - | - |
| Ethernet2 | P2P_LINK_TO_B-SPINE2_Ethernet7 | routed | - | unnumbered loopback0 | default | 1500 | False | - | - |
| Ethernet3 | P2P_LINK_TO_B-SPINE3_Ethernet7 | routed | - | unnumbered loopback0 | default | 1500 | False | - | - |
| Ethernet4 | P2P_LINK_TO_B-SPINE4_Ethernet7 | routed | - | unnumbered loopback0 | default | 1500 | False | - | - |
| Ethernet7 | P2P_LINK_TO_BB1_Ethernet3 | routed | - | 172.16.2.1/31 | default | 1500 | False | - | - |
| Ethernet8 | P2P_LINK_TO_BB2_Ethernet3 | routed | - | 172.16.2.5/31 | default | 1500 | False | - | - |

##### ISIS

| Interface | Channel Group | ISIS Instance | ISIS Metric | Mode | ISIS Circuit Type | Hello Padding | Authentication Mode |
| --------- | ------------- | ------------- | ----------- | ---- | ----------------- | ------------- | ------------------- |
| Ethernet1 | - | 100 | 10 | point-to-point | level-2 | - | - |
| Ethernet2 | - | 100 | 10 | point-to-point | level-2 | - | - |
| Ethernet3 | - | 100 | 10 | point-to-point | level-2 | - | - |
| Ethernet4 | - | 100 | 10 | point-to-point | level-2 | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_B-SPINE1_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address unnumbered loopback0
   pim ipv4 sparse-mode
   isis enable 100
   isis circuit-type level-2
   isis metric 10
   isis network point-to-point
   link tracking group ES-LINKS upstream
!
interface Ethernet2
   description P2P_LINK_TO_B-SPINE2_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address unnumbered loopback0
   pim ipv4 sparse-mode
   isis enable 100
   isis circuit-type level-2
   isis metric 10
   isis network point-to-point
   link tracking group ES-LINKS upstream
!
interface Ethernet3
   description P2P_LINK_TO_B-SPINE3_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address unnumbered loopback0
   pim ipv4 sparse-mode
   isis enable 100
   isis circuit-type level-2
   isis metric 10
   isis network point-to-point
   link tracking group ES-LINKS upstream
!
interface Ethernet4
   description P2P_LINK_TO_B-SPINE4_Ethernet7
   no shutdown
   mtu 1500
   no switchport
   ip address unnumbered loopback0
   pim ipv4 sparse-mode
   isis enable 100
   isis circuit-type level-2
   isis metric 10
   isis network point-to-point
   link tracking group ES-LINKS upstream
!
interface Ethernet7
   description P2P_LINK_TO_BB1_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 172.16.2.1/31
!
interface Ethernet8
   description P2P_LINK_TO_BB2_Ethernet3
   no shutdown
   mtu 1500
   no switchport
   ip address 172.16.2.5/31
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 10.0.0.27/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 10.2.2.27/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |

##### ISIS

| Interface | ISIS instance | ISIS metric | Interface mode |
| --------- | ------------- | ----------- | -------------- |
| Loopback0 | 100 | - | passive |
| Loopback1 | 100 | - | passive |

#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 10.0.0.27/32
   isis enable 100
   isis passive
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 10.2.2.27/32
   isis enable 100
   isis passive
```

### VLAN Interfaces

#### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan10 | Blue | PROD | - | False |
| Vlan20 | Green | PROD | - | False |
| Vlan60 | Red | DEV | - | False |
| Vlan70 | Brown | DEV | - | False |

##### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan10 |  PROD  |  -  |  10.10.10.1/24  |  -  |  -  |  -  |  -  |
| Vlan20 |  PROD  |  -  |  10.20.20.1/24  |  -  |  -  |  -  |  -  |
| Vlan60 |  DEV  |  -  |  10.60.60.1/24  |  -  |  -  |  -  |  -  |
| Vlan70 |  DEV  |  -  |  10.70.70.1/24  |  -  |  -  |  -  |  -  |

#### VLAN Interfaces Device Configuration

```eos
!
interface Vlan10
   description Blue
   no shutdown
   vrf PROD
   ip address virtual 10.10.10.1/24
!
interface Vlan20
   description Green
   no shutdown
   vrf PROD
   ip address virtual 10.20.20.1/24
!
interface Vlan60
   description Red
   no shutdown
   vrf DEV
   ip address virtual 10.60.60.1/24
!
interface Vlan70
   description Brown
   no shutdown
   vrf DEV
   ip address virtual 10.70.70.1/24
```

### VXLAN Interface

#### VXLAN Interface Summary

| Setting | Value |
| ------- | ----- |
| Source Interface | Loopback1 |
| UDP port | 4789 |

##### VLAN to VNI, Flood List and Multicast Group Mappings

| VLAN | VNI | Flood List | Multicast Group |
| ---- | --- | ---------- | --------------- |
| 10 | 10010 | - | - |
| 20 | 10020 | - | - |
| 60 | 10060 | - | - |
| 70 | 10070 | - | - |

##### VRF to VNI and Multicast Group Mappings

| VRF | VNI | Multicast Group |
| ---- | --- | --------------- |
| DEV | 50002 | - |
| PROD | 50001 | - |

#### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   description B-LEAF7_VTEP
   vxlan source-interface Loopback1
   vxlan udp-port 4789
   vxlan vlan 10 vni 10010
   vxlan vlan 20 vni 10020
   vxlan vlan 60 vni 10060
   vxlan vlan 70 vni 10070
   vxlan vrf DEV vni 50002
   vxlan vrf PROD vni 50001
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

### Router ISIS

#### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | 100 |
| Net-ID | 49.1111.0000.0001.0007.00 |
| Type | level-2 |
| Router-ID | 10.0.0.27 |
| Log Adjacency Changes | True |

#### ISIS Interfaces Summary

| Interface | ISIS Instance | ISIS Metric | Interface Mode |
| --------- | ------------- | ----------- | -------------- |
| Ethernet1 | 100 | 10 | point-to-point |
| Ethernet2 | 100 | 10 | point-to-point |
| Ethernet3 | 100 | 10 | point-to-point |
| Ethernet4 | 100 | 10 | point-to-point |
| Loopback0 | 100 | - | passive |
| Loopback1 | 100 | - | passive |

#### ISIS IPv4 Address Family Summary

| Settings | Value |
| -------- | ----- |
| IPv4 Address-family Enabled | True |
| Maximum-paths | 4 |

#### Router ISIS Device Configuration

```eos
!
router isis 100
   net 49.1111.0000.0001.0007.00
   is-type level-2
   router-id ipv4 10.0.0.27
   log-adjacency-changes
   !
   address-family ipv4 unicast
      maximum-paths 4
   !
```

### Router BGP

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65200 | 10.0.0.27 |

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

##### REMOTE-EVPN-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Local AS | 65000 |
| Source | Loopback0 |
| Ebgp multihop | 15 |
| Send community | all |
| Maximum routes | 0 (no limit) |

##### REMOTE-IPV4-PEERS

| Settings | Value |
| -------- | ----- |
| Remote AS | 65000 |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- |
| 10.0.0.121 | 65200 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.122 | 65200 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.123 | 65200 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.124 | 65200 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 172.16.0.1 | 65000 | default | - | Inherited from peer group REMOTE-EVPN-PEERS | Inherited from peer group REMOTE-EVPN-PEERS | - | - | - | - | - |
| 172.16.0.2 | 65000 | default | - | Inherited from peer group REMOTE-EVPN-PEERS | Inherited from peer group REMOTE-EVPN-PEERS | - | - | - | - | - |
| 172.16.2.0 | Inherited from peer group REMOTE-IPV4-PEERS | default | - | - | - | - | - | - | - | - |
| 172.16.2.4 | Inherited from peer group REMOTE-IPV4-PEERS | default | - | - | - | - | - | - | - | - |

#### Router BGP EVPN Address Family

- VPN import pruning is __enabled__

##### EVPN Peer Groups

| Peer Group | Activate | Encapsulation |
| ---------- | -------- | ------------- |
| LOCAL-EVPN-PEERS | True | default |
| REMOTE-EVPN-PEERS | True | default |

##### EVPN DCI Gateway Summary

| Settings | Value |
| -------- | ----- |
| Remote Domain Peer Groups | REMOTE-EVPN-PEERS |
| L3 Gateway Configured | True |
| L3 Gateway Inter-domain | True |

#### Router BGP VLANs

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 10 | 10.0.0.27:10010 | 10010:10010<br>remote 10010:10010 | - | - | learned |
| 20 | 10.0.0.27:10020 | 10020:10020<br>remote 10020:10020 | - | - | learned |
| 60 | 10.0.0.27:10060 | 10060:10060<br>remote 10060:10060 | - | - | learned |
| 70 | 10.0.0.27:10070 | 10070:10070<br>remote 10070:10070 | - | - | learned |

#### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| DEV | 10.0.0.27:50002 | connected |
| PROD | 10.0.0.27:50001 | connected |

#### Router BGP Device Configuration

```eos
!
router bgp 65200
   router-id 10.0.0.27
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
   neighbor REMOTE-EVPN-PEERS peer group
   neighbor REMOTE-EVPN-PEERS local-as 65000 no-prepend replace-as
   neighbor REMOTE-EVPN-PEERS update-source Loopback0
   neighbor REMOTE-EVPN-PEERS ebgp-multihop 15
   neighbor REMOTE-EVPN-PEERS send-community
   neighbor REMOTE-EVPN-PEERS maximum-routes 0
   neighbor REMOTE-IPV4-PEERS peer group
   neighbor REMOTE-IPV4-PEERS remote-as 65000
   neighbor 10.0.0.121 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.121 remote-as 65200
   neighbor 10.0.0.121 description B-SPINE1
   neighbor 10.0.0.122 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.122 remote-as 65200
   neighbor 10.0.0.122 description B-SPINE2
   neighbor 10.0.0.123 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.123 remote-as 65200
   neighbor 10.0.0.123 description B-SPINE3
   neighbor 10.0.0.124 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.124 remote-as 65200
   neighbor 10.0.0.124 description B-SPINE4
   neighbor 172.16.0.1 peer group REMOTE-EVPN-PEERS
   neighbor 172.16.0.1 remote-as 65000
   neighbor 172.16.0.1 description BB1
   neighbor 172.16.0.2 peer group REMOTE-EVPN-PEERS
   neighbor 172.16.0.2 remote-as 65000
   neighbor 172.16.0.2 description BB2
   neighbor 172.16.2.0 peer group REMOTE-IPV4-PEERS
   neighbor 172.16.2.4 peer group REMOTE-IPV4-PEERS
   !
   vlan 10
      rd 10.0.0.27:10010
      rd evpn domain remote 10.0.0.27:10010
      route-target both 10010:10010
      route-target import export evpn domain remote 10010:10010
      redistribute learned
   !
   vlan 20
      rd 10.0.0.27:10020
      rd evpn domain remote 10.0.0.27:10020
      route-target both 10020:10020
      route-target import export evpn domain remote 10020:10020
      redistribute learned
   !
   vlan 60
      rd 10.0.0.27:10060
      rd evpn domain remote 10.0.0.27:10060
      route-target both 10060:10060
      route-target import export evpn domain remote 10060:10060
      redistribute learned
   !
   vlan 70
      rd 10.0.0.27:10070
      rd evpn domain remote 10.0.0.27:10070
      route-target both 10070:10070
      route-target import export evpn domain remote 10070:10070
      redistribute learned
   !
   address-family evpn
      neighbor LOCAL-EVPN-PEERS activate
      neighbor REMOTE-EVPN-PEERS activate
      neighbor REMOTE-EVPN-PEERS domain remote
      neighbor default next-hop-self received-evpn-routes route-type ip-prefix inter-domain
      route import match-failure action discard
   !
   address-family ipv4
      no neighbor LOCAL-EVPN-PEERS activate
      no neighbor REMOTE-EVPN-PEERS activate
      neighbor REMOTE-IPV4-PEERS activate
      network 10.0.0.27/32
      network 10.0.0.28/32
      network 10.2.2.27/32
   !
   vrf DEV
      rd 10.0.0.27:50002
      route-target import evpn 50002:50002
      route-target export evpn 50002:50002
      router-id 10.0.0.27
      redistribute connected
   !
   vrf PROD
      rd 10.0.0.27:50001
      route-target import evpn 50001:50001
      route-target export evpn 50001:50001
      router-id 10.0.0.27
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
