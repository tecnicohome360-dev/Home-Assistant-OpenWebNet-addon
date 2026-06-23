# Home Assistant - OpenWebNet add-on

Turn a BTicino/Legrand **L4686SDK** USB adapter into an **OpenWebNet TCP gateway**.

The add-on uses `socat` to bridge the serial USB device to TCP port **20000**, so
any OpenWebNet client (including Home Assistant integrations) can reach the bus
over the network.

## Requirements

* A working Home Assistant installation with the **Supervisor** (HA OS or Supervised).
* One L4686SDK USB adapter connected to the host.

## Install (local add-on)

1. Copy this whole folder into the add-ons directory of your Home Assistant host:
   * `/addons/openwebnet/` (older installs), or
   * `/config/addons/openwebnet/` (current Home Assistant OS).
   Use the **Samba** or **SSH & Web Terminal** add-on to copy the files.
2. In Home Assistant go to **Settings → Add-ons → Add-on Store**.
3. Click the **⋮** menu (top right) → **Check for updates** / **Reload**.
4. The **Open Web Net USB Gateway** add-on appears under **Local add-ons**. Open it
   and click **Install**.

## Configuration

| Option    | Description                         | Default         |
|-----------|-------------------------------------|-----------------|
| `UsbPath` | Path of the serial USB device      | `/dev/ttyUSB0`  |

Check the actual device path under **Settings → System → Hardware** (⋮ → *All
hardware*) and adjust `UsbPath` if it is not `/dev/ttyUSB0`.

After saving the configuration, **Start** the add-on. The gateway will then be
reachable at `tcp://<home-assistant-ip>:20000`.

---

Keywords: L4686SDK, OpenWebNet, BTicino, Legrand, Home Assistant, Raspberry Pi, Docker
