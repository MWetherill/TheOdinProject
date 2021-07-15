// empty student constructor created

function Student(name, grade) {
}

// add sayName function to the student prototype

Student.prototype.sayName = function() {
  console.log(this.name);
}

Student.prototype.sayGrade = function() {
  console.log(this.grade);
}

// new EighthGrader constructor

function EighthGrader(name) {
  this.name = name;
  this.grade = 8;
}

function NinthGrader(name) {
  this.name = name;
  this.grade = 9;
}

// set the EighthGrader constructor to inherit the Student prototype

EighthGrader.prototype = Object.create(Student.prototype);
NinthGrader.prototype = Object.create(Student.prototype);

// create new EightGrader instance

const pete = new EighthGrader('Pete');
const carl = new NinthGrader('Carl');
carl.sayName();
carl.sayGrade();
pete.sayName();
pete.sayGrade();