function maxPairwiseProduct(array) {
    array = array.sort();
    let answer = array[array.length-2] * array[array.length-1];
    return answer;
};