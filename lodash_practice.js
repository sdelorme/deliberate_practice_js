const _ = {
  clamp(number, lower, upper) {
    let lowerClampedValue = Math.max(number, lower);
    let clampedValue = Math.min(lowerClampedValue, upper);
    return clampedValue;
  },
  inRange(number, start, end) {
    if (end === undefined) {
      end = start;
      start = 0;
    } if (start > end) {
      let temp = end;
      end = start;
      start = temp;
    }
    let isInRange = start <= number && number < end;
    return isInRange;
  },
  words(string) {
    let words = string.split(' ');
    return words;
  },
  pad(string, length) {
    if (string.length < length) {
      let startPaddingLength = Math.floor((length - string.length) / 2);
      let endPaddingLength = length - string.length - startPaddingLength;
      let paddedString = ' '.repeat(startPaddingLength) + string + ' '.repeat(endPaddingLength);
      return paddedString;
    } else {
      return string;
    }
  },
  has(object, key) {
    let hasValue = object[key];
    if (hasValue != undefined) {
      return true;
    } else {
      return false;
    }
  },
  invert(object) {
    let invertedObject = {};
    for (let key in object) {
      let originalValue = object[key];
      invertedObject = {originalValue: key};
      invertedObject[originalValue] = key;
    }
    return invertedObject;
  },
  findKey (object, predicate) {
    for (let key in object) {
      let value = object[key];
      let predicateReturnValue = predicate(value);
      if (predicateReturnValue) {
        return key;
      }
    }
    return undefined;
  },
  drop(array, n) {
    if (n == undefined) {
      n = 1;
    }
    let newArray = array.slice(n);
    return newArray; 
  },
  dropWhile(array, predicate) {
    const callback = (element, index) => {
      return !predicate(element, index, array);
    };
    let dropNumber = array.findIndex(callback);
    let droppedArray = this.drop(array, dropNumber);
    return droppedArray;
  },
  chunk(array, size) {
    if (size === undefined) {
      let size = 1;
    }
    let arrayChunks = [];
    for (let i = 0; i < array.length; i += size) {
      let arrayChunk = array.slice(i, i + size);
      arrayChunks.push(arrayChunk);
    }
    return arrayChunks;
  },
};









// Do not write or modify code below this line.
module.exports = _;