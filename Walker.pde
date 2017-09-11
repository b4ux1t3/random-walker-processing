class Walker{

    PVector pos;
    float radius;
    
    color drawColor = color(random(0, 255), random(0, 255), random(0, 255));

    Walker(){
        pos = new PVector(0,0);
        this.radius = 5;
    }

    Walker(float x, float y){
        pos = new PVector(x, y);
        this.radius = 5;
    }

    Walker(int x, int y){
        pos = new PVector(x, y);
        this.radius = 5;
    }

    Walker(float x, float y, float radius){
        pos = new PVector(x, y);
        this.radius = radius;
    }

    void walk(float xt, float yt, float zt, int height, int width){
        pos.x = pos.x + map(noise(xt), 0, 1, -5, 5);
        pos.y = pos.y + map(noise(xt, yt), 0, 1, -5, 5);
        float newRed = red(drawColor) + floor(map(noise(xt), 0, 1, -3, 5));
        constrain(newRed, 0, 255);
        float newGreen = green(drawColor) + floor(map(noise(xt, yt), 0, 1, -3, 5));
        constrain(newGreen, 0, 255);
        float newBlue = blue(drawColor) + floor(map(noise(xt, yt, zt), 0, 1, -3, 5));
        constrain(newRed, 0, 255);
        drawColor = color(newRed, newGreen, newBlue);
        fill(drawColor);
        camera(pos.x, pos.y, 1, pos.x, pos.y, 0, pos.x, pos.y, 0);
    }

    void display(){
        ellipse(pos.x, pos.y, this.radius * 2, this.radius * 2);
    }
}