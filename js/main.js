var a = 1;

function foo() {
  // sets a new variable a
  var a = 2;
  // looks in current scope so will log 2
  console.log(a);
}

function bar() {
  // changes the route variable a to 3
  a = 3;
  console.log(a);
}

foo();
bar();
// console logging a will now return 3 as value of route variable a was changed in bar()
console.log(a);