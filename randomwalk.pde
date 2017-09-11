Walker w;
PVector dt;
PVector t;

int width = 800;
int height = 600;

void setup() {

    w = new Walker(float(width/2), float(height/2));

    size(800, 600, P3D);
    background(190);

    t = new PVector(0,0);
    dt = new PVector(0.01, 0.01, 0.01);

    noStroke();
}

void draw() {
    
    w.walk(t.x, t.y, t.z, width, height);

    w.display();

    t.add(dt);

}
