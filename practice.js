// Print out array

function printer(input) {
  input.forEach((number) => {
    console.log(number);
  });
}

// printer([1, 2, 3, 4, 5]);

// print from 1 to 100

function hundred() {
  for (let i = 0; i < 101; i++) {
    console.log(i);
  }
}

// hundred();

// Same as above, print out even

function hundredEven() {
  for (let i = 0; i < 101; i++) {
    if (i % 2 === 0) {
      console.log(i);
    } else {
      console.log("NOT EVEN");
    }
  }
}

// hundredEven();

// fizzbuzz

function fizzBuzz(input) {
  if (input % 15 === 0) {
    console.log("fizzbuzz");
  } else if (input % 5 === 0) {
    console.log("fizz");
  } else if (input % 3 === 0) {
    console.log("buzz");
  } else {
    console.log("no buzz");
  }
}

fizzBuzz(7);
