module cir(){
	difference(){
		rotate([90,0,0])
		cylinder(d=300/*change*/,h=20,center = true,$fn=300);
		rotate([90,0,0])
		cylinder(d=295/*5 less*/,h=20.1,center = true,$fn=300);
	}	
	}
module sqr(){
	cube([50,25,15],center = true);
	}

module curve(){
	intersection(){
	translate([0,0,150/*half of change*/])
	cir();
	sqr();
	}
}
module finalcurve(){
minkowski(){
	curve();
//	cylinder(r=1, h=0.01, center=true, $fn=4);
	sphere(d=1/*,$fn=4*/);
}
}


rotate([180,0,0])
finalcurve();