# Re-Mind 🎞️✨
### 🖼️ Frame it, 🎴 Print it, ✨ Re-Mind yourself.

### A DIY Instant Photo Studio, customizable 3d printed magnetic frames & Precision Cutting Jig

> *"Keep your memories tangible, not behind expensive paywalls."*

Meet **Re-Mind**, your home darkroom companion! **Re-Mind** is an open-source, Privacy focused browser-based photo studio paired with an easily available home printer and some optional custom magnetic display frames and 3D-printable cutting tools. It transforms a standard home color printer and glossy photo paper into authentic, border-accurate polaroids.

The website is a local webpage living on your own machhine enabling 100% privacy. 

Upload your photos, frame them, apply filters, print 8 polaroids on A4 paper, and slice them perfectly with the given gide lines or use an optinonal custom 3D-printed jig!

## 📸 About The Project

Having physical memories shouldn't be locked behind pricey instant cameras, expensive proprietary film, or specialized portable printers. 

The **DIY Polaroid Maker** is a lightweight, entirely browser-based tool paired with a custom 3D-printable cutting stencil. It democratizes instant photography, enabling anyone with a standard home color printer, a sheet of photo paper, and a hobbyist 3D printer to create beautiful, authentic-looking polaroids. Save money and take control of your physical memories without sacrificing the vintage aesthetic.

## ✨ Features

### 🖥️ The Web Tool
* **Optimized Layout:** Turns any standard A4 piece of paper into 8 perfectly sized polaroids.
* **Custom Framing:** Interactive modal to precisely frame your photo using Zoom, Pan Horizontal, and Pan Vertical sliders.
* **Border Control:** Choose between thin, medium, or big white border sizes to match your aesthetic.
* **Vintage Filters:** Apply built-in color grading presets including Normal, Vintage, Faded, B&W, Warm, and Huji.
* **Analog Effects:** Add realistic analog texture with independent toggles for Film Grain, Light Leaks, and Chromatic Aberration.
* **Print-Ready Optimization:** Engineered with CSS print styles to perfectly fill an A4 landscape sheet with exact cutting lines (zero margins).

### 🛠️ The Customizable Magnetic Frames
* **Instant Slide-in Loading:** Features a smooth top-loading slot that lets you effortlessly slide your prints in and swap out memories anytime without disassembling the frame.
* **Dual-Window Silhouette:** Accurately mimics classic instant film with a dedicated photo viewing area and a bottom cutout to showcase your custom captions.
* **Minimalist Hardware:** Employs a clean, solid rear plate with embedded sockets sized optimized for minimum (i.e two) 6×2mm neodymium magnets to securely snap onto any fridge or magnetic board.
* **Fully Parametric OpenSCAD:** Easily adapt slot tolerances, paper thickness, frame borders, or magnet diameters directly within the `.scad` script to match whatever hardware you have on hand.

### 🛠️ The Hardware Jig
* **Drop-in Start:** The 3D-printed stencil features a 0.2mm recessed lip that perfectly hugs the A4 paper, clamping it flat against your cutting mat.
* **One-Pass Cutting:** Features continuous guide slots. Just drop it on the paper, make 1 horizontal cut and 3 vertical cuts with an X-Acto knife, and you instantly have 8 identical polaroids.
* **Parametric Design:** Includes the original `.scad` file so you can tweak tolerances if needed.

## 🚀 Getting Started

### Step 1: The Software
This tool is built with vanilla web technologies and runs entirely locally in your browser.
1. Open `index.html` directly in any modern web browser.
2. Upload your photos into the 8 available grid slots.
3. Click **Frame** on any photo to adjust the crop, apply color filters, and toggle analog effects.
4. Type an optional caption in the text box below each image.
5. Click the **🖨️ Print Sheet** button.
    * *Crucial Print Settings:* Set your printer dialog to **A4** paper size, **Landscape** orientation, Scale to **100% (Default)**, and Margins to **None** to ensure perfect, edge-to-edge sizing.

### Step 2: The Hardware (optional)
1. Locate the `perfect_cut_jig.stl` file in this repository.
2. Slice and print it on your 3D printer. *(Note: The model is ~305x210mm. You will need a 300x300mm bed and print it diagonally, or split the model in your slicer into two halves for a standard 220x220mm printer).*
3. Place your printed A4 photo sheet on a self-healing cutting mat.
4. Drop the printed jig completely over the paper (the recessed lip will lock it in place).
5. Run an X-Acto knife firmly through the vertical and horizontal slots.

### Step 3: The Customizable Magnetic Frames
1. Locate the `magnetic_fridge_frame.stl` file in this repository (or customize parameters in `magnetic_fridge_frame.scad`).
2. Slice and print the frame flat on its back without supports. *(Ensure your printer's bridging settings and part cooling are tuned for the internal slot)*.
3. Add Glue (feviquick) into the rear recessed sockets and Press two standard 6×2mm neodymium magnets into them.
4. Slide your cut polaroid print smoothly through the top-loading slot until it aligns with the front photo and caption windows.
5. Mount the finished keepsake onto your fridge or any magnetic surface to display your memories.

## 🛠️ Built with 🧡 by **K7** for the OpenSource Community
* **Web:** HTML5, CSS3 (Vanilla, CSS Filters), Vanilla JavaScript (FileReader API)
* **Hardware:** OpenSCAD
