// The idea of this object is to be used in a mashine to remove tires from 
// 
// important is the 40 mm or r=20 hole. To realy fit that in the construction it has to be a bit larger.
module wheel_conus()
{   
  difference(){   
    cylinder(40,r1=20,r2=35,$fn=500);
          translate([0,0,-0.1]){cylinder(40.2,r=14.5,$fn=500); }
          translate([0,0,30]){cylinder(11,r=20.6,$fn=500); }
        }    
}



// display the constructed objects
wheel_conus();
