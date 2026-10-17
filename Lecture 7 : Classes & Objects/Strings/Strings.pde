String moduleTitle = "Creative Coding";
 
println(moduleTitle.toUpperCase());  // Convert text to upper-case
println(moduleTitle.substring(9));   // Extract part of string from 8th character onwards
     
if (moduleTitle.contains("Cod"))
{
    println("Fish related word found!");
}
     
if (moduleTitle.equals("Creative Coding"))
{
    println("Upper-case match found!");
}
     
if (moduleTitle.equalsIgnoreCase("CREATIVE CODING"))
{
    println("Case insensitive match found!");
}
 
if (moduleTitle.contains("eat") && moduleTitle.contains("Cod"))
{
    println("Fishy food words found!");
}
