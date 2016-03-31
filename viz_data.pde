JSONObject json = new JSONObject();
int wordCount;
int lines;

float r;

// Angle and angular velocity, accleration
float theta;
float theta_vel;
float theta_acc;

String file="txtFileNameHere";
String title="TextToBeDisplayed";

void setup() {
  size(800, 800);
  background(10, 10, 10);
  colorMode(RGB);

  // Initialize all values
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;

  json = loadJSONObject("data/"+file+".json");
  parseData();
}

void draw() {
  noFill();

  // Translate the origin point to the center of the screen
  translate(width/2, height/2);
  wordCount = json.getInt("wordCount");
  lines = json.getInt("lines");
  JSONArray words = json.getJSONArray("words");

  for (int i = 0; i < lines; i++) {
    JSONObject w = words.getJSONObject(i%words.size());
    beginShape();
    stroke(w.getInt("position"), w.getInt("count")*10, w.getInt("line"));
    arc(0, 0, (50+(i*w.getInt("line")))/4, (50+(i*w.getInt("line")))/4, 0, (((i+1)*w.getInt("count"))*PI/180)*PI);
    endShape();
  }
  for (int i = 0; i < words.size(); i++) {
    JSONObject w = words.getJSONObject(i);

    r= w.getInt("line")*5;

    // Convert polar to cartesian
    float x = r * cos(theta);
    float y = r * sin(theta);

    // Draw the ellipse at the cartesian coordinate
    ellipseMode(CENTER);
    stroke(w.getInt("position"), w.getInt("count")*10, w.getInt("line"));
    ellipse(x, y, w.getInt("count"), w.getInt("count"));

    // Apply acceleration and velocity to angle (r remains static in this example)
    theta_vel += w.getInt("position");
    theta += theta_vel;
  }

  // Text position adjusted after translate
  textSize(20);
  text(title, -350, 350);

  smooth();
  noLoop();
}

void keyPressed() {
  saveFrame(file+".png");
}
