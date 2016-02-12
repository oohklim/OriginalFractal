int r = 2;
int xR = 2;
int yR = 2;
public void setup() {
	size(500, 500);
	colorMode(HSB, 100);
}
public void draw() {
	background(0);
	translate(250, 250);
	myFractal(250, 50);
}
public void myFractal(float a, float b) {
	float x, y, n, temp;
	n = a/b;
	temp = 0;
	stroke(15 * n, 70, 90);
	for(float i = 0; i < 2*Math.PI; i+=.001) {
		x = (a/(n-xR))*((n-1)*cos(i) - cos((n-1)*i));
		y = (a/(n-yR))*((n-1)*sin(i) + sin((n-1)*i));
		point(x, y);
	}
	if (a > 0) {
		temp += 1/(r*n);
		rotate(temp);
	 	myFractal(a - 1, b);
	}
}
public void keyPressed() {
	if(key == 'p') {
		r++;
	}
	if(key == 'a') {
		xR++;
	}
	if(key == 's') {
		yR++;
	}
	if(key == 'o') {
		r--;
	}
	if(key == 'm') {
		xR--;
	}
	if(key == 'n') {
		yR--;
	}
}