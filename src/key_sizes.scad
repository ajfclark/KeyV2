// key width functions

module u(u=1) {
  $key_length = u;
  children();
}

module u1() {
  u(1) children();
}

module u1_25() {
  u(1.25) children();
}

module u1_5() {
  u(1.5) children();
}

module u1_75(){
  u(1.75) children();
}

module u2() {
  u(2) children();
}

module u2_25() {
  u(2.25) children();
}

module u2_50() {
  u(2.5) children();
}

module u2_75() {
  u(2.75) children();
}

module u6_25() {
  u(6.25) children();
}

// key height functions

module uh(u=1) {
  $key_height = u;
  children();
}

module uh1() {
  uh(1) children();
}

module uh2() {
  uh(2) children();
}

module uh1_25() {
  uh(1.25) children();
}

module uh1_50() {
  uh(1.5) children();
}

module uh2_25() {
  uh(2.25) children();
}

module uh2_75() {
  uh(2.75) children();
}

module uh6_25() {
  uh(6.25) children();
}
