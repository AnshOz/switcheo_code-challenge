var sum_to_n_a = function(n) {
    // your code here
    // using for loop
    sum =0
    for (var i = 0; i <= n; i++) {
        sum += i;
        return sum;
        console.log(sum);
    }
};

var sum_to_n_b = function(n) {
    // your code here
    // using arithmatic formula
    sum = (n*(n+1))/2;
    return sum;
    console.log(sum);
};

var sum_to_n_c = function(n) {
    // your code here
    //using recursion
    if (n == 0){
        return 0;
    }
    return n + sum_to_n_c(n-1); 
    console.log(sum);
    
};