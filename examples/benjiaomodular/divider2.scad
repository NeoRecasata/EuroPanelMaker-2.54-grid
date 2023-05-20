include <../../EuroPanelMaker/panel.scad>

hp = 9;
title = "DIV";
text_depth = 1.2;
title_font_size = 3.2;
margin=3;

leds = [
    [4, 15, 3],
    [8, 105, 3],
    [8, 85, 3],
    [8, 75, 3],
    [8, 65, 3],
    [8, 55, 3],
    [8, 45, 3],
    [8, 35, 3],
    [8, 25, 3],
    [8, 15, 3],
    [2, 85, 7]
    ];


jacks = [
    [2, 105, "RST", 180],
    [2, 15, "", -90],
    [6, 105, "CLK IN", -90],
    [6, 85, "DIVS", -90],
    [6, 75, "", -90],
    [6, 65, "", -90],
    [6, 55, "", -90],
    [6, 45, "", -90],
    [6, 35, "", -90],
    [6, 25, "", -90],
    [6, 15, "", -90]];

pots = [
    [2, 60, "INT CLK"],
];
panel_flipped = false;

generatePanel();