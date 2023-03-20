include <EuroPanelMaker/panel.scad>

hp = 4;
title = "VCA";
margin = 0; // Add extra width on each side for support

pots = [
    [2, 95, "CV AMT"]]; // x (in HP column), y (mm), label, rotation (degrees)

leds = [
    [3, 35, 3]]; // x (in HP column), y (mm), diameter (mm)

jacks = [
    [1, 18, "In"] ,
    [3, 18, "Out"],
    [1, 35, "CV"]]; // x (in HP column), y (mm), label, rotation (degrees)

panel_flipped = false;
generatePanel();
