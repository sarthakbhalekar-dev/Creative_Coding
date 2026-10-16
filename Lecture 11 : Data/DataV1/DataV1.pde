String [] lines = loadStrings("someData.csv");
println(lines.length);
println(lines[2]);

String [] tokens = split(lines[2],",");

println(tokens[0],tokens[1],tokens[2],tokens[3]);
printArray(tokens);

float [] data = float(tokens);
println(data[0],data[1],data[0]+data[1]);
