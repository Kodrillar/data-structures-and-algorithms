

/**Returns true if input(array) has a duplicate  otherwise, false;
 * 
 * const array1 = [2, 3, 6, 2,]  true
 * const array2 = [1, 4, 5, 2]   false

*/

const inputArray = [2, 3, 6, 2];
const falseInputArray = [0, 1, 2, 9];

/**
 * Naive solution : 
 * this is efficient in terms of space complexity
 * but not too good in terms of time complexity(runtime) 
 * as it results to a quadratic time.
 * */

function checkDuplicate(array) {
    /**
     *  Where;
     *  i = array index in first loop;
     *  j = array index in second loop; 
     */

    for(let i = 0 ; i<array.length; i++){
        for(let j = 0; j<array.length; j++){
            if(i!=j && array[i] === array[j]){
                return true;
            }

        }
    }

    return false;
    
}

const containsDuplicate = checkDuplicate(inputArray);
console.log(containsDuplicate);

/**
 * Improve time complexity:
 */


