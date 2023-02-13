// The idea of this object to hold LED Head lamp within the classical H4 Light holder. The light locks with a light turn.
// It feels a bit tight on the other hand one does not want it to wigle around.
module H4_LED_holder()
{   
    difference(){
    // first combine objects     
    union(){
    // the inner small tube    
    cylinder(14,r=12 ,$fn=500);
    translate([0,0,7.5]){
      // the large disk   
        cylinder(1.5,r=21.5,$fn=500);
      // the large inner cylinder   
        cylinder(6.5,r=19,$fn=500);  
       }
   // the cube that locks on top    
    translate([20,-4,7.5]){
        cube([5.5,8,1.5]);
           }
   // the two cube that lock on the bottom      
    rotate(a = 135, v = [0, 0, 1]) {
        translate([20,-3,7.5]){
            cube([5.5,6,1.5]);
           } }  
    rotate(a = 225, v = [0, 0, 1]) {
        translate([20,-3,7.5]){
            cube([5.5,6,1.5]);
           } } 
        }  
   // Now substract the inner parts
   // the inner hole     
    translate([0,0,-0.1]){
        cylinder(14.2,r=9.8,$fn=500);
       }
  // flat side of the inner cylinder   
    translate([-20,-15,9]){
        cube([5,30,6]);
     }
  // flat side of the large disk   
    translate([-22,-15,7.4]){
        cube([1,30,1.7]);
     } 
  // the four inner channels through the inner tube
  // next to the large cube are two wider channels
  // towards the bottom are two narrow channels   
    rotate(a = 45, v = [0, 0, 1]) {
        translate([8,-2.2,-0.1]){
            cube([2.5,4.4,14.2]);
        } }  
    rotate(a = 135, v = [0, 0, 1]) {
        translate([8,-1.95,-0.1]){
            cube([2.5,3.9,14.2]);
        } }        
    rotate(a = 225, v = [0, 0, 1]) {
        translate([8,-1.95,-0.1]){
            cube([2.5,3.9,14.2]);
        }  }
    rotate(a = 315, v = [0, 0, 1]) {
        translate([8,-2.2,-0.1]){
            cube([2.5,4.4,14.2]);
        } }
   // for each channel a nock to lock the corner is needed
   // there is a small barrier between the channel and the lock position
   // than it can be locked in place        
    rotate(a = 90, v = [0, 0, 1]) {
        translate([8,-2.2,12.5]){
            cube([2.5,4.4,1.8]);
           } }
    rotate(a = 67.5, v = [0, 0, 1]) {
        translate([8,-2,13]){
            cube([2.5,4,1.8]);
           } }  
    rotate(a = 180, v = [0, 0, 1]) {
        translate([8,-2.2,12.5]){
            cube([2.5,4.4,1.8]);
           } }
    rotate(a = 157.5, v = [0, 0, 1]) {
        translate([8,-2,13]){
            cube([2.5,4,1.8]);
           } }
    rotate(a = 270, v = [0, 0, 1]) {
        translate([8,-2.2,12.5]){
            cube([2.5,4.4,1.8]);
           } }
    rotate(a = 247.5, v = [0, 0, 1]) {
        translate([8,-2,13]){
            cube([2.5,4,1.8]);
           } } 
    rotate(a = 0, v = [0, 0, 1]) {
        translate([8,-2.2,12.5]){
            cube([2.5,4.4,1.8]);
           } }
    rotate(a = 337.5, v = [0, 0, 1]) {
        translate([8,-2,13]){
            cube([2.5,4,1.8]);
           } }           
}
}
// display the constructed object
H4_LED_holder();