public void setup() {
	size(500, 500);
	colorMode(HSB, 100);
	background(0);
	noFill();
	translate(250, 250);
	myFractal(250, 50);
}
public void draw() {
	// background(0);
	// translate(250, 250);
	// myFractal(200, 5);
}
public void myFractal(float a, float b) {
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
	float x, y, n, temp;
	n = a/b;
	temp = 0;
	stroke(15 * n, 70, 90);
	for(float i = 0; i < 2*Math.PI; i+=.001) {
		x = (a/(n-2))*((n-1)*cos(i) - cos((n-1)*i));
		y = (a/(n-2))*((n-1)*sin(i) + sin((n-1)*i));
		point(x, y);
	}
	if (n > 0) {
		temp += 1/(2*n);
		rotate(temp);
	 	myFractal(b*n - 1, b);
	}
}
