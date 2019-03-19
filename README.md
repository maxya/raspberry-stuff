### Raspberry PI

### Burn iso to SD-Card

```
dd bs=4M if=2018-11-13-raspbian-stretch.img of=/dev/sdX status=progress conv=fsync
```


### Headless setup

1. Create `ssh` in `/boot`
2. Create `wpa_supplicant.conf` in `/boot`

```
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
    ssid="honet"
    psk="UPDATE_ME"
    key_mgmt=WPA-PSK
    priority=5
}
```

or 

```
  network={
      ssid="testing"
      #psk="testingPassword"
      psk=131e1e221f6e06e3911a2d11ff2fac9182665c004de85300f9cac208a6a80531
  }
```

where psk is `wpa_passphrase "testing"`

multiple networks 

```
network={
    ssid="SchoolNetworkSSID"
    psk="passwordSchool"
    id_str="school"
}

network={
    ssid="HomeNetworkSSID"
    psk="passwordHome"
    id_str="home"
}
```


## Camera

### Camera module
```
sudo modprobe bcm2835-v4l2
```

### VLC stream

```
cvlc v4l2:///dev/video0 --v4l2-width 640 --v4l2-height 480 v4l2-chroma h264 --sout  '#standard{access=http,mux=ts,dst=0.0.0.0:8082}'
```
