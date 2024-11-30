
# MAZE ISO Customization

Welcome to the MAZE ISO customization project! This repository is part of the development process for MAZE, a Linux distribution based on Arch Linux. This ISO is tailored to provide users with a streamlined installation experience and preconfigured tools for a variety of purposes, including software development, graphical design, and creative workflows.

## Project Goals

- **Custom Linux Distribution**: Provide a highly customizable and performant Linux distribution.
- **Graphical Installer**: Deliver a user-friendly graphical installer for easy installation.
- **Preconfigured Environments**: Include tools for developers and professionals.
- **Lightweight Live Environment**: Ensure that the OS environment is minimalistic but functional.

## Repository Contents

This repository contains the following files and directories:

- **`grub`**: GRUB bootloader configuration for the live ISO.
- **`syslinux`**: Syslinux bootloader files for legacy boot support.
- **`bootstrap_packages.x86_64`**: List of essential packages for bootstrapping the ISO on x86_64 architecture.
- **`efiboot`**: EFI bootloader configuration for UEFI systems.
- **`profiledef.sh`**: Profile definition script, specifying ISO build options.
- **`packages.x86_64`**: List of additional packages included in the ISO.
- **`airootfs`**: Filesystem overlay for the live environment, containing preconfigured settings and files.
- **`pacman.conf`**: Custom Pacman configuration for the ISO build process.

## Usage

### Prerequisites

Ensure you have the `archiso` package installed:

```bash
sudo pacman -S archiso
```

### Build the ISO

1. Clone this repository:
   ```bash
   git clone https://github.com/Ex678/mazeiso.git
   cd mazeiso
   ```

2. Build the ISO:
   ```bash
   sudo mkarchiso -v -w /path/to/your/working-directory  -o /path/to/your/working-directory/out
   ```

3. The generated ISO file will be located in the `out` directory.

## Contributions

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [GPL v3 License](LICENSE).
