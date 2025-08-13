# Linux Gigabyte Sleep Fix

A collection of fixes for Linux systems using certain Gigabyte motherboards affected by a BIOS/firmware bug.

## Introduction

Some Gigabyte motherboards suffer from a bug where certain PCIe root ports (such as GPP0 or GPP8) remain enabled for wake events, causing the system to wake unexpectedly from sleep.

A detailed discussion and background information can be found here:
https://www.reddit.com/r/gigabyte/comments/p5ewjn/b550i_pro_ax_f13_bios_sleep_issue_on_linux

## The Fix

Two variants are available, depending on your chipset:

* Most Gigabyte boards → target device: GPP0
* A520 chipset boards → target device: GPP8

### How It Works

* Checks if /proc/acpi/wakeup lists the device (GPP0 or GPP8) as enabled.
* If enabled, it disables wakeup by writing the device name to /proc/acpi/wakeup.
* This prevents spurious wake events caused by the firmware bug.

> [!CAUTION]
>
> This script is to be used only on **Gigabyte** motherboards.
> 
> Using this script on other motherboard manufacturers may break the system, or worse, may even cause hardware damage.
>
> Proceed With Caution!

## Disclaimer

**Use at Your Own Risk**

This script is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose, and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages, or other liability, whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the software or the use or other dealings in the software.

**Before You Run the Script**

1. **Backup Your Data**: Always perform a full backup of your system and important files before running any script that modifies your system.
2. **Understand the Script**: Read through the script carefully to understand what it does. Ensure that it meets your specific requirements and that you trust it to interact with your system.
3. **Test Environment**: If possible, test the script in a virtual machine or a non-production environment first to avoid any unintended consequences.
4. **Dependencies**: Make sure that all dependencies and required software are installed on your system before running the script. This includes any necessary packages, libraries, or external tools.

**Liability**

By using this script, you acknowledge and agree that the authors shall not be held responsible for any damage or loss of data that may occur as a result of using the script. You are solely responsible for the consequences of running the script, including any issues that may arise on your system.

**Permissions**

You may modify and distribute the script as per the project's license. However, you must include this disclaimer in any copies of the script or substantial portions of it.
