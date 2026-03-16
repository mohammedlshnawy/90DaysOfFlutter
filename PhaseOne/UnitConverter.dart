void main() {
var kg = converter(2);
print(kg); // 2 Kg is 4.4 lbs
}

// The Converter Function
converter(double kilo) { // Edited: int type will broke the code if i added smth like 2.5
    const KgToPound = 2.2;
    var conv = kilo * KgToPound;
    return "$kilo Kg is ${conv.toStringAsFixed(1)} lbs"; 
}


// 16/3/2026: Applied decimal formatting to round values to one decimal place (x.x) for better readability.