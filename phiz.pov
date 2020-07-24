#include "textures.inc"
#include "colors.inc"
#include "glass.inc"

background { color White }

cylinder {
   <0, 0.5, 0>, <0, -0.5, 0>, 0.0179
   scale <1, 3, 1>
   
   pigment {
      color rgb <0.8, 0, 0>
   }
   rotate x*85.7
   translate <-2.16912, -3.40275, -0.107511>
}

cylinder {
   <0, 0.5, 0>, <0, -0.5, 0>, 0.0179
   scale <1, 3, 1>
   
   pigment {
      color rgb <0.8, 0, 0>
   }
   rotate <87.2, 1.8, -0.4>
   translate <-2.86414, -4.47908, -0.269961>
}

cylinder {
   <0, 0.5, 0>, <0, -0.5, 0>, 0.0179
   scale <1, 3, 1>
   
   pigment {
      color rgb <0.8, 0, 0>
   }
   rotate <92.5, -1.3, 0>
   translate <-1.47731, -2.35702, 0.000789889>
}

union {
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0.775649, -0.0126883, 3.43404>
      rotate y*(-50.6)
   }
   rotate x*90
   
   pigment {
      color rgbf <1, 1, 0, 0.6>
   }
}

union {
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*320
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*340
   }
   rotate x*90
   
   texture { PinkAlabaster }
}

global_settings {
   adc_bailout 0.00392157
   assumed_gamma 1.5
   noise_generator 2
}

light_source {
   <3.00106, -4.66563, -2.88461>, rgb <1, 1, 1> shadowless
}

camera {
   perspective
   location <-1.37618, -4.6508, -3.93354>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <-1.99116, -3.27699, 0.367869>
   angle 90
}