// Full A4 Polaroid Solid Stencil Jig - Ultra Tight Fit

// Exact A4 Paper dimensions (zero clearance for a tight hug)
paper_w = 297.0;
paper_h = 210.0;

// Jig settings
wall = 5.0;         // Outer border thickness (slightly thicker for rigidity)
lip_h = 0.6;        // Ultra-shallow recess to clamp the paper flat against the cutting mat
plate_h = 2.0;      // Thickness of the solid plate
slot_w = 1.2;       // Width of the cutting slot

$fn = 64;

module solid_stencil_tight() {
    difference() {
        // Main solid block
        cube([paper_w + 2*wall, paper_h + 2*wall, lip_h + plate_h]);
        
        // Bottom recess for the A4 paper
        translate([wall, wall, -0.1])
            cube([paper_w, paper_h, lip_h + 0.1]);
            
        // 1 Horizontal slot (continuous)
        translate([wall, wall + paper_h/2 - slot_w/2, -0.1])
            cube([paper_w, slot_w, lip_h + plate_h + 0.2]);
            
        // 3 Vertical slots (continuous)
        for (i = [1:3]) {
            translate([wall + i*(paper_w/4) - slot_w/2, wall, -0.1])
                cube([slot_w, paper_h, lip_h + plate_h + 0.2]);
        }
    }
}

solid_stencil_tight();