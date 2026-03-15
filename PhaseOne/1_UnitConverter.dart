void main() {
var kg = converter(2);
print(kg);
}

// The Converter Function
converter(int kilo) {
    const KgToPound = 2.2;
    return "$kilo Kg is ${kilo * KgToPound} lbs";
}


