# Image Compressor

A Windows batch-based image utility that integrates directly into the File Explorer context menu. Powered by FFmpeg and ImageMagick, it provides quick image compression, format conversion, metadata repair, and automatic backup creation with a single right-click.

## Features

* Right-click context menu integration
* Powered by FFmpeg and ImageMagick
* Automatic backup of original files
* Backup copies stored in the `Backup-Copies` folder
* Multiple compression presets

  * Compress to approximately 20 KB
  * Compress to approximately 50 KB
  * Basic Compression
  * Standard Compression
* Convert images to JPG format
* Repair image metadata and structure
* Fast batch-script-based workflow
* No graphical interface required

## Available Context Menu Options

After installation, an **Image Compressor** submenu appears when right-clicking supported image files.

### Compression Options

#### Compress 20KB

Attempts to reduce image size to approximately 20 KB while maintaining reasonable image quality.

#### Compress 50KB

Attempts to reduce image size to approximately 50 KB for a balance between quality and file size.

#### Basic Compression

Applies light compression for quick file size reduction while preserving most image quality.

#### Standard Compression

Applies stronger optimization for improved storage efficiency and sharing.

### Additional Tools

#### Fix-It

Repairs image metadata and file structure issues that may prevent images from opening correctly in software such as Adobe Photoshop. Particularly useful for images downloaded from messaging platforms like WhatsApp.

#### Convert to JPG

Converts supported image formats into JPG files.

## Backup System

Before modifying any image, the utility automatically creates a backup copy of the original file.

Backups are stored inside:

```text
Backup-Copies/
```

This ensures the original image can always be restored if needed.

## Requirements

No separate installation of FFmpeg or ImageMagick is required.

This package is configured to use FFmpeg and ImageMagick through the path, allowing all tools to work directly after installation.

## Installation

### Step 1: Copy Files

Copy the Image Compressor folder to the root of the **C:** drive.

Example:

```text
C:\Image Compressor
```

### Step 2: Register Context Menu

Run:

```text
Add Image Compressor.reg
```

Accept the Windows Registry prompt.

### Step 3: Start Using

Right-click any supported image file and select:

```text
Image Compressor
```

to access all available compression, conversion, and repair tools.

## Uninstallation

Run:

```text
Remove Image Compressor.reg
```

This removes all Image Compressor entries from the Windows context menu.

## Workflow

1. Right-click an image file.
2. Select **Image Compressor**.
3. Choose the desired action.
4. The original image is backed up automatically.
5. The selected operation is performed.
6. The processed image is saved as new while preserving a backup copy.

## Use Cases

* Compress images for websites
* Reduce file sizes before sharing
* Fix corrupted or incompatible image metadata
* Convert images to JPG format
* Optimize images for storage
* Preserve originals with automatic backups
* Quickly process images directly from File Explorer

## Safety

All operations create backup copies before modifying files. Original images remain available in the `Backup-Copies` folder for recovery if needed.

## Disclaimer

Compression results may vary depending on the source image, format, dimensions, and quality settings. Always review the output when using aggressive compression targets such as 20 KB.
