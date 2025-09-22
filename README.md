# mavlink_ardupilotmega

[![Build with Alire](https://github.com/reznikmm/mavlink_ardupilotmega/actions/workflows/alire.yml/badge.svg?branch=v1)](https://github.com/reznikmm/mavlink_ardupilotmega/actions/workflows/alire.yml)
[![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/mavlink_ardupilotmega.json)](https://alire.ada.dev/crates/mavlink_ardupilotmega.html)

> MAVLink -- Micro Air Vehicle Message Marshalling Library. ArduPilotMega

This repository provides an Ada library for MAVLink, a lightweight
messaging protocol for communicating with drones and other unmanned
vehicles. The library was generated using the MAVLink code generator,
customized for the Ada programming language. The package is compatible
with the Alire package manager, enabling easy integration into Ada
projects.

## Overview

The MAVLink Ada library allows for efficient and reliable message
marshalling and unmarshalling, making it suitable for embedded applications
and ground control software. With support for multiple message types,
the library offers a robust solution for developing applications that
require communication with MAVLink-compliant devices. Features

- Generated MAVLink 1.0 protocol support,
  [ArduPilotMega types](https://mavlink.io/en/messages/ardupilotmega.html)
  (See `v2` branch for 2.0 wire protocol.)
- Compatible with the Ada bareboard profiles for real-time applications
- Modular structure for easy integration with existing Ada projects
- Supports message serialization and deserialization

See also [mavlink_common](https://github.com/reznikmm/mavlink_common) repository.

## Installation

Add MAVLink as a dependency:

   ```shell
   alr with mavlink_ardupilotmega
   ```

##  Usage

TBD.

## Mavlink commit id

The code was generated from `e31f7de` commit of
the [mavlink](https://github.com/mavlink/mavlink) repo.
And `a365606` from `ReladormAndry/pymavlink`.
I used this steps:

```shell
python -m venv venv
source venv/bin/activate
git clone --depth=1 -b version2 https://github.com/ReladormAndry/pymavlink
git clone --depth=1 https://github.com/mavlink/mavlink
MDEF=$PWD/mavlink/message_definitions python -m pip install pymavlink

python3 -m pymavlink.tools.mavgen --lang=Ada --wire-protocol=1.0 \
  --output=generated mavlink/message_definitions/v1.0/ardupilotmega.xml

sed -i -e s/Preelaborate/Pure/ -e "s/ *$//" generated/*.ad[sb]
```

I also apply this patch:

```patch
--- src/mavlink-v1-ardupilotmega-types.ads_	2025-10-20 14:05:57.476282282 +0300
+++ src/mavlink-v1-ardupilotmega-types.ads	2025-10-20 14:13:20.475282272 +0300
@@ -6,6 +6,8 @@
 
 pragma Ada_2022;
 
+with MAVLink.V1.Common.Types;
+
 package MAVLink.V1.Ardupilotmega.Types is
 
    pragma Pure;
@@ -83,7 +85,7 @@
      (if Value in Heading_Type_Well_Known
       then Well_Known_Image (Value) else "Unknown:" & Value'Image);
 
-   type Mav_Cmd is new Interfaces.Unsigned_16;
+   subtype Mav_Cmd is MAVLink.V1.Common.Types.Mav_Cmd;
    --  Commands to be executed by the MAV. They can be executed on user
    --  request, or as part of a mission script. If the action is used in a
    --  mission, the parameter mapping to the waypoint/mission message is as
```

And delete files from the `mavlink_common` crate:
```shell
rm mavlink.ad[sb]
rm mavlink-x25crc.ad[sb]
rm mavlink-v1-standard*.ad[sb]
rm mavlink-v1-minimal*.ad[sb]
rm mavlink-v1-common*.ad[sb]
rm mavlink-raw*_floats.ad[sb]
```

## Contributing

Contributions are welcome!
Please [open an issue](https://github.com/reznikmm/mavlink_ardupilotmega/issues)
to discuss potential improvements or submit a pull request.

## License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for more details.
