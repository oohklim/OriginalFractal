public void setup() {
	size(500, 500);
	colorMode(HSB, 100);
	noFill();
}
public void draw() {
	background(0);
	translate(250, 250);
	myFractal(200, 5);
}
public void myFractal(float len, int n) {
	//n = # of cusps;
	// noFill();
	// stroke(0, 0, 100);
	// rect(x - size/2, y - size/2, size, size);
	// fill(0, 0, 100);
	// textAlign(CENTER);
	// textSize(size/10);
	// text("RECURSION", x, y + size/2.1);
	// if (size > 10) {
	//  	myFractal(x, y, size/1.3);
	// }
	float a, b;
	stroke(0, 0, 100);
	for(float i = 0; i < 2*Math.PI; i+=.001) {
		a = (len/n)*((n-1)*cos(i) - cos((n-1)*i));
		b = (len/n)*((n-1)*sin(i) + sin((n-1)*i));
		point(a, b);
	}
	if (n > 0) {
	 	myFractal(len/2, n - 1);
	}
}
