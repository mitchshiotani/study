// Refactor to remove all arguments by partially applying the functions.

// filterQs :: [String] -> [String]
// const filterQs = xs => filter(x => x.match(/q/i), xs);
// // attempt 1
// const matchQs = x => x.match(/q/i);
// const filterQs = filter(matchQs);

// had to look at answer
const filterQs = filter(match(/q/i));
