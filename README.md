# EuroPanelMaker
Eurorack panel generator for OpenSCAD by [@benjiaomodular](https://www.instagram.com/benjiaomodular/).

![Template preview](preview.png)

I talked about how and why I developed this library on my Youtube channel. Sponsored by [PCBWay](https://pcbway.com)!

[![Watch the video](https://img.youtube.com/vi/8PgxXPMlfh4/0.jpg)](https://youtu.be/8PgxXPMlfh4)

## How to use

### Installing

Copy the `EuroPanelMaker` folder into your project directory.

![Project dir](projectdir.png)

### Importing

Include the `panel.scad` file into your project.
```
include <EuroPanelMaker/panel.scad>
```

### Basic Usage

First, define the mandatory variables.
```
hp = 4;
title = "VCA";
```

Then, define any potentiometers, jacks, switches, and LEDs you need.
```
pots = [
    [x (in HP column), y (mm), label, rotation (degrees)]
];

jacks = [
    [x (in HP column), y (mm), label, rotation (degrees)]
];

switches = [
    [x (in HP column), y (mm), label above, label below, rotation (degrees)]
];

leds = [
    [x (in HP column), y (mm), diameter (mm)]
];
```
Add as many components as necessary in each array. *Note: the rotation parameter can be omitted for no rotation.*

Finally, generate the panel.
```
generatePanel();
```
The panel can also be flipped to be exported for printing.
```
panel_flipped = true;
```

### Advanced Usage
A number of variables can be altered. Here is a list with their default values:
```
margin = 0;
text_depth = 1.4;
title_font_size = 4.5;
title_font = "Liberation Sans:style=bold";
label_font = "Liberation Sans:style=bold";
label_font_size = 3;
pot_label_distance = 12;
pot_label_font_size = 3;
jack_label_distance = 8;
jack_label_font_size = 3;
toggle_label_distance = 12;
toggle_label_font_size = 3;
```

Additionally, extra labels can be added to the panel.
```
labels = [
    [x (in HP column), y (mm), label, rotation (degrees)]
];
```

## Examples
You can use `template.scad` as a starting point for your project.

I have included my own panels under `examples/benjiaomodular` for reference. Feel free to add a folder and submit a pull request if you'd like to include your own panels. 

### benjiaomodular
| Name   |      SCAD file      | Preview |
|----------|:-------------:|:------:|
| bong0 | [bong0.scad](examples/benjiaomodular/bong0.scad) | ![Bong0 Preview](examples/benjiaomodular/bong0.png) |
| ce2lfo | [ce2lfo.scad](examples/benjiaomodular/ce2lfo.scad) | ![CE2LFO Preview](examples/benjiaomodular/ce2lfo.png) |
| gate2trig | [gate2trig.scad](examples/benjiaomodular/gate2trig.scad) | ![Gate2Trig Preview](examples/benjiaomodular/gate2trig.png)|
| oras | [oras.scad](examples/benjiaomodular/oras.scad) | ![Oras Preview](examples/benjiaomodular/oras.png)|
| squares | [squares.scad](examples/benjiaomodular/squares.scad) | ![Squares Preview](examples/benjiaomodular/squares.png)|
| vca | [vca.scad](examples/benjiaomodular/vca.scad) | ![VCA Preview](examples/benjiaomodular/vca.png)|
| wavefolder | [wavefolder.scad](examples/benjiaomodular/wavefolder.scad) | ![Wavefolder Preview](examples/benjiaomodular/wavefolder.png)|
