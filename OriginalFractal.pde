public void setup() {
	size(500, 500);
	colorMode(HSB, 100);
	background(0);
	noFill();
	translate(250, 250);
	myFractal(250, 50);
}
public void myFractal(float a, float b) {
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
	 	myFractal(a - 1, b);
	}
}
