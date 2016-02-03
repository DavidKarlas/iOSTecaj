func fibonacci(n: Int) {
    var x = 0;
    var y = 1;
    for _ in 0..<n {
        let temp = x;
        x = y;
        y = temp + y;
    }
    print("Iterativno: \(x)");
}

func fibonacciRekurzivnoInternal(i: Int) -> Int {
    if i <= 2 {
        return 1;
    } else {
        return fibonacciRekurzivnoInternal(i - 1) + fibonacciRekurzivnoInternal(i - 2);
    }
}

func fibonacciRekurzivno(i:Int) {
    if (i == 0) {
        print("Rekurzivno: 0");
    } else {
        print("Rekurzivno: \(fibonacciRekurzivnoInternal(i))");
    }
}

for i in 0..<10 {
    fibonacci(i);
    fibonacciRekurzivno(i);
}