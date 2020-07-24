#include "textures.inc"
#include "colors.inc"
#include "glass.inc"

background { color White }

cylinder {
   <0, 0.5, 0>, <0, -0.5, 0>, 0.0179
   scale <1, 1.5, 1>
   
   pigment {
      color rgb <0.8, 0, 0>
   }
   rotate <89.9, 5.2, 0>
   translate <-2.23533, -4.51329, 1.36017>
}

union {
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0.121466, 0.610153, 3.51201>
      rotate y*(-19.5)
   }
   rotate x*90
   
   pigment {
      color rgbf <1, 1, 0, 0.6>
   }
}

cylinder {
   <0, 0.5, 0>, <0, -0.5, 0>, 0.0179
   scale <1, 3, 1>
   
   pigment {
      color rgb <0.8, 0, 0>
   }
   rotate <89.9, 5.2, 0>
   translate <-2.48541, -4.37039, 0.609925>
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
   <-3.71356, -4.66563, 2.55748>, rgb <1, 1, 1> shadowless
}

camera {
   perspective
   location <-4.4733, -6.6277, 1.5591>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <-2.4964, -4.3766, 0.5658>
   angle 90
}