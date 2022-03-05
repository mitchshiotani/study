// Refactor `fastestCar` using `compose()` and other functions in pointfree-style.

// fastestCar :: [Car] -> String
// const fastestCar = (cars) => {
//   const sorted = sortBy(car => car.horsepower, cars);
//   const fastest = last(sorted);
//   return concat(fastest.name, ' is the fastest');
// };

// knew the problem was somewhere with the concat part (arguments have to shift sequentially), but I didn't know I had to use append.
const fastestCar = compose(append(' is the fastest'), prop('name'), last, sortBy(prop('horsepower')));
