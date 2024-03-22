// House parameters
house_height = 8;
house_width = 12;
house_depth = 10;


// Function to create a house with windows and a balcony
module house_with_windows_and_balcony() {
    
    
   difference(){ 
        translate([9,7,3])
        cube([3,3,0.5]);
       translate([9,7,3])
        cube([2.5,2.5,0.5]);
       
       }
    difference() {
        cube([house_width, house_depth, house_height]);

        translate([2,0,3])
                cube([3,5,2]);
        translate([7,0,3])
                cube([3,2,2]);
        translate([9,7,1])
                cube([3,3,6]);
        //cube([3,3,3]);
        
        //cube([15,15,3]);
    }
    
    ///2ndfloor
    
       difference(){ 
        translate([9,7,3+8])
        cube([3,3,0.5]);
       translate([9,7,3+8])
        cube([2.5,2.5,0.5]);
       
       }
    difference() {
       
       translate([0,0,8])
        cube([house_width, house_depth, house_height]);

        translate([2,0,3+8])
                cube([3,5,2]);
        translate([7,0,3+8])
                cube([3,5,2]);
        translate([9,7,1+8])
                cube([3,3,6]);
        //cube([3,3,3]);
        
        //cube([15,15,3]);
    }
    
        ///3rdfloor
    
       difference(){ 
        translate([9,7,3+16])
        cube([3,3,0.5]);
       translate([9,7,3+16])
        cube([2.5,2.5,0.5]);
       
       }
    difference() {
         translate([0,0,16])
        cube([house_width, house_depth, house_height]);

        translate([2,0,3+16])
                cube([3,5,2]);
        translate([7,0,3+16])
                cube([3,5,2]);
        translate([9,7,1+16])
                cube([3,3,6]);
        //cube([3,3,3]);
        
        //cube([15,15,3]);
    }
    

    
}


//module water_storage(){
    
//    difference(){
//        translate([1.5,-3,-7])
//        cube([9,5,5]);
//        translate([2.5,-2,-5])
//        cube([7,3,3]);
//        }
//}





// Prism parameters
// Prism parameters
base_side_length = 3;
prism_height_we= 10;
prism_height_ns= 12;

// Create a prism with one right angle and rotate it by 90 degrees around the x-axis


mirror([1,0])
    {
translate([-12,10,28])
rotate([90, 0, 0])
    linear_extrude(height = prism_height_we)
        polygon([[0, 0], [base_side_length, 0], [0, base_side_length]]);}

translate([0,10,28])
rotate([90, 0, 0])
    linear_extrude(height = prism_height_we)
        polygon([[0, 0], [base_side_length, 0], [0, base_side_length]]);
        
        
 translate([0,0,28])       
rotate([90, 0, 90])
    linear_extrude(height = prism_height_ns)
        polygon([[0, 0], [base_side_length, 0], [0, base_side_length]]);
        
        
      
  translate([12,10,28])       
rotate([90, 0, -90])
    linear_extrude(height = prism_height_ns)
        polygon([[0, 0], [base_side_length, 0], [0, base_side_length]]);

translate([0,0,24])
cube([2,2,4]);
translate([0,8,24])
cube([2,2,4]);
translate([10,0,24])
cube([2,2,4]);
translate([10,8,24])
cube([2,2,4]);

difference(){
translate([0,0,24])
cube([12,1,1]);
translate([6,2,24.5])
rotate([90,0,0])
cylinder(3,.5,.5);
}
translate([0,9,24])
cube([12,1,1]);
translate([11,0,24])
cube([1,10,1]);
translate([0,0,24])
cube([1,10,1]);


//the pipe
difference(){
translate([6,-.5,-1])
cylinder(25,0.7,0.7);
translate([6,-.5,-1])
cylinder(25,.5,.5);
    

}

//the plant holder
difference(){
translate([0,-1,0])
cube([12,1,1]);
translate([0,-.6,.5])
cube([12,.6,1]);
}

difference(){
translate([0,-1,8])
cube([12,1,1]);
translate([0,-.6,8.5])
cube([12,.6,1]);
}

difference(){
translate([0,-1,16])
cube([12,1,1]);
translate([0,-.6,16.5])
cube([12,.6,1]);
}


difference(){
translate([0,-1,24])
cube([12,1,1]);
translate([0,-.6,24.5])
cube([12,.6,1]);
 sphere(1);   

}

//base foundation

translate([0,0,-7])
cube([1,1,7]);
translate([0,9,-7])
cube([1,1,7]);
translate([11,0,-7])
cube([1,1,7]);
translate([11,9,-7])
cube([1,1,7]);


// Generate the house with windows and a balcony
house_with_windows_and_balcony();
// water_storage();

