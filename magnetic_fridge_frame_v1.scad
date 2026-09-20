// DIY Polaroid Magnetic Fridge Frame - Solid Back (2 Magnets)
// Designed for 74.25 x 105 mm paper (A4 divided by 8)

// Paper dimensions (with 0.25mm sliding clearance)
paper_w = 74.5; 
paper_h = 105.5;

// Border Settings
border_w = 4.0;    // 4mm border all around to match the middle bar
corner_r = 2.0;    // Fillet radius for outer shell and cutouts

// Thickness Settings
front_t = 1.2;     // Thickness of the front face
slot_t = 0.8;      // Thickness of the empty slot for the paper
back_t = 2.4;      // Thickness of the back plate (holds the magnets)
total_t = front_t + slot_t + back_t;

// Caption & Mid-bar Heights
caption_h = 12.0;
mid_bar_h = 4.0;   // 4mm divider between photo and caption

// Window Dimensions
win_w = paper_w - 2 * (border_w - 3.0); // Derived to keep consistent internal framing
win_photo_h = paper_h - caption_h - mid_bar_h - 2 * (border_w - 3.0);

// Magnet Dimensions (Standard 6x2mm craft magnets + clearance)
mag_d = 6.2;       
mag_depth = 2.2;

$fn = 60;

// Helper module: 2.5D rounded rectangular prism
module rounded_box(w, h, depth, r) {
    hull() {
        translate([r, r, 0]) cylinder(r=r, h=depth);
        translate([w - r, r, 0]) cylinder(r=r, h=depth);
        translate([r, h - r, 0]) cylinder(r=r, h=depth);
        translate([w - r, h - r, 0]) cylinder(r=r, h=depth);
    }
}

module polaroid_frame() {
    outer_w = paper_w + 2 * border_w;
    outer_h = paper_h + 2 * border_w;

    difference() {
        // 1. Main Outer Shell with rounded corners
        rounded_box(outer_w, outer_h, total_t, corner_r);
        
        // 2. Paper Slot (Top-loading opening)
        translate([border_w, border_w, back_t])
            cube([paper_w, paper_h + border_w + 1, slot_t]);
            
        // 3. Rounded Front Caption Window (Bottom)
        translate([border_w + 1, border_w + 1, back_t + slot_t - 0.1])
            rounded_box(paper_w - 2, caption_h, front_t + 0.2, corner_r);
            
        // 4. Rounded Front Photo Window (Top)
        translate([border_w + 1, border_w + 1 + caption_h + mid_bar_h, back_t + slot_t - 0.1])
            rounded_box(paper_w - 2, win_photo_h, front_t + 0.2, corner_r);
            
        // 5. Two Magnet Sockets (Solid rear plate)
        translate([border_w + paper_w * 0.25, border_w + paper_h * 0.65, -0.1])
            cylinder(d=mag_d, h=mag_depth + 0.1);
        translate([border_w + paper_w * 0.75, border_w + paper_h * 0.65, -0.1])
            cylinder(d=mag_d, h=mag_depth + 0.1);
    }
}

polaroid_frame();